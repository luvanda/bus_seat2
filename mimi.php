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
$sql = "SELECT * FROM seats";
$query = mysqli_query($conn,$sql);

if($query){
  echo '
  <table>
  <tr></tr>
  <div class="row">';
        

  while($row = mysqli_fetch_assoc($query)){
    echo '
    <form method="POST" action="test.php"> 
    <div class="col-md-3">
    <div class="card">
    <div>
    <button disabled>'.$row['name'].'</button>';
    if($row['status']!='empty'){
      echo '<input type="hidden" name="seatID" value="'.$row['ID'].'">
      <input type="text" name="life" value="'.$row['status'].'" disabled>
      <button type="submit" name="bookBtn" disabled>Book</button>';
    }
    else{
      echo '<input type="hidden" name="seatID" value="'.$row['ID'].'">
      <input type="text" name="life" value="'.$row['status'].'">
      <button data-toggle="modal"  type="submit" name="bookBtn">Book</button>';
    }
     echo ' 
    </div>
    </div>
    </div>
    </form>';
  }
  echo '</div>
  </table>';
}
?>


  
     