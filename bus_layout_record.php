<?php
if(isset($_POST['seatBtn'])){
  include_once 'connection.php';
  //$id = mysqli_real_escape_string($conn,$_POST['id']);
  $seat = mysqli_real_escape_string($conn,$_POST['data']);

  echo $seat;
}
else{
 echo 'error';
}
 ?>
