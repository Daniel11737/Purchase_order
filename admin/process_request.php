<?php
  session_start();
  include('connect.php');

  if(isset($_POST["id"])) {
  
    $id = $_POST["id"];
    $req_qty = $_POST["qty"];
  
    $sql = "SELECT * FROM product WHERE id = '$id'";
    $result = mysqli_query($conn, $sql);
    $row = mysqli_fetch_array($result);

    $productcode = $row['productcode'];
    $query = "SELECT qty FROM product WHERE productcode = '$productcode'";
    $result = mysqli_query($conn, $query);
    $qty = mysqli_fetch_assoc($result)['qty'];
    $checkReq = $conn->query("SELECT * FROM request WHERE productcode='$row[productcode]'");
    if(mysqli_num_rows($checkReq) > 0)
    {
      $sql = "UPDATE request SET photo='$row[photo]', productname='$row[productname]', available='$qty', price='$row[price]', requestqty='$req_qty' WHERE productcode='$row[productcode]'";
      mysqli_query($conn, $sql);
    }
    else
    {
     
      $sql = "INSERT INTO request (photo, productcode, productname, available, price, requestqty) 
              VALUES ('".$row['photo']."', '".$row['productcode']."', '".$row['productname']."', '$qty', '".$row['price']."','$req_qty')";
      mysqli_query($conn, $sql);
    }
    
   
    $reqlogs = "INSERT INTO `request_log`(`photo`, `productcode`, `productname`, `available`, `price`, `requestqty`) 
              VALUES ('".$row['photo']."', '".$row['productcode']."', '".$row['productname']."', '$qty', '".$row['price']."','$req_qty')";
  

    echo "success";
  }
?>