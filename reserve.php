//reservation and update

<?php

include("db.php");

if($_REQUEST['action']=="update")

{ $customer_id = $_REQUEST['update'];

$result = mysqli_query($conn,"select * from customer where

customer_id=$customer_id");

while($row=mysqli_fetch_assoc($result))

{ $Customer_Head_Name = $row['Customer_Head_Name'];

$Address = $row['Address'];

$Phone_No = $row['Phone_No'];

$No_Of_Adults = $row['No_Of_Adults'];

$No_Of_Children = $row['No_Of_Children'];

$CheckIn = date("Y-m-d", strtotime($row['Check_In']));

$CheckOut = date("Y-m-d", strtotime($row['Check_Out']));

}

$result = mysqli_query($conn,"select * from Customer_Facility

where customer_id=$customer_id");

while($row=mysqli_fetch_assoc($result))

{if($row['Facility_Id']=="1001")

{ $gym=1;}

if($row['Facility_Id']=="1002")

{$jacuzzi=1;}

if($row['Facility_Id']=="1003")

{$spa=1;}

if($row['Facility_Id']=="1004")

{$sauna=1;}

if($row['Facility_Id']=="1005")

{$pool=1;}

}

}

if(!$_REQUEST['action'] && $_REQUEST['submit']!="")

{

$customer_name = $_REQUEST['fullname'];

$address = $_REQUEST['address'];

$phoneno = $_REQUEST['phoneno'];

$adults = $_REQUEST['adults'];

$children = $_REQUEST['children'];

$checkin = $_REQUEST['checkin'];

$checkout = $_REQUEST['checkout'];

$room_type = $_REQUEST['room_type'];

$gym = $_REQUEST['gym'];

$jacuzzi = $_REQUEST['jacuzzi'];

$spa = $_REQUEST['spa'];

$sauna = $_REQUEST['sauna'];

$pool = $_REQUEST['pool'];

mysqli_query($conn, "INSERT INTO customer (Customer_Head_Name,

Address, Phone_No, No_Of_Adults, No_Of_Children, Check_In, Check_Out,

Booked_On) VALUES

('$customer_name','$address','$phoneno','$adults','$children','$checki

n','$checkout',NOW())");

$customer_id = mysqli_insert_id($conn);

$room_num = $return_val = 1;

while($room_num == $return_val)

{

$room_num = rand(1,100);

$return_val = check_room_number($room_num);

}

mysqli_query($conn, "insert into Customer_Room

(Customer_Id,Room_Id,Room_No,Date_Time) values

('$customer_id','$room_type','$room_num',NOW())");

if($gym != "")

{

mysqli_query($conn, "INSERT INTO Customer_Facility

(Customer_Id, Facility_Id, Date_Time) VALUES

('$customer_id','$gym',NOW())");

}

if($jacuzzi != "")

{

mysqli_query($conn, "INSERT INTO Customer_Facility

(Customer_Id, Facility_Id, Date_Time) VALUES

('$customer_id','$jacuzzi',NOW())");

}

if($spa != "")

{

mysqli_query($conn, "INSERT INTO Customer_Facility

(Customer_Id, Facility_Id, Date_Time) VALUES

('$customer_id','$spa',NOW())");

}

if($sauna != "")

{

mysqli_query($conn, "INSERT INTO Customer_Facility

(Customer_Id, Facility_Id, Date_Time) VALUES

('$customer_id','$sauna',NOW())");

}

if($pool != "")

{

mysqli_query($conn, "INSERT INTO Customer_Facility

(Customer_Id, Facility_Id, Date_Time) VALUES

('$customer_id','$pool',NOW())");

}

mysqli_query($conn, "UPDATE room_type RT SET Occupied_Rooms =

(SELECT count(*) FROM Customer_Room CR WHERE CR.Room_Id=RT.Room_Id)");

$a = mysqli_query($conn, "SELECT sum(FT.Price) AS facility_rent

FROM customer_facility CF JOIN facility_type FT ON FT.Facility_Id =

CF.Facility_Id WHERE Customer_Id = $customer_id");

$b = mysqli_query($conn,"select Price from room_type RT where

Room_Id in (select Room_Id from customer_room CR where

CR.Room_Id=RT.Room_Id and Customer_Id=$customer_id)");

while($row=mysqli_fetch_assoc($a))

{

$facility_rent=$row['facility_rent'];

}

while($row=mysqli_fetch_assoc($b))

{

$room_rent=$row['Price'];

}

$bill_total = $facility_rent + $room_rent;

mysqli_query($conn, "insert into bill(Customer_Id,

Amount,Date_Time,Billed_By) values

('$customer_id','$bill_total',NOW(),1)");

mysqli_query($conn, "insert into bill_details(Customer_Id,

Amount,Date_Time,Billed_By) values

('$customer_id','$bill_total',NOW(),1)");

$bill_id = mysqli_insert_id($conn);

mysqli_query($conn, "insert into bill_details(Bill_Type, Price,

Customer_Id, Bill_No) values

('Facility','$facility_rent','$customer_id','$bill_id')");

mysqli_query($conn, "insert into bill_details(Bill_Type, Price,

Customer_Id, Bill_No) values

('Room','$room_rent','$customer_id','$bill_id')");

header("Location: family.php?id=".$customer_id);

}

else if($_REQUEST['action']=="Save")

{

$customer_name = $_REQUEST['fullname'];

$address = $_REQUEST['address'];

$phoneno = $_REQUEST['phoneno'];

$adults = $_REQUEST['adults'];

$children = $_REQUEST['children'];

$checkin = $_REQUEST['checkin'];

$checkout = $_REQUEST['checkout'];

$room_type = $_REQUEST['room_type'];

$customer_id = $_REQUEST['id'];

$gym = $_REQUEST['gym'];

$jacuzzi = $_REQUEST['jacuzzi'];

$spa = $_REQUEST['spa'];

$sauna = $_REQUEST['sauna'];

$pool = $_REQUEST['pool'];

mysqli_query($conn, "update customer set

Customer_Head_Name='$customer_name', Address='$address',

Phone_No='$phoneno', No_Of_Adults='$adults',

No_Of_Children='$children', Check_In='$checkin', Check_Out='$checkout'

where Customer_Id=$customer_id");

mysqli_query($conn,"delete from customer_facility where

Customer_Id='$customer_id'");

if($gym != "")

{

mysqli_query($conn, "insert into Customer_Facility

(Customer_Id, Facility_Id, Date_Time) values

('$customer_id','$gym',NOW())");

}

if($jacuzzi != "")

{

mysqli_query($conn, "insert into Customer_Facility

(Customer_Id, Facility_Id, Date_Time) values

('$customer_id','$jacuzzi',NOW())");

}

if($spa != "")

{

mysqli_query($conn, "insert into Customer_Facility

(Customer_Id, Facility_Id, Date_Time) values

('$customer_id','$spa',NOW())");

}

if($sauna != "")

{

mysqli_query($conn, "insert into Customer_Facility

(Customer_Id, Facility_Id, Date_Time) values

('$customer_id','$sauna',NOW())");

}

if($pool != "")

{

mysqli_query($conn, "insert into Customer_Facility

(Customer_Id, Facility_Id, Date_Time) values

('$customer_id','$pool',NOW())");

}

header("Location: thankyou.php?id=".$customer_id);

}

function check_room_number($num)

{

$result = mysqli_query($conn,"select Room_No from customer_room

where Room_No = $num");

while($row=mysqli_fetch_assoc($result))

{

return $row['Room_No'];

}

}

?>

