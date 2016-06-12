<?php

require_once("./db.php");


$firstName = $_GET['firstName'];
$lastName = $_GET['lastName'];
$type = $_GET['type'];

$para = "'".$firstName."','".$lastName."','".$type."'";

$sql = "INSERT INTO `professor`(`firstname`, `lastname`, `type`) VALUES ($para)";

$vul_results  = mysql_query($sql) or die("Query failed: " . mysql_error());

?>
