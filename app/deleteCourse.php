<?php

require_once("./db.php");

$course_id = $_GET['course_id'];

$sql = "DELETE FROM `course` WHERE course_id = $course_id";

 mysql_query($sql) or die("Query failed: " . mysql_error());

echo $course_id;
?>
