<?php namespace App\Controllers;

use App\Models\NizzaModel;

class Login extends BaseController
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
                $data = [
                    'userlogin' => $this->request->getCookie('userlogin'),
                    'password'  => $this->request->getCookie('password'),
                    'config'    => getConfig(1)
                ];
                return view('login/'.getLoginTheme(1).'/form', $data);
            }
        }
	}

	//--------------------------------------------------------------------

}
// Developed by Muhammad Abror. For more info, please visit http://justcode.xyz