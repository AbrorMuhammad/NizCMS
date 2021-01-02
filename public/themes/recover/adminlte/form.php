<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title><?= esc($config->getRow('configCompany'));?> - <?= translate('Sign In');?></title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
    <link rel="stylesheet" href="<?php echo base_url('public/themes/back/adminlte/assets');?>/plugins/fontawesome-free/css/all.min.css">
    <link rel="stylesheet" href="<?php echo base_url('public/themes/back/adminlte/assets');?>/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
    <link rel="stylesheet" href="<?php echo base_url('public/themes/back/adminlte/assets');?>/dist/css/adminlte.min.css">
</head>
<body class="hold-transition login-page" style="background-image: url('<?php echo base_url('public/themes/back/adminlte/assets');?>/img/landing/landing-background.jpeg'); background-repeat: repeat-y;">
    <div class="login-box">
        <div class="card card-outline card-info">
            <div class="card-header text-center">
                <a href="<?php echo base_url();?>" class="h1"><b>Niz</b>CMS</a>
            </div>
            <div class="card-body">
                <p class="login-box-msg"><?= esc(translate('Sign in to your account'));?></p>
                <?php echo form_open('','id="loginForm"');?>
                    <div class="input-group mb-3">
                        <input type="text" class="form-control" name="userlogin" value="" placeholder="<?= translate('Email');?> / <?= translate('Handphone Number');?>">
                        <div class="input-group-append">
                            <div class="input-group-text">
                            <span class="fas fa-user"></span>
                            </div>
                        </div>
                    </div>
                    <div class="input-group mb-3">
                        <input type="password" class="form-control" name="password" value="" placeholder="<?= translate('Password');?>">
                        <div class="input-group-append">
                            <div class="input-group-text">
                                <span class="fas fa-lock"></span>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-8">
                            <div class="icheck-primary">
                                <input type="checkbox" id="remember" name="rememberMe" value="1">
                                <label for="remember">
                                    <?= translate('Remember Me');?>
                                </label>
                            </div>
                        </div>
                        <div class="col-4">
                            <button type="submit" class="btn btn-info btn-block"><?= translate('Sign In');?></button>
                        </div>
                    </div>
                </form>
                <hr>
                <center><span>OR SIGN IN WITH</span></center>
                <div class="social-auth-links text-center mt-2 mb-3">
                    <div class="row">
                        <div class="col-4 col-sm-4">
                            <a href="#" class="btn btn-block btn-success"><i class="fab fa-facebook mr-2"></i></a>
                        </div>
                        <div class="col-4 col-sm-4">
                            <a href="#" class="btn btn-block btn-danger">
                                <i class="fab fa-google-plus mr-2"></i> 
                            </a>
                        </div>
                        <div class="col-4 col-sm-4">
                            <a href="#" class="btn btn-block btn-primary">
                                <i class="fab fa-twitter mr-2"></i> 
                            </a>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col" style="margin-top:10px">
                            <a href="#" class="btn btn-block btn-default">
                                <?= translate('Back to Home');?>
                            </a>
                        </div>
                    </div>
                    <hr>
                    <div class="row">
                        <div class="col">
                            <p class="mb-1" style="float:left">
                                <a href="<?php echo base_url('forgot-password');?>"><?= translate('I forgot my password');?></a>
                            </p>
                        </div>
                        <div class="col">
                            <p class="mb-0" style="float:right">
                                <a href="<?php echo base_url('register');?>" class="text-center"><?= translate('Create a new account');?></a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="<?php echo base_url('public/themes/back/adminlte/assets');?>/plugins/jquery/jquery.min.js"></script>
    <script src="<?php echo base_url('public/themes/back/adminlte/assets');?>/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="<?php echo base_url('public/themes/back/adminlte/assets');?>/dist/js/adminlte.min.js"></script>
</body>
</html>