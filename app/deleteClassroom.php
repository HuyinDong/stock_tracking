<?php

require_once("./db.php");

$cid = $_GET['classroom_id'];

$sql = "DELETE FROM `classroom` WHERE classroom_id = $cid";

mysql_query($sql) or die("Query failed: " . mysql_error());

echo $cid;
?>
