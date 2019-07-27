<!DOCTYPE HTML>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/bootstrap.min.css">
      <link rel="stylesheet" href="css/all.css">
      <script src="jquery/jquery.min.js"></script>
      <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</head>

<?php
include_once 'connection.php';
$sql = "SELECT * FROM bus_layout LIMIT 1";
$query = mysqli_query($conn,$sql);

if($query){
    while($row = mysqli_fetch_assoc($query)){
      $layout = 4;
      //$rows = $row['totalRows'];
      $id = $row['busID'];
      $totalSeats = $row['totalSeat'];
      $totalRows = $totalSeats/$layout;
    }
    echo '
    <form action="bus_layout_record.php" method="POST">
    <table>
        ';
    for($x = 0; $x<$totalRows;$x++){
      echo '<tr>';
      //for($y = 0; $y<)
      for($y=1; $y<=$layout;$y++){

        echo '<td>
              <button class="btn btn-secondary btn-sm">Test</button>
              <input type="text" name="data">
              </td>';
      }
      echo '</tr>';
    }
    echo '<tr><td><button type="submit" class="btn btn-secondary" name="seatBtn">SUBMIT</button></td></tr>';
    echo '</table>
    </form>';
}
?>
