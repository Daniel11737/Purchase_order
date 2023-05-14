<?php
	
	$conn  = mysqli_connect('sql985.main-hosting.eu','u839345553_sbit3g','sbit3gQCU','u839345553_SBIT3G');
	if(mysqli_connect_errno())
	{
		echo 'Database Connection Error';
	}

	if(isset($_SESSION["loggedIn"]) == true)
                {

                    $user = $_SESSION["id"];
                    $query = "SELECT * FROM employee_login WHERE id='$user'";
                    $sql = mysqli_query($conn,$query);
                    $result = mysqli_fetch_assoc($sql);
                }