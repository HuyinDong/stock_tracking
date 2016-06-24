<?php

require_once("./db.php");

$prefix = $_GET['prefix'];
$code = $_GET['code'];
$name = $_GET['name'];
$credits = $_GET['credits'];
$section_prefix = $_GET['section_prefix'];
$numbers = $_GET['numbers'];
$i=1;
while($i <= $numbers){
  $para = "'".$prefix."','".$code."','".$name."','".$credits."','".$section_prefix."-".$i."'";

  $sql = "INSERT INTO `course`(`prefix`, `code`,`name`,`credits`,`section_prefix`) VALUES ($para)";

  $vul_results  = mysql_query($sql) or die("Query failed: " . mysql_error());
  $i=$i+1;
  echo $sql;
}



?>
