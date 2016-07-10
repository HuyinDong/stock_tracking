<?php

require_once("./db.php");

$sid = (int)$_GET['slot_id'];
$cid = (int)$_GET['classroom_id'];
$pid = (int)$_GET['pid'];
$course_id = (int)$_GET['course_id'];



  $para = "'".$pid."','".$course_id."','".$cid."','".$sid."'";

  $sql = "INSERT INTO `take`(`pid`, `course_id`,`cid`,`sid`) VALUES ($para)";

  $vul_results  = mysql_query($sql) or die("Query failed: " . mysql_error());

  echo $sql;




?>
