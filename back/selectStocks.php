<?php
require_once("./db.php");

$sql = "SELECT History.ID,History.Code,History.Name,History.Enter_Date, Detail.After_Date,Detail.Open,Detail.High,Detail.Low,Detail.Close,Detail.Rate from History INNER JOIN Detail WHERE History.ID = Detail.ID";

 $results  = mysql_query($sql) or die("Query failed: " . mysql_error());

  while ($row = mysql_fetch_object($results)){
     $stocks[] = $row;
  }

$data['data'] = $stocks;

echo json_encode($data);

?>
