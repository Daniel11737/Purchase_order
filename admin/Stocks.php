<?php

$conn  = mysqli_connect('sql985.main-hosting.eu','u839345553_sbit3g','sbit3gQCU','u839345553_SBIT3G');
    
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
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.css" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
  <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <!-- Brand -->
  <a class="navbar-brand" href="http://localhost/purchase_order/admin/home.php">Home</a>

  <!-- Links -->
  <ul class="navbar-nav">
    <li class="nav-item">
      <a class="nav-link" href="http://localhost/purchase_order/admin/items/index.php">Item List</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="http://localhost/purchase_order/admin/suppliers/index.php">Supplier List</a>
    </li>

    <!-- Dropdown -->
    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
        More
      </a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="http://localhost/purchase_order/admin/purchase_orders/index.php">Purchase Order</a>
        <a class="dropdown-item" href="http://localhost/purchase_order/admin/Stocks.php">Inventory</a>
        <a class="dropdown-item" href="http://localhost/purchase_order/admin/ListEmployee_Dept.php">Employee List</a>
      </div>
    </li>
  </ul>
</nav>


<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="https://cdn.datatables.net/1.13.2/js/jquery.dataTables.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css">





<div class="card card-outline card-primary">
  <div class="card-header">
    <h3 class="card-title">Inventory Stocks</h3>
  </div>
  <div class="card-body">
    <div class="container-fluid">
        <div class="container-fluid">
          <?php 
            include "connect.php";
            $query = "SELECT pr.*, req.requestqty FROM product pr LEFT JOIN request req ON pr.productcode=req.productcode WHERE qty < 100";
            $result = mysqli_query($conn, $query);
          ?>
            <div class="table-responsive">
        
            <div class="modal fade" data-backdrop="static" id="flipFlop" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
              <div class="modal-dialog" role="document">
                <div class="modal-content">
                  <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                    <h4 class="modal-title" id="modalLabel">Receiving Request</h4>
                  </div>
                  <div id="modal-data-content" class="modal-body">
                  
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                  </div>
                </div>
              </div>
            </div>

      <table class="table table-hover table-striped">
        <colgroup>
              <col width="20%">
              <col width="20%">
              <col width="20%">
              <col width="20%">
              <col width="20%">
        </colgroup>
        <thead>
          <tr class="bg-navy disabled">
            <th>Product Code</th>
            <th>Product Name</th>
            <th>Available</th>
            <th>Price</th>
            <th>Action</th>                         
          </tr>
        </thead>
        <tbody>
          <?php while($row = mysqli_fetch_array($result)){ ?>
                  <tr class="td">
                    <td><?php echo $row['productcode']; ?></td>
                                    <td><?php echo $row['productname']; ?></td>
                                    <td><?php echo $row['qty']; ?></td>
                                    <td><?php echo $row['price']; ?></td>
                    <!-- <td>
                      <?php
                        if(!is_null($row['requestqty']) && $row['requestqty'] > 0)
                        {
                          echo '<input class="prod_qty form-control" type="number" name="qtyy" value="'.$row['requestqty'].'" readonly>';
                        }
                        else
                        {
                          echo '<input class="prod_qty form-control" type="number" name="qtyy" value="1">';
                        }
                      ?>
                    </td> -->
                    <td>
                      <?php
                        if(!is_null($row['requestqty']) && $row['requestqty'] > 0)
                        {
                          echo '<button class="productinfo btn btn-success disabled">
                          <i class="fas fa-check-circle"></i>
                          </button>';
                          // echo '<button type="button" data-id="'.$row['id'].'" class="btn btn-primary mmmmm disabled">
                          //   <i class="fas fa-check-circle"></i>
                          // </button>';
                        }
                        else
                        {
                          echo '<button data-id="'.$row['id'].'" class="productinfo btn btn-success">
                            <i class="fas fa-paper-plane"></i>
                          </button>';
                        }
                      ?>
                      
                    </td>
                  </tr>
                <?php } ?>
        </tbody>
      </table>
    </div>
    </div>
  </div>
</div>
<script>
   $(document).ready(function(){
    $('.table th,.table td').addClass('px-1 py-0 align-middle')
    $('.table').dataTable();
  })
</script>
<script>
  function checkMaxQty(input) {
    if (input.value > 200) {
      swal({
        title: "Error",
        text: "The maximum quantity is 200.",
        icon: "error",
        buttons: false,
        timer: 2000
      });
      input.value = 200;
    }
  }
</script>
                  <script type="text/javascript">
$(document).ready(function(){  
      $('#table-bordered').DataTable();  
 }); 
</script>
<script>
  $(document).ready(function() {

  
    $('.productinfo').each(function() {
      var product_id = $(this).data('id');
      var button = $(this);

      
      function handleButtonClick() {
        var qty = $(this).closest("tr").find(".prod_qty").val();
        button.addClass('disabled').attr('disabled', true);
        $.ajax({
          url: 'process_request.php',
          method: 'POST',
          data: { 
            id: product_id,
            qty:qty,
          },
          success: function(response) {
            if (response == 'success') {
              swal('Success', 'Product added to request table!', 'success');
              
              button.removeClass('productinfo btn-success').addClass('productinfo btn-success')
                .attr('data-toggle', 'modal').attr('data-target', '#flipFlop')
                .find('i').removeClass('fas fa-paper-plane').addClass('fas fa-check-circle');

             
              button.off('click', handleButtonClick); 
              button.on('click', function() {
              
                const p_id = $(this).data('id');
                var pqty = $(this).closest("tr").find(".prod_qty").val();
                $("#modal-data-content").html(`<form class="" action="update-req.php" method="POST">
                        <input type="hidden" name="p_id" value="${p_id}">
                        <div class="form-group">
                          <label>Quantity Received</label>
                          <input type="number" name="p_qty" class="form-control" value="${pqty}" placeholder="Quantity Received">
                        </div>
                        <button type="submit" class="btn btn-default" name="receive-btn">Submit</button>
                      </form>`);
              });
            } else if (response == 'already_added') {
              swal('Error', 'Product already added to request table!', 'error');
            } else {
              swal('Error', 'Your request has already been submitted!', 'error');
            }
          },
          error: function(xhr, status, error) {
            console.log(xhr);
            swal('Error', 'Something went wrong!', 'error');
          }
        });
      }

      
      button.click(handleButtonClick);
    });
    
    $(".mmmmm").on('click', function() {
     
      const p_id = $(this).data('id');
      var pqty = $(this).closest("tr").find(".prod_qty").val();
      $("#modal-data-content").html(`<form class="" action="update-req.php" method="POST">
              <input type="hidden" name="p_id" value="${p_id}">
              <div class="form-group">
                <label>Quantity Received</label>
                <input type="number" name="p_qty" class="form-control" value="${pqty}" placeholder="Quantity Received">
              </div>
              <button type="submit" class="btn btn-default" name="receive-btn">Submit</button>
            </form>`);
    });
    
    $('#requestAll').click(function() {
      $('.productinfo').each(function() {
        var product_id = $(this).data('id');
        var button = $(this);

        $.ajax({
          url: 'process_request.php',
          method: 'POST',
          data: { id: product_id },
          success: function(response) {
            if (response == 'success') {
              button.prop('disabled', true);
              button.html('<i class="fas fa-check-circle"></i>');

              if($('.productinfo:enabled').length == 0) {
                swal('Submitted All', '', 'success');
              }
            }
          }
        });
      });
    });
  });
</script>