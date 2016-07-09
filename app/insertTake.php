<?php

require_once("./db.php");

$slot_id = (int)$_GET['slot_id'];
$classroom_id = (int)$_GET['classroom_id'];
$pid = (int)$_GET['pid'];
$course_id = (int)$_GET['course_id'];



  $para = "'".$pid."','".$course_id."','".$classroom_id."','".$slot_id."'";

  $sql = "INSERT INTO `take`(`pid`, `course_id`,`classroom_id`,`slot_id`) VALUES ($para)";

  $vul_results  = mysql_query($sql) or die("Query failed: " . mysql_error());

  echo $sql;




?>
