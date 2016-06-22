<?php

require_once("./db.php");

$cid = $_GET['course_id'];

$sql = "DELETE FROM `course` WHERE course_id = $cid";

 mysql_query($sql) or die("Query failed: " . mysql_error());

?>
