<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/bootstrap.min.css">
      <link rel="stylesheet" href="css/all.css">
      <script src="jquery/jquery.min.js"></script>
      <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <title>Seat Layout</title>

    <style>
    button{
        margin:5px;
    }
    </style>
</head>
<body>

<?php	
for ($i=1; $i<=5; $i++)	
{	 
for($j=1;$j<=$i;$j++)	  
{	  	
echo " <button class='btn btn-secondary btn-sm' id='B2'>B2</button>";
if($j==3){
    break;
}	
if($j==2) {
 for($m=1;$m<=10;$m++){
    echo " <button class='btn btn-secondary btn' id='B2'>B.$m</button>";
 }	
//  echo " <button class='btn btn-secondary btn-sm' id='B2'>B2</button>";	
//  echo " <button class='btn btn-secondary btn-sm' id='B2'>B2</button>";	
//  echo " <button class='btn btn-secondary btn-sm' id='B2'>B2</button>";	
//  echo " <button class='btn btn-secondary btn-sm' id='B2'>B2</button>";	
//  echo " <button class='btn btn-secondary btn-sm' id='B2'>B2</button>";	

}
}	  	
echo "<br/>";   	
}  
?>

</body>
</html>