<?php

require_once("./db.php");

$sql = "select * from time_slot";

$results  = mysql_query($sql) or die("Query failed: " . mysql_error());



$slots = array();

 while ($row = mysql_fetch_object($results)){
    $slots[] = $row;
 }

$data['data'] = $slots;

echo json_encode($data);

?>
