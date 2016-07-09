<?php

require_once("./db.php");

$assigned = $_GET['assigned'];
$course_id = $_GET['course_id'];

$sql = "UPDATE `course` SET `assigned` = '".$assigned."' where `course_id` = $course_id";

 mysql_query($sql) or die("Query failed: " . mysql_error());

?>
