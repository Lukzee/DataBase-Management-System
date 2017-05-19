//for cancelling reservation

<?php

include("db.php");

if($_REQUEST['submit'] != "")

{

$customer_id = $_REQUEST['cancellation'];

mysqli_query($conn, "delete from customer where

Customer_Id=$customer_id");

$customer_id = mysqli_insert_id($conn);

header("Location: home.php");

}

?>