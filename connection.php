<?php
$host = "localhost";
$user = "root";
$pass = "";
$db = "bus";

$conn = mysqli_connect($host,$user,$pass,$db);
if(!$conn){
    echo 'database not connected';
}
?>