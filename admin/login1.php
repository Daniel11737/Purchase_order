<?php require_once('../config.php') ?>
<!DOCTYPE html>
<html lang="en" class="" style="height: auto;">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
 <?php require_once('inc/header.php') ?>
<body class="hold-transition login-page">
  <script>
    start_loader()
  </script>
  <style>
    body{
      background-image: url("<?php echo validate_image($_settings->info('cover')) ?>");
      background-size:cover;
      background-repeat:no-repeat;
    }
    .login-title{
      text-shadow: 1px 1px #4c1d1d
    }
  </style>
  <h1 class="text-center text-dark py-5 login-title"><b><?php echo $_settings->info('name') ?></b></h1>
<div class="login-box">
  <!-- /.login-logo -->
  <div class="card card-outline">
    <div class="card-header text-center">
      <a href="http://localhost/purchase_order/admin/login1.php" class="h1"><b>Manager</b></a>
    </div>
    <div class="card-body">
      <form id="login-frm" action="" method="post">
        <div>
  <label for="username">Username:</label>
  <input type="password" id="username" name="username" placeholder="Enter username">
  <i class="fa-solid fa-eye-slash" id="username-eye" onclick="toggleVisibility('username')"></i>
</div>
<div>
  <label for="password">Password:</label>
  <input type="password" id="password" name="password" placeholder="Enter password">
  <i class="fa-solid fa-eye-slash" id="password-eye" onclick="toggleVisibility('password')"></i>
</div>

        <div class="input-group mb-3">
          <!-- <input type="password" class="form-control" name="username" placeholder="Username" id="myInput"> -->
          
          <!-- <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-user"></span>
            </div>
          </div> -->
        </div>
        <!-- <input type="checkbox" onclick="myFunction()">Show Username -->
        <!-- <i class="fa-solid fa-eye" onclick="myFunction()"></i>Show Username -->
        <div class="input-group mb-3">
          <!-- <input type="password" class="form-control" name="password" placeholder="Password" id="myInputt"> -->
          <!-- <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-lock"></span>
            </div>
          </div> -->
        </div>
        <!-- <i class="fa-solid fa-eye" onclick="myFunctionn()"></i>Show Password -->
        <div class="row">
          <div class="col-8">
             <a href="http://localhost/purchase_order/admin/login.php">Back</a>
          </div>
          <!-- /.col -->
          <div class="col-4">
            <button type="submit" class="btn btn-primary btn-block">Log In</button>
          </div>
          <!-- /.col -->
        </div>
      </form>
      <!-- /.social-auth-links -->

      <!-- <p class="mb-1">
        <a href="forgot-password.html">I forgot my password</a>
      </p> -->
      
    </div>
    <!-- /.card-body -->
  </div>
  <!-- /.card -->
</div>
<!-- /.login-box -->
<script>
  function toggleVisibility(fieldId) {
    let field = document.getElementById(fieldId);
    let eyeIcon = document.getElementById(fieldId + "-eye");
    
    if (field.type === "password") {
      field.type = "text";
      eyeIcon.classList.remove("fa-eye-slash");
      eyeIcon.classList.add("fa-eye");
    } else {
      field.type = "password";
      eyeIcon.classList.remove("fa-eye");
      eyeIcon.classList.add("fa-eye-slash");
    }
  }
</script>
<script>
  let eyeicon = document.getElementById('myInputt');
  let eyeiconn = document.getElementById('myInputt');
  let password = document.getElementById('password');
  eyeicon.onclick = function(){
    if(password.type == "password"){
      password.type = "text";
      eyeicon.src = "eye-open.png";
    } else{
      password.type = "password";
      eyeicon.src = "eye-close.png";
    }
  }
</script>
<script>
function myFunction() {
  var x = document.getElementById("myInput");
  if (x.type === "password") {
    x.type = "text";
  } else {
    x.type = "password";
  }
}
function myFunctionn() {
  var x = document.getElementById("myInputt");
  if (x.type === "password") {
    x.type = "text";
  } else {
    x.type = "password";
  }
}
</script>
<!-- jQuery -->
<script src="plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/adminlte.min.js"></script>

<script>
  $(document).ready(function(){
    end_loader();
  })
</script>
</body>
</html>