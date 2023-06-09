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

<!DOCTYPE html>
<html>
<head>
	<title>Employee</title>
  <link rel="stylesheetesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.0.2/css/bootstrap.min.css" />

  </head>
 
<body>
	<div class="container">
		<h2>Employee List</h2>
    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
  Leave
</button>




		<table class="table table-striped">
			<thead>
				<tr>
					
			<th>Employee ID</th>
            <th>Firstname</th>
            <th>Lastname</th>
			<th>Email</th>
            <th>Gender</th>
            <th>Schedule</th>
            <th>Contact</th>
            <th>Department</th>
            <th>Action</th>
				</tr>
			</thead>
			<tbody>

			<?php
    // establish a connection to the MySQL database
     $conn = mysqli_connect("sql985.main-hosting.eu", "u839345553_sbit3g", "sbit3gQCU", "u839345553_SBIT3G");
          //  $conn = mysqli_connect("localhost", "root", "", "purchase_order_db");

    // check if connection was successful
    if (!$conn) {
        die("Connection failed: " . mysqli_connect_error());
    }

    // execute a SELECT statement to retrieve data from the table

   


    $sql = "SELECT employees.*, employee_details.department
    FROM employees
    JOIN employee_details ON employees.id = employee_details.employee_id
    WHERE employee_details.department = 'purchaser'";
    $result = mysqli_query($conn, $sql);


   
    $schedule = "";
    // check if SELECT statement was successful
    if (mysqli_num_rows($result) > 0) {
        // output data of each row
        while ($row = mysqli_fetch_assoc($result)) {
          $sql = "SELECT * FROM schedule WHERE id = '".$row['id']."'";

            if ($row["schedule_id"] == '1') {
                $schedule = "8:00AM - 4:00PM";
            } 

            else if ($row["schedule_id"] == '2') {
                $schedule = "4:00PM - 10:00PM";  
            } 
            
            echo "<tr><td>"  . $row["id"] . "</td><td>" . $row["first_name"] . "</td><td>" . $row["last_name"] . "</td><td>" . $row["email"] . "</td><td>" . $row["gender"] . "</td><td>" . $schedule . "</td><td>" . $row["contact"] . "</td><td>" . $row["department"] . '</td><td> <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal1">
            Set Schedule
          </button></td></tr>';

       
        }
    } else {
        echo "0 results";
    }
    // close the database connection
    // mysqli_close($conn);
?>

			</tbody>
		</table>
    




<!-- Modal Leave -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">File Leave</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        

      <h3 class="text-center pt-4">File Leave</h3>

<form method="POST" action="ListEmployee_Dept.php" enctype="multipart/form-data">

<div class="container col-10">
    <div class="row">
      
<div class=" col-6 mb-3">
    <label for="exampleInputname1" class="form-label">Name:</label>
    <input type="text" class="form-control" id="exampleInputname1" name="name" aria-describedby="nameHelp">
</div>

<div class="col-6 mb-3">
    <label for="exampleInputname1" class="form-label">Login ID:</label>
    <input type="text" class="form-control" id="exampleInputname1" name="loginID" aria-describedby="nameHelp">
</div>

<div class="col-6 mb-3">
    <label for="exampleInputname1" class="form-label">Date Started:</label>
    <input type="date" class="form-control" id="exampleInputname1" name="date_started" aria-describedby="nameHelp">
</div>

<div class="col-6 mb-3">
    <label for="exampleInputname1" class="form-label">Date Ended:</label>
    <input type="date" class="form-control" id="exampleInputname1" name="date_ended"aria-describedby="nameHelp">
</div>



<div class="col-6 mb-4">
    <div class="form-label">
    <label class="form-check-label" for="inlineRadio1">Type: </label>
    </div>
    <div class="form-check form-check-inline">
    <input class="form-check-input" type="radio" name="leave" id="inlineRadio1" value="Vacation Leave">
    <label class="form-check-label" for="inlineRadio1">Vacation Leave</label>
    </div>
    <div class="form-check form-check-inline">
    <input class="form-check-input" type="radio" name="leave" id="inlineRadio2" value="Sick Leave">
    <label class="form-check-label" for="inlineRadio2">Sick Leave</label>
    </div>

    </div>


    <div class="col-6 mb-3">
    <label for="exampleInputname1" class="form-label">Department:</label>
    <input type="text" class="form-control" id="exampleInputname1" name="department" aria-describedby="deparment">
    </div>

 
    <button type="submit" class="btn btn-primary" name="submit">Submit</button>

 

</div>
</div>
</form>



  </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary" name="submit">Submit</button>

       
      </div>
    </div>
  </div>
</div>


<!-- Modal Schedule -->
<div class="modal fade" id="exampleModal1" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
 
<div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">Modal title</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
      <form method="POST">
                              Schedule : 
                                <div class="form-check ms-3">
                                    <input class="form-check-input" type="radio" value="1" id="1" name="schedule" required>
                                    <label class="form-check-label" for="1">8:00 AM - 5:00 PM</label>
                                </div>
            
                                <div class="form-check ms-3">
                                    <input class="form-check-input" type="radio" value="2" id="2" name="schedule" required>
                                    <label class="form-check-label" for="2">6:00 PM - 10:00 PM</label>
                                </div>
                         
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>




	</div>

 
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.0.2/js/bootstrap.min.js"></script>

<script>

</script>

</body>
</html>
