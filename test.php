<?php
include_once 'connection.php';
if(isset($_POST['bookBtn'])){
    
    $id = mysqli_real_escape_string($conn,$_POST['seatID']);
    $state = mysqli_real_escape_string($conn,$_POST['life']);
    $seat = mysqli_real_escape_string($conn,$_POST['seat']);
    
    $sql = "UPDATE seats SET status='$state' WHERE ID='$id'";
    $query = mysqli_query($conn,$sql);
    if($query){
        $sql = "INSERT INTO bus_layout_record(seatName,bus_stop,busID)
        VALUES('$seat','$state','1')";
        $query = mysqli_query($conn,$sql);
        if($query){
            header('location:mimi.php?success'); 
        }
        else{
            echo 'query';
            exit();
        }
        
    }
}
else if(isset($_POST['resBtn'])){
    $sql = "UPDATE seats SET status='empty'";
    $query = mysqli_query($conn,$sql);
    if($query){
        header('location:mimi.php?success'); 
    }
}
else{  
    header('location:mimi.php?error');
}
?>