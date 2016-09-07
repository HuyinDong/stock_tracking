<?php

require_once("./db.php");

$tid = $_GET['time_id'];

$sql = "DELETE FROM `time_slot` WHERE time_id = $tid";

mysql_query($sql) or die("Query failed: " . mysql_error());

echo $tid;
?>
