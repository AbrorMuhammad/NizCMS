<?php

if (! function_exists('getConfig'))
{
    function getConfig($id)
    {
        $melati    = new App\Models\NizzaModel();
        $getConfig = $melati->getConfig($id);
        return $getConfig;
    }
}

if (! function_exists('getLoginStatus'))
{
    function getLoginStatus()
    {
        if (session('loggedIn') === TRUE && !empty(session('userID')))
        {
            $loggedIn = TRUE;
        } else {
            $loggedIn = FALSE;
        }
        return $loggedIn;
    }
}

if (! function_exists('getLoginTheme'))
{
    function getLoginTheme($id)
    {
        $melati = new App\Models\NizzaModel();
        $getLoginTheme = $melati->getLoginTheme($id);
        return $getLoginTheme;
    }
}

if (! function_exists('getRegisterTheme'))
{
    function getRegisterTheme($id)
    {
        $melati = new App\Models\NizzaModel();
        $getRegisterTheme = $melati->getRegisterTheme($id);
        return $getRegisterTheme;
    }
}

if (! function_exists('getRecoverTheme'))
{
    function getRecoverTheme($id)
    {
        $melati = new App\Models\NizzaModel();
        $getRecoverTheme = $melati->getRecoverTheme($id);
        return $getRecoverTheme;
    }
}

if (! function_exists('getUserBrowser'))
{
    function getUserBrowser() 
    {
        $request = \Config\Services::request();
        $agent = $request->getUserAgent();
        if ($agent->isBrowser()) {
            $currentAgent = $agent->getBrowser().' '.$agent->getVersion();
        } elseif ($agent->isRobot()) {
            $currentAgent = $agent->isRobot();
        } elseif ($agent->isMobile()) {
            $currentAgent = $agent->getMobile();
        } else {
            $currentAgent = 'Unidentified User Agent';
        }
        $getUserBrowser = $currentAgent;
        return $getUserBrowser;
    }
}

if (! function_exists('getUserPlatform'))
{
    function getUserPlatform() 
    {
        $request = \Config\Services::request();
        $agent = $request->getUserAgent();
        $getUserPlatform = $agent->getPlatform();
        return $getUserPlatform;
    }
}

if (! function_exists('getUserCountry'))
{
    function getUserCountry() 
    {
        $request = \Config\Services::request();
        // $userIPAddress = $request->getIPAddress();
        $userIPAddress = '36.79.108.104';
        $geo = unserialize(file_get_contents("http://www.geoplugin.net/php.gp?ip=$userIPAddress"));
        $getUserCountry = $geo['geoplugin_countryName'];
        return $getUserCountry;
    }
}

if (! function_exists('getUserRegion'))
{
    function getUserRegion($ip) 
    {
        $request = \Config\Services::request();
        $userIPAddress = '36.79.108.104';
        $geo = unserialize(file_get_contents("http://www.geoplugin.net/php.gp?ip=$userIPAddress"));
        $getUserRegion = $geo['geoplugin_regionName'];
        return $getUserRegion;
    }
}

if (! function_exists('getUserCity'))
{
    function getUserCity() 
    {
        $request = \Config\Services::request();
        $userIPAddress = '36.79.108.104';
        $geo = unserialize(file_get_contents("http://www.geoplugin.net/php.gp?ip=$userIPAddress"));
        $getUserCity = $geo['geoplugin_city'];
        return $getUserCity;
    }
}

if (! function_exists('setLanguage'))
{
    function setLanguage($ip)
    {
        $userIPAddress = '23.106.249.34'; // or $ip
        $geo = unserialize(file_get_contents("http://www.geoplugin.net/php.gp?ip=$userIPAddress"));
        $getUserCountry = $geo['geoplugin_countryCode'];
        $melati = new App\Models\NizzaModel();
        $getLang = $melati->getLang($getUserCountry);
        $data['weblang'] = $getLang;
        session()->remove($data);
        session()->set($data);
        $lang = session('weblang');
        return $lang;
    }
}

if (! function_exists('translate'))
{
    function translate($words)
    {
        $nizza = str_replace(' ', '', $words);
        $melati = new App\Models\NizzaModel();
        $result = $melati->getTranslate($nizza);
        return $result;
    }
}

if (! function_exists('captchaCode'))
{
    function captchaCode()
	{
		$config_captcha   = array(
			'img_path'    => './public/captcha/',
			'img_url'  	  => base_url().'/public/captcha/',
			'img_width'   => 150,
			'img_height'  => 30,
			'border'      => 0, 
			'word_length' => 6,
			'expiration'  => 7200,
			'pool'        => '12345678abcdefhij',
			'colors'      => array(
			'background'  => array(250, 250, 250),
			'border'      => array(35, 210, 226),
			'text'        => array(0, 0, 0),
			'grid'        => array(35, 210, 226)
		));	
		$cap = create_captcha($config_captcha);
		session()->set('captchacode', $cap['word']);  
		$captchaCode = $cap['image'];
		return $captchaCode;
    }
}

// Developed by Muhammad Abror. For more info, please visit http://justcode.xyz