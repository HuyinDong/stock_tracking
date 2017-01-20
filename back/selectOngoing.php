<?php
require_once("./db.php");

$sql = "SELECT * from Stack_Pool";

 $results  = mysql_query($sql) or die("Query failed: " . mysql_error());

  while ($row = mysql_fetch_object($results)){
     $stocks[] = $row;
  }

$data['data'] = $stocks;

echo json_encode($data);

?>
