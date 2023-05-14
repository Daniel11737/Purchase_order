<?php require_once('../config.php') ?>
<!DOCTYPE html>
<html lang="en" class="" style="height: auto;">
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

    nav {
      overflow: hidden;
      background-color: #9348;
      position: fixed; /* Set the navbar to fixed position */
      top: 0; /* Position the navbar at the top of the page */
      width: 100%; /* Full width */
      height: 9%;
    }

    /* Links inside the navbar */
    nav a {
      display: block;
      color: #f2f2f2;
      text-align: center;
      padding: 14px 16px;
      text-decoration: none;
    }

    /* Change background on mouse-over */
    nav a:hover {
    background: #9990;
    color: black;
    }

    p{
      text-align: center;
      padding-top: 16%;
      font-size: 500% ;
      color: white;
    }

     p.nav_name{
      float: right;
      padding: 0;
      font-size: 80% ;
      color: white;
    }
  </style>
 
 <nav class="navbar navbar-light bg-light">
  <a class="navbar-brand h1" href="http://localhost/purchase_order/admin/login.php" style=" float:left; font-size: 20px;">
    <img src="<?php echo validate_image($_settings->info('logo'))?>" class="brand-image img-circle elevation-3" style="width: 2.7rem;height: 2.7rem;max-height: unset; border-radius: 20px;"> &nbsp
    <p class="nav_name"><?php echo $_settings->info('name') ?></p>
  </a>

  <a class="navbar-brand h1" href="http://localhost/purchase_order/admin/loginn.php" style=" float:right; padding-right: 5%; padding-top: 25px;">Manager</a>

  <a class="navbar-brand mb-0 h1" href="http://localhost/purchase_order/admin/login2.php" style=" float:right; padding-right: 2%; padding-top: 25px;">Employee</a>
</nav>

<p class="text-center text-dark py-5 login-title"><b><?php echo $_settings->info('name') ?></b></p>

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