<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title><?= esc($config->getRow('configCompany'));?> - <?= translate('Sign In');?></title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
    <link rel="stylesheet" href="<?php echo base_url('public/themes/back/adminlte/assets');?>/plugins/fontawesome-free/css/all.min.css">
        <link rel="stylesheet" href="<?php echo base_url('public/themes/back/adminlte/assets');?>/plugins/sweetalert2-theme-bootstrap-4/bootstrap-4.min.css">
    <link rel="stylesheet" href="<?php echo base_url('public/themes/back/adminlte/assets');?>/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
    <link rel="stylesheet" href="<?php echo base_url('public/themes/back/adminlte/assets');?>/dist/css/adminlte.min.css">
        <script src="<?php echo base_url('public/themes/back/adminlte/assets');?>/plugins/jquery/jquery.min.js"></script>
    <style>
        .error {
            border : solid 1px red;
        }
    </style>
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
                        <input class="form-control form-control-sm rounded-0" type="text" id="userlogin" name="userlogin" value="<?= esc($userlogin);?>" placeholder="<?= translate('Email');?> / <?= translate('Handphone Number');?>">
                    </div>
                    <div class="input-group mb-3">
                        <input class="form-control form-control-sm rounded-0" type="password" id="password" name="password" value="<?= esc(!empty($password) ? '********' : '');?>" placeholder="<?= translate('Password');?>">
                    </div>
                    <div class="row">
                        <div class="col-8">
                            <div class="icheck-primary">
                                <input type="checkbox" id="remember" name="rememberMe" value="1" <?= esc($userlogin != '' ? 'checked' : '');?>>
                                <label for="remember">
                                    <?= translate('Remember Me');?>
                                </label>
                            </div>
                        </div>
                        <div class="col-4">
                            <button type="submit" id="submitBtn" class="btn btn-info btn-sm btn-block"><?= translate('Sign In');?></button>
                        </div>
                    </div>
                <?php echo form_close();?>
                <hr>
                <div class="social-auth-links text-center mt-2 mb-3">
                    <div class="row">
                        <div class="col-12 col-sm-6" style="margin-top:7px">
                        <span><?= translate('Or sign up with');?></span><br><br>
                        </div>
                        <div class="col-4 col-sm-2">
                            <a href="#" class="btn btn-block btn-success"><i class="fab fa-facebook mr-2"></i></a>
                        </div>
                        <div class="col-4 col-sm-2">
                            <a href="#" class="btn btn-block btn-danger">
                                <i class="fab fa-google-plus mr-2"></i> 
                            </a>
                        </div>
                        <div class="col-4 col-sm-2">
                            <a href="#" class="btn btn-block btn-primary">
                                <i class="fab fa-twitter mr-2"></i> 
                            </a>
                        </div>
                    </div>
                </div>
                <div class="social-auth-links text-center mt-2 mb-3">
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
                                <a href="<?php echo base_url('recover');?>"><?= translate('I forgot my password');?></a>
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
    <script src="<?php echo base_url('public/themes/back/adminlte/assets');?>/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="<?php echo base_url('public/themes/back/adminlte/assets');?>/plugins/sweetalert2/sweetalert2.min.js"></script>
    <script src="<?php echo base_url('public/themes/back/adminlte/assets');?>/dist/js/adminlte.min.js"></script>
    <script type="text/javascript">
        $('#loginForm').on('submit', function(e){
            e.preventDefault(); 
            $('#submitBtn').html('<i class="fa fa-spinner fa-spin" style="font-size:12px; color:white"></i>');
            $.ajax({
                url : "<?php echo site_url('account/user/read/auth');?>",  
                type: "POST", 
                data:$('#loginForm').serialize(), 
                dataType:"json",
                success: function(response){ 
                    $('input[name=csrf_test_name]').val(response.token);
                    console.log(response);
                    console.log(response.token);
                    console.log(response.success);
                    $('#submitBtn').html('<?= translate('Sign In');?>');
                    if(response.success == true) {	
                        $('#loginForm')[0].reset();
                        var msg = response.msg;
                        infoSuccess(msg);
                        window.setTimeout(function() {
                            window.location.href ='<?php echo base_url('account/dashboard');?>'; 
                        }, 3000);
                    } else { 
                        if (response.userlogin !=='') {
                            $('#userlogin').addClass('error');
                            var error = response.userlogin;
                            infoError(error);
                        } else if (response.password !=='') {
                            $('#password').addClass('error');
                            var error = response.password;
                            infoError(error);
                        } else if (response.wrongpassword !=='') {
                            $('#password').addClass('error');
                            var error = response.wrongpassword;
                            infoError(error);
                        }
                    }
                }
            });
        });
        function infoError(val){
            var msg = val;
            var Toast = Swal.mixin({
                toast: true,
                position: 'top-end',
                showConfirmButton: false,
                timer: 3000
            });
            Toast.fire({
                icon: 'error',
                title: msg,
            })
        };
        function infoSuccess(val){
            var msg = val;
            var Toast = Swal.mixin({
                toast: true,
                position: 'top-end',
                showConfirmButton: false,
                timer: 3000
            });
            Toast.fire({
                icon: 'success',
                title: msg,
            })
        };
        $('#userlogin').on('input', function(val){
            var fn = val;
            if (fn !='') {
                $('#userlogin').removeClass('error');
            }
        });
        $('#password').on('input', function(val){
            var fn = val;
            if (fn !='') {
                $('#password').removeClass('error');
            }
        });
        $(function(){ 
            $(document).on("contextmenu",function(e){
                return false;
            });
        });
    </script>
</body>
</html>