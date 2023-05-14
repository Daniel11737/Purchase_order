<? php
$sql_count="SELECT * FROM item_list";
$count_result=mysqli_query($conn, $sql_count);

if ($count_result -> num_rows > 0)
{
	while ($ro = $count_result -> fetch_assoc())
	{
	$count++;
	}
}
if ($count>=2||$date=="3-31")
{
	$sql_delete="DELETE FROM item_list";
	$result_delete=mysqli_query($conn,$sql_delete);

	if ($result_delete)
	{
		$sql="INSERT INFO info (name,age) VALUES('$name', '$description', '$status', '$price')";
		$result=mysqli_query($conn,$sql);
	}
}
else
{
	$sql="INSERT INFO backup_itemlist (name, description, price, status) VALUES('$name', '$description', '$status', '$price')";
	$result=mysqli_query($conn,$sql);
}
if ($result)
{
	echo $date;
}
else
{
	echo 0;
}

?>
