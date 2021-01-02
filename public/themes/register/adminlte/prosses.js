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