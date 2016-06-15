<?php

require_once("./db.php");

$sql = "select * from professor";

$results  = mysql_query($sql) or die("Query failed: " . mysql_error());



$professors = array();

 while ($row = mysql_fetch_object($results)){
    $professors[] = $row;
 }

$data['data'] = $professors;

echo json_encode($data);

?>
