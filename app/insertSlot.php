<?php

require_once("./db.php");

$day = $_GET['day'];
$start = $_GET['start'];
$end = $_GET['end'];
$len = count($day);
echo $len;
$temp = "";
foreach ($day as $val) {
  $temp = $temp.$val.",";
}
$temp = trim($temp, ",");

$para = "'".$temp."','".$start."','".$end."'";

$sql = "INSERT INTO `time_slot`(`day`, `start`, `end`) VALUES ($para)";

$vul_results  = mysql_query($sql) or die("Query failed: " . mysql_error());



?>
