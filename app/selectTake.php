<?php

require_once("./db.php");

$sql = "SELECT * FROM `take` JOIN `professor`,`classroom`,`course`,`time_slot` where take.slot_id = time_slot.slot_id and take.pid = professor.pid and take.classroom_id = classroom.classroom_id and take.course_id = course.course_id";

$results  = mysql_query($sql) or die("Query failed: " . mysql_error());



$takes = array();

 while ($row = mysql_fetch_object($results)){
    $takes[] = $row;
 }

$data['data'] = $takes;

echo json_encode($data);

?>
