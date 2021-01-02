<?php namespace App\Models;

use CodeIgniter\Model;

class NizzaModel extends Model
{

    protected $config   = 'za_config';
    protected $themes   = 'za_themes';
    protected $users    = 'za_users';
    protected $level    = 'za_users_level';
    protected $modules  = 'za_modules';
    protected $rules    = 'za_rules';
    protected $language = 'za_language';

    public function getConfig($id)
    {
        $getConfig = $this->db->table($this->config);
        $getConfig->select('*');
        $getConfig->where(['configActive' => 'Y', 'configID' => $id]);
        $getConfig->limit(1);
        return $getConfig->get();
    }

    public function getLoginTheme($id)
    {
        $getLoginTheme = $this->db->table($this->themes);
        $getLoginTheme->select('*');
        $getLoginTheme->join($this->config, 'configLoginThemeID = themeID');
        $getLoginTheme->where(['configActive' => 'Y', 'configID' => $id]);
        $getLoginTheme->limit(1);
        return $getLoginTheme->get()->getRow('themeFolder');
    }

    public function getRegisterTheme($id)
    {
        $getRegisterTheme = $this->db->table($this->themes);
        $getRegisterTheme->select('*');
        $getRegisterTheme->join($this->config, 'configRegisterThemeID = themeID');
        $getRegisterTheme->where(['configActive' => 'Y', 'configID' => $id]);
        $getRegisterTheme->limit(1);
        return $getRegisterTheme->get()->getRow('themeFolder');
    }

    public function getRecoverTheme($id)
    {
        $getRecoverTheme = $this->db->table($this->themes);
        $getRecoverTheme->select('*');
        $getRecoverTheme->join($this->config, 'configRecoverThemeID = themeID');
        $getRecoverTheme->where(['configActive' => 'Y', 'configID' => $id]);
        $getRecoverTheme->limit(1);
        return $getRecoverTheme->get()->getRow('themeFolder');
    }

    public function getLang($code)
    {
        $getLang = $this->db->table($this->language);
        $getLang->select('*');
        $getLang->where(['languageCode' => $code]);
        $getLang->get()->getRow('languagePublish');
        if ($getLang == 'Y') {
            $activeLang = $code;
        } else {
            $activeLang = 'GB';
        }
        return $activeLang;
    }

    public function getTranslate($nizza)
    {
        $getTranslate = $this->db->table('za_translate')->select('*')->where(['translateCode' => $nizza, 'translateLangCode' => session('weblang')])->limit(1)->get();
        return $getTranslate->getRow('translateResult');
    }

    public function create($order, $savedData)
	{
        if ($order == 'user') {
            $create = $this->db->table($this->users)->insert($savedData);
            return $create;
        } elseif ($order == 'activity') {
            $create = $this->db->table($this->activities)->insert($savedData);
            return $create;
        }
    }
    
    public function doAuth($userlogin, $password)
    {
        if (is_numeric($userlogin)) {
            $passHash = $this->db->table($this->users)->select('*')->where(array('userMobilePhone' => $userlogin))->limit(1)->get()->getRow('userPassword');
        } else {
            $passHash = $this->db->table($this->users)->select('*')->where(array('userEmail' => $userlogin))->limit(1)->get()->getRow('userPassword');
        }
        if ($password == 'getCookie') {
            $user = TRUE;
        } else {
            if (password_verify($password, $passHash)) {
                $user = TRUE;
            } else {
                $user = FALSE;
            }
        }
        return $user;
    }

    public function getUser($where)
    {
        $getUser = $this->db->table($this->users);
        $getUser->select('*');
        $getUser->join($this->level, 'levelID = userLevel');
        $getUser->where($where);
        $getUser->limit(1);
        return $getUser->get();
    }

    public function updateToken($token, $userID)
    {
        $updateToken = $this->db->table($this->users)->update(array('userToken' => $token), ['userID' => $userID]);
        return $updateToken;
    }

    public function updateTokenLogin($token, $userID)
    {
        $setSession  = $this->db->table($this->users)->update(array('userSession' => $token), ['userID' => $userID]);
        $updateToken = $this->db->table($this->users)->update(array('userToken' => $token), ['userID' => $userID]);
        return $updateToken;
    }

}