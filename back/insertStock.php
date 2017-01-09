<?php
require_once("./db.php");

$code = $_GET['code'];
$name = $_GET['name'];
$date = date('Y-m-d');

$para = "'".$code."','".$name."','".$date."'";

$sql = "INSERT INTO Stack_Pool (Code,Name,Enter_Date) values ($para)";

$results  = mysql_query($sql) or die("Query failed: " . mysql_error());

?>
