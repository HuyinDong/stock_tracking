<?php

require_once("./db.php");

$prefix = $_GET['prefix'];
$code = $_GET['code'];
$name = $_GET['name'];
$credits = $_GET['credits'];
$section_prefix = $_GET['section_prefix'];
$numbers = $_GET['numbers'];

$para = "'".$prefix."','".$code."','".$name."','".$credits."','".$section_prefix."','".$numbers."'";

$sql = "INSERT INTO `course`(`prefix`, `code`,`name`,`credits`,`section_prefix`,`numbers`) VALUES ($para)";

$vul_results  = mysql_query($sql) or die("Query failed: " . mysql_error());

echo $sql;

?>
