<?php namespace App\Controllers;

use App\Models\NizzaModels;

class Recover extends BaseController
{
	public function index()
	{
        if(getLoginStatus() === TRUE) {
            return redirect()->to(base_url('account/dashboard'));
        } else {
            if (empty(session('weblang'))) {
                setLanguage($this->request->getIPAddress());
                return redirect()->to(base_url('recover'));
            } else {
                $data['config'] = getConfig(1);
                return view('register/'.getRecoverTheme(1).'/form', $data);
            }
        }
	}

	//--------------------------------------------------------------------

}
// Developed by Muhammad Abror. For more info, please visit http://justcode.xyz