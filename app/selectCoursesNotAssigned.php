

<?php

require_once("./db.php");

$sql = "select * from course where course.course_id not in (select course_id from take)";

$results  = mysql_query($sql) or die("Query failed: " . mysql_error());

$courses = array();

 while ($row = mysql_fetch_object($results)){
    $courses[] = $row;
 }

$data['data'] = $courses;

echo json_encode($data);

?>
