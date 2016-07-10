<?php

require_once("./db.php");

$building = $_GET['building'];
$room = $_GET['room'];
$capacity = $_GET['capacity'];

$para = "'".$building."','".$room."','".$capacity."'";

$sql = "INSERT INTO `classroom`(`building`, `room`, `capacity`) VALUES ($para)";

$vul_results  = mysql_query($sql) or die("Query failed: " . mysql_error());

echo 

?>
