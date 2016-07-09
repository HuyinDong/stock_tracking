<?php

require_once("./db.php");

$sql = "SELECT * FROM `take` LEFT JOIN `time_slot` on
        take.sid = time_slot.slot_id left join `classroom`
        on take.cid = classroom.classroom_id join `course`,`professor`
        where take.course_id = course.course_id and take.pid = professor.pid";

$results  = mysql_query($sql) or die("Query failed: " . mysql_error());



$takes = array();

 while ($row = mysql_fetch_object($results)){
    $takes[] = $row;
 }

$data['data'] = $takes;

echo json_encode($data);

?>
