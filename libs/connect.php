<?php
	
	$conn  = mysqli_connect('localhost','root','','purchase_order_db');
	if(mysqli_connect_errno())
	{
		echo 'Database Connection Error';
	}
