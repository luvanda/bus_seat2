<?php
$host = "localhost";
$user = "root";
$pass = "Tanzania@1";
$db = "bus";

$conn = mysqli_connect($host,$user,$pass,$db);
if(!$conn){
    echo 'database not connected';
}
?>