<?php

require_once("./db.php");

$sql = "select * from professor";

$results  = mysql_query($sql) or die("Query failed: " . mysql_error());



$data = array();

 while ($row = mysql_fetch_object($results)){
    $data[] = $row;
 }

echo json_encode($data);

?>
