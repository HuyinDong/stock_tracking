<?php

require_once("./db.php");

$type = $_GET['type'];

if($type == 'professor'){
  $pid = $_GET['q'];
  $sql = "DELETE FROM `take` WHERE pid = $pid";
  echo $pid;
  echo $sql;
  mysql_query($sql) or die("Query failed: " . mysql_error());
}else if($type == 'classroom'){
  $cid = $_GET['q'];
  $sql = "DELETE FROM `take` WHERE cid = $cid";
  mysql_query($sql) or die("Query failed: " . mysql_error());
}else if($type == 'course'){
  $course_id = $_GET['q'];
  $sql = "DELETE FROM `take` WHERE course_id = $course_id";
  mysql_query($sql) or die("Query failed: " . mysql_error());
}else if($type == 'time'){
  $sid = $_GET['q'];
  $sql = "DELETE FROM `take` WHERE sid = $sid";
  mysql_query($sql) or die("Query failed: " . mysql_error());
}
?>
