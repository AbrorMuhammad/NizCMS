<?php namespace App\Controllers\account;

use App\Models\NizzaModel;

class User extends BaseController
{
	public function index()
	{
        if(getLoginStatus() === TRUE) {
            return redirect()->to(base_url('account/dashboard'));
        } else {
            if (empty(session('weblang'))) {
                setLanguage($this->request->getIPAddress());
                return redirect()->to(base_url('login'));
            } else {
                $data['config'] = getConfig(1);
                return view('login/'.getLoginTheme(1).'/form', $data);
            }
        }
	}

    public function create()
	{
		if ($this->request->isAJAX()) {
			$csrfHash = csrf_hash();
			$csrfName = csrf_token();
			$inputtedData = [
				'fullname'   => $this->request->getVar('fullname'),
				'userlogin'  => $this->request->getVar('userlogin'),
				'password'   => $this->request->getVar('password'),
				'repassword' => $this->request->getVar('repassword'),
				'captcha'    => $this->request->getVar('captcha')
            ];
            is_numeric($this->request->getVar('userlogin')) ? $val = 'doValPhoneReg' : $val = 'doValEmailReg';
			if ($this->form_validation->run($inputtedData, $val) == FALSE) {
				$data = [ 
					'success'    => false,  
					'token'      => $csrfHash,
					'csrfName'   => $csrfHash,
					'fullname'	 => $this->form_validation->getError('fullname'),
					'userlogin'  => $this->form_validation->getError('userlogin'),
					'password'   => $this->form_validation->getError('password'),
					'repassword' => $this->form_validation->getError('repassword'),
					'captcha'    => $this->form_validation->getError('captcha')
				];
			} else {
				$id        = md5(md5(md5(md5(md5(((microtime(false))))))));
				$code      = substr(md5(md5(md5(md5(microtime(false))))), -8);
                $token     = password_hash($code, PASSWORD_BCRYPT);
                if (is_numeric($this->request->getVar('userlogin'))) {
                    $savedData = [
                        'userID'          => $id,
                        'userFullname'    => $this->request->getVar('fullname'),
                        'userPassword'    => password_hash($this->request->getVar('password'), PASSWORD_BCRYPT),
                        'userMobilePhone' => $this->request->getVar('userlogin'),
                        'userLevel'       => '3',
                        'userActive'      => 'Y',
                        'userBanned'      => 'N',
                        'userCode'        => $code,
                        'userToken'       => $token
                    ] ;
                } else {
                    $savedData = [
                        'userID'       => $id,
                        'userFullname' => $this->request->getVar('fullname'),
                        'userPassword' => password_hash($this->request->getVar('password'), PASSWORD_BCRYPT),
                        'userEmail'    => $this->request->getVar('userlogin'),
                        'userLevel'    => '3',
                        'userActive'   => 'Y',
                        'userBanned'   => 'N',
                        'userCode'     => $code,
                        'userToken'    => $token
                    ] ;
                }
				$melati = new NizzaModel();
				$melati->create('user', $savedData);
				$data = [ 
					'success'    => true,  
					'token'      => $csrfHash,
					'csrfName'   => $csrfHash,
					'msg'		 => 'Your account has been successfully created',
				];
			}
			return $this->response->setJSON($data);
		} else {
			return redirect()->to(base_url('logout'));
		}
    }
    
    public function read()
    {
        if ($this->request->isAJAX()) {
            $requestAction = $this->request->uri->getSegment(4);
            if ($requestAction == 'auth') {
                $melati       = new NizzaModel();
                $csrfHash     = csrf_hash();
                $csrfName     = csrf_token();
                $inputtedData = [
                    'userlogin' => $this->request->getVar('userlogin'),
                    'password'  => $this->request->getVar('password')
                ];
                is_numeric($this->request->getVar('userlogin')) ? $val = 'doValPhoneLog' : $val = 'doValEmailLog';
                if ($this->form_validation->run($inputtedData, $val) === FALSE) {
                    $data = [
                        'success'       => false,  
                        'token'         => $csrfHash,
                        'csrfName'      => $csrfHash,
                        'userlogin'     => $this->form_validation->getError('userlogin'),
                        'password'      => $this->form_validation->getError('password'),
                        'wrongpassword' => '',
                    ];
                } else {
                    if ($this->request->getVar('rememberMe') == 1 AND $this->request->getVar('password') == '********' AND $this->request->getVar('userlogin') === $this->request->getCookie('userlogin')) {
                        $userlogin = $this->request->getCookie('userlogin');
                        $password  = 'getCookie';
                    } else {
                        $userlogin = $this->request->getVar('userlogin');
                        $password  = $this->request->getVar('password');
                    }
                    $auth = $melati->doAuth($userlogin, $password);
                    if ($auth == TRUE) {
                        if (is_numeric($this->request->getVar('userlogin'))) {
                            $where = ['userMobilePhone' => $userlogin];
                        } else {
                            $where = ['userEmail' => $userlogin];
                        }
                        $user 		 = $melati->getUser($where);
                        $token 		 = password_hash(microtime(false), PASSWORD_BCRYPT);
                        $updateToken = $melati->updateTokenLogin($token, $user->getRow('userID'));
                        $userSession = [ 
                            'userID'    => $user->getRow('userID'),
                            'loggedIn'  => TRUE,
                            'userToken' => $token
                        ];
                        session()->set($userSession);
                        $tokenCode = [
                            'name'   => 'tokenKey',
                            'value'  => $token,
                            'expire' => getConfig(1)->getRow('configTokenExpire'),
                        ];
                        set_cookie($tokenCode);
                        if($this->request->getVar('rememberMe') == 1 AND $this->request->getVar('password') != '********')
                        {
                            $userlogin = [
                            'name'   => 'userlogin',
                            'value'  => $this->request->getVar('userlogin'),
                            'expire' => 86400,
                            ];
                            set_cookie($userlogin);
                            $password = [
                                'name'   => 'password',
                                'value'  => md5(md5(md5(md5($this->request->getVar('password'))))),
                                'expire' => 86400,
                            ];
                            set_cookie($password);
                        } elseif ($this->request->getVar('rememberMe') =='') {
                            $userlogin = [
                                'name'   => 'userlogin',
                                'value'  => '',
                                'expire' => 86400,
                                ];
                            set_cookie($userlogin);
                            $password = [
                                'name'   => 'password',
                                'value'  => '',
                                'expire' => 86400,
                            ];
                            set_cookie($password);
                        }
                        $data = [
                            'success'  => true,  
                            'token'    => $csrfHash,
                            'csrfName' => $csrfHash,
                            'msg'      => 'Your account is recognized.'
                        ];
                    } else {
                        $data = [
                            'success'       => false,
                            'userlogin'     => '',
                            'password'      => '',
                            'wrongpassword' => 'Your password is wrong.',
                            'token'         => $csrfHash,
                            'csrfName'      => $csrfHash
                        ];
                    }
                }
            }
			return $this->response->setJSON($data);
        } else {
            return redirect()->to(base_url('logout'));
        }
    }

    //--------------------------------------------------------------------
    // Developed by Muhammad Abror. All Right Reserved.

}
