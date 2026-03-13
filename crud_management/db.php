<?php

$conn = mysqli_connect("localhost", "root", "", "management_system",3307);

if(!$conn){
  die("Connection Failed: " .mysqli_connect_error());
  }
  ?>