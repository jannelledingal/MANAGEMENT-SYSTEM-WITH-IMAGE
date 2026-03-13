<?php

include "db.php";

$id = $_POST['id'];
$name = $_POST['name'];
$description = $_POST['description'];

$image = $_FILES['image']['name'];
$tmp = $_FILES['image']['tmp_name'];

if($image != ""){

move_uploaded_file($tmp,"uploads/".$image);

$query = "UPDATE products SET name='$name',description='$description',image='$image' WHERE id=$id";

}else{

$query = "UPDATE products SET name='$name',description='$description' WHERE id=$id";

}

mysqli_query($conn,$query);

header("Location: index.php");

?>