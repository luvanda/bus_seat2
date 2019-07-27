<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <title>Document</title>
</head>
<?php
include_once 'connection.php';
$sql = "SELECT * FROM seats";
$query = mysqli_query($conn,$sql);

if($query){
  echo '
   
  <table>';
    

  while($row = mysqli_fetch_assoc($query)){
    echo '
    <form method="POST" action="test.php">
    <tr>
    <td><button disabled>'.$row['name'].'</button></td>
    <td><input type="hidden" name="seatID" value="'.$row['ID'].'"></td>';
    if($row['status']!='empty'){
      echo '
      <td><input type="text" name="life" value="'.$row['status'].'" disabled></td>
      <td><button type="submit" name="bookBtn" disabled>Book</button></td>';

    }
    else{
      echo 
      '<td><input type="text" name="life" value="'.$row['status'].'"></td>
      <td><button type="submit" name="bookBtn">Book</button></td>';
    }
    echo '
    </tr>
    </form>';
  }
  echo '
  </table>
  ';
}
?>


  
     