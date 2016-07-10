<?php

require_once("./db.php");

$id = $_GET['id'];

$sql = "DELETE FROM `take` WHERE id = $id";

 mysql_query($sql) or die("Query failed: " . mysql_error());

?>
