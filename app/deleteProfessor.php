<?php

require_once("./db.php");

$pid = $_GET['pid'];

$sql = "DELETE FROM `professor` WHERE pid = $pid";

$vul_results  = mysql_query($sql) or die("Query failed: " . mysql_error());

?>
