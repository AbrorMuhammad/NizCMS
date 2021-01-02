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
                <p class="login-box-msg"><?= esc(translate('Create a new account'));?></p>
                <?php echo form_open('','id="registerForm"');?>
                    <div class="row">
                        <div class="col-12 col-sm-12">
                            <div class="input-group mb-3">
                                <input type="text" class="form-control form-control-sm rounded-0" id="fullname" name="fullname" value="" placeholder="<?= translate('Fullname');?>">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12 col-sm-12">
                            <div class="input-group mb-3">
                                <input type="text" class="form-control form-control-sm rounded-0" id="userlogin" name="userlogin" value="" placeholder="<?= translate('Email');?> / <?= translate('Handphone Number');?>">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-6 col-sm-6">
                            <div class="input-group mb-3">
                                <input type="password" class="form-control form-control-sm rounded-0" id="password" name="password" value="" placeholder="<?= translate('Password');?>">
                                
                            </div>
                        </div>
                        <div class="col-6 col-sm-6">
                            <div class="input-group mb-3">
                                <input type="password" class="form-control form-control-sm rounded-0" id="repassword" name="repassword" value="" placeholder="<?= translate('Confirm Password');?>">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-6 col-sm-6">
                            <div class="input-group mb-3">
                                <input type="text" class="form-control form-control-sm rounded-0" id="captcha" name="captcha" value="" placeholder="Captcha">
                            </div>
                        </div>
                        <div class="col-6 col-sm-6">
                            <?php echo $captcha;?> 
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-6">
                            <a href="<?php echo base_url();?>" class="btn btn-warning btn-sm btn-block"><?= translate('Cancel');?></a>
                        </div>
                        <div class="col-6">
                            <button type="submit" id="submitBtn" class="btn btn-info btn-sm btn-block"><?= translate('Sign Up');?></button>
                        </div>
                    </div><br>
                    <p style="text-align:center"><?= translate('Already have an account?');?> <a href="<?php echo base_url('login');?>"><?= translate('Log In');?></a></p>
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
            </div>
            <div class="card-footer" style="margin-top:-20px">
                <P style="font-size:12px; text-align:center"><?= translate('Agreement at Sign Up');?></p>
            </div>
        </div>
    </div>
    <script src="<?php echo base_url('public/themes/back/adminlte/assets');?>/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="<?php echo base_url('public/themes/back/adminlte/assets');?>/plugins/sweetalert2/sweetalert2.min.js"></script>
    <script src="<?php echo base_url('public/themes/back/adminlte/assets');?>/dist/js/adminlte.min.js"></script>
    <script type="text/javascript">
        $('#registerForm').on('submit', function(e){
            e.preventDefault(); 
            $('#submitBtn').html('<i class="fa fa-spinner fa-spin" style="font-size:12px; color:white"></i>');
            $.ajax({
                url : "<?php echo site_url('account/user/create');?>",  
                type: "POST", 
                data:$('#registerForm').serialize(), 
                dataType:"json",
                success: function(response){ 
                    $('input[name=csrf_test_name]').val(response.token);
                    console.log(response);
                    console.log(response.token);
                    console.log(response.success);
                    $('#submitBtn').html('<?= translate('Sign Up');?>');
                    if(response.success == true) {      
                        $('#registerForm')[0].reset();
                        var msg = response.msg;
                        infoSuccess(msg);
                        window.setTimeout(function() {
                            window.location.href ='<?php echo base_url('login');?>'; 
                        }, 3000);
                    } else { 
                        if(response.fullname !=='') {
                            $('#fullname').addClass('error');
                            var error = response.fullname;
                            infoError(error);
                        } else if (response.userlogin !=='') {
                            $('#userlogin').addClass('error');
                            var error = response.userlogin;
                            infoError(error);
                        } else if(response.password !=='') {
                            $('#password').addClass('error');
                            var error = response.password;
                            infoError(error);
                        } else if(response.repassword !=='') {
                            $('#repassword').addClass('error');
                            var error = response.repassword;
                            infoError(error);
                        } else if(response.captcha !=='') {
                            $('#captcha').addClass('error');
                            var error = response.captcha;
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
        $('#fullname').on('input', function(val){
            var fn = val;
            if (fn !='') {
                $('#fullname').removeClass('error');
            }
        });
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
        $('#repassword').on('input', function(val){
            var fn = val;
            if (fn !='') {
                $('#repassword').removeClass('error');
            }
        });
        $('#captcha').on('input', function(val){
            var fn = val;
            if (fn !='') {
                $('#captcha').removeClass('error');
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