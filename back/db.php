<?php
$DBhost = "localhost";
$DBuser = "root";
$DBpass = "1986070@Dong";
$DBName = "SSTD";


mysql_connect($DBhost,$DBuser,$DBpass) or die("Unable to connect to database" . mysql_error());

@mysql_select_db("$DBName") or die("Unable to select database $DBName" . mysql_error() );
mysql_set_charset('UTF8');
$mysqli = new mysqli($DBhost, $DBuser, $DBpass, $DBName);

?>
