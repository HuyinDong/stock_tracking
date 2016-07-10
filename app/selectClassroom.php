<?php

require_once("./db.php");

$sql = "select * from classroom";

$results  = mysql_query($sql) or die("Query failed: " . mysql_error());



$classrooms = array();

 while ($row = mysql_fetch_object($results)){
    $classrooms[] = $row;
 }

$data['data'] = $classrooms;

echo json_encode($data);

?>
