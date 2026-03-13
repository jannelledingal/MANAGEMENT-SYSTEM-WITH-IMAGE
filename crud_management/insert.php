<?php include "db.php";

$category_id = $_POST['category_id'];
$brand_id = $_POST['brand_id'];
$name = $_POST['name'];
$description = $_POST['description'];

$image = $_FILES['image']['name'];
$tmp = $_FILES['image']['tmp_name'];


move_uploaded_file($tmp, "uploads/".$image);

$query = "INSERT INTO products(category_id, brand_id, name, description,image)VALUES('$category_id','$brand_id','$name','$description','$image')";

mysqli_query($conn,$query);

header("Location: index.php");

?>