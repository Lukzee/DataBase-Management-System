<?php

error_reporting(0);

$servername = "localhost";

$username = "root";

$password = "";

$database = "purple_haze";

// Create connection

$conn = new mysqli($servername, $username, $password, $database);

// Check connection

if ($conn->connect_error) {

die("Connection failed: " . $conn->connect_error);

}

?>