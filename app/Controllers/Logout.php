<?php namespace App\Controllers;

class Logout extends BaseController
{
	protected $helpers = ['form', 'url', 'security', 'captcha','cookie'];

	public function index()
	{
		session()->remove('userID');
		session()->remove('userToken');
		session()->remove('loggedIn');
		return redirect()->to(base_url(''));
	}

	public function logout()
	{  
		session()->remove('userID');
		session()->remove('userToken');
		session()->remove('loggedIn');
		return redirect()->to(base_url(''));
	}

	//--------------------------------------------------------------------

}
// Copyright NizzaCMS. All Right Reserved. Developed by Muhammad Abror.