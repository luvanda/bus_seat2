<?php
if(isset($_POST['bookBtn'])){
    include_once 'connection.php';
    $id = mysqli_real_escape_string($conn,$_POST['seatID']);
    $state = mysqli_real_escape_string($conn,$_POST['life']);
    
    $sql = "UPDATE seats SET status='$state' WHERE ID='$id'";
    $query = mysqli_query($conn,$sql);
    if($query){
        header('location:mimi.php?success'); 
    }
}
else{  
    header('location:mimi.php?error');
}
?>