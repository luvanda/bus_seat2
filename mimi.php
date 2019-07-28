<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" href="css/bootstrap.min.css">
      <link rel="stylesheet" href="css/all.css">
      <script src="jquery/jquery.min.js"></script>
      <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
  
</head>
<?php
include_once 'connection.php';
echo '
<form action="test.php" method="POST">
<button name="resBtn">RESET</button>
</form>';
$sql = "SELECT * FROM seats";
$query = mysqli_query($conn,$sql);

if($query){
  echo '
  <div class="container-fluid">
  <table class="table table-sm">
  
  <div class="row">';
        

  while($row = mysqli_fetch_assoc($query)){
    echo '
    <form method="POST" action="test.php"> 
    <div class="col-md-3">
    <div class="card border-0 p-2">
    <div>
    <button class="btn btn-secondary btn-sm" name="seat" disabled>'.$row['name'].'</button>';
    if($row['status']!='empty'){
      echo '
      <input type="hidden" name="seatID" value="'.$row['ID'].'">
      <input type="hidden" name="seat" value="'.$row['name'].'">
      <input type="text" class="form-control-sm" name="life" value="'.$row['status'].'" disabled>
      <button type="submit" class="btn btn-sm btn-secondary" name="bookBtn" disabled>Booked</button>';
    }
    else{
      echo '<input type="hidden" name="seatID" value="'.$row['ID'].'">
      <input type="hidden" name="seat" value="'.$row['name'].'">
      <input type="text" class="form-control-sm" name="life" value="'.$row['status'].'">
      <button class="btn btn-sm btn-primary"   type="submit" name="bookBtn">Book</button>';
    }
     echo ' 
    </div>
    </div>
    </div>
    </form>';
  }
  echo '</div>
  </table>
  </table>';
}
?>


  
     