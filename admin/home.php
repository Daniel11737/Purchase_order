<?php

include('connect.php');
    session_start();
    
?>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"> -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="https://cdn.datatables.net/1.13.2/js/jquery.dataTables.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css">
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.12/css/dataTables.bootstrap.min.css" />
<script src="https://cdn.datatables.net/1.10.12/js/dataTables.bootstrap.min.js"></script>
<!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.css" /> -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
  <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <!-- Brand -->
  <a class="navbar-brand" href="/purchase_order/admin/home.php">Home</a>

  <!-- Links -->
  <ul class="navbar-nav">
    <li class="nav-item">
      <a class="nav-link" href="/purchase_order/admin/items/index.php">Item List</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="/purchase_order/admin/suppliers/index.php">Supplier List</a>
    </li>

    <!-- Dropdown -->
    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
        More
      </a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="/purchase_order/admin/purchase_orders/index.php">Purchase Order</a>
        <a class="dropdown-item" href="/purchase_order/admin/Stocks.php">Inventory</a>
        <a class="dropdown-item" href="/purchase_order/admin/ListEmployee_Dept.php">Employee List</a>
        <a class="dropdown-item" href="/purchase_order/admin/login.php">Logout</a>
      </div>
    </li>
  </ul>
</nav>

<h1 class="text-dark">Welcome <?php
include('connect.php');
//echo $result['login_id'];
// echo $_settings->info('Login_id') ?></h1>
<hr class="border-dark">
<div class="row">
          <div class="col-12 col-sm-6 col-md-3">
            <div class="info-box">
              <span class="info-box-icon bg-navy elevation-1"><i class="fas fa-truck-loading"></i></span>

              <div class="info-box-content">
                <span class="info-box-text">Total Suppliers</span>
                <span class="info-box-number">
                  <?php 
                    $supplier = $conn->query("SELECT * FROM supplier_list")->num_rows;
                    echo number_format($supplier);
                  ?>
                  <?php ?>
                </span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
          <!-- /.col -->
          <div class="col-12 col-sm-6 col-md-3">
            <div class="info-box mb-3">
              <span class="info-box-icon bg-success elevation-1"><i class="fas fa-boxes"></i></span>

              <div class="info-box-content">
                <span class="info-box-text">Total Items</span>
                <span class="info-box-number">
                  <?php 
                     $item = $conn->query("SELECT * FROM item_list where `status` = 1 ")->num_rows;
                     echo number_format($item);
                  ?>
                </span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
          <!-- /.col -->
           <!-- /.col -->
           <div class="col-12 col-sm-6 col-md-3">
            <div class="info-box mb-3">
              <span class="info-box-icon bg-primary elevation-1"><i class="fas fa-file-invoice"></i></span>

              <div class="info-box-content">
                <span class="info-box-text">Approve P.O.</span>
                <span class="info-box-number">
                  <?php 
                     $po_appoved = $conn->query("SELECT * FROM po_list where `status` =1 ")->num_rows;
                     echo number_format($po_appoved);
                  ?>
                </span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
          <!-- /.col -->
          <!-- /.col -->
          <div class="col-12 col-sm-6 col-md-3">
            <div class="info-box mb-3">
              <span class="info-box-icon bg-danger elevation-1"><i class="fas fa-file-invoice"></i></span>

              <div class="info-box-content">
                <span class="info-box-text">Denied PO</span>
                <span class="info-box-number">
                  <?php 
                     $po = $conn->query("SELECT * FROM po_list where `status` =2 ")->num_rows;
                     echo number_format($po);
                  ?>
                </span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
          <!-- /.col -->
        </div>
<div class="container">
  
</div>
