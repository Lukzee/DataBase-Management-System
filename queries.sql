SELECT customer_id, customer_head_name FROM customer WHERE (No_Of_Adults=1) AND (No_of_Children=1);

SELECT SSN,Fname,Mname,Lname FROM Staff WHERE (Sex= 'F' AND Lname= 'Gowda');

SELECT Name FROM Food WHERE (Price < 200) UNION (SELECT Type FROM Facility_Type WHERE (Price < 1000)) ORDER BY Name;

SELECT customer_id FROM customer WHERE month(Check_In) > 11;
 
SELECT customer_id, customer_head_name FROM customer WHERE (No_Of_Children= 0) AND month((Check_In) > 0 AND (Check_In) < 4));

SELECT Customer_Id, Customer_Head_Name FROM Customer WHERE Customer_Id IN (SELECT customer_Id FROM Customer_Food WHERE Price < 250) ORDER BY Customer_Head_Name; 

SELECT Customer_Id FROM customer_facility WHERE Facility_Id IN (SELECT Facility_Id FROM facility_type WHERE Price>1500);

SELECT customer_Head_Name, Customer_Id FROM customer WHERE customer_id IN (SELECT customer_id FROM customer_facility group by(customer_id) HAVING count(Facility_Id)>1);

SELECT * FROM customer WHERE Customer_Id IN (SELECT bill_details.Customer_Id FROM bill_details, bill WHERE bill_details.Customer_Id=bill.Customer_Id AND bill.Amount>2000);

SELECT COUNT(*) FROM Staff WHERE Sex= 'M';

SELECT * FROM `customer` WHERE Customer_Id IN (SELECT Customer_Id FROM bill WHERE Amount>3000 AND month(Date_Time)=1);

SELECT * FROM `food` WHERE Price>200 AND Price<300 ORDER BY Name;

SELECT * FROM `customer` WHERE (address='Kormangala' AND No_Of_Adults=1 AND No_Of_Children=0) ORDER BY Customer_Head_Name;

SELECT * FROM `members` WHERE age>50 ORDER BY Fname;

SELECT * FROM customer WHERE Customer_Id IN (SELECT Customer_Id FROM (bill CROSS JOIN room_type) WHERE Price=Amount);

SELECT COUNT(*) FROM customer WHERE address='JP Nagar' AND No_Of_Children=0;
 
SELECT * FROM customer WHERE Customer_Id IN (SELECT Customer_Id FROM bill WHERE month(Date_Time)>6 AND amount > 10000 );

SELECT * FROM `customer` WHERE Customer_Id IN (SELECT Customer_Id FROM bill_details WHERE Bill_Type='Room' AND Price=5000);

SELECT Room_Type.Price , Facility_Type.Price, Food.Price FROM (Room_Type JOIN Facility_Type JOIN Food) WHERE (Room_Type.Price > 500 AND Facility_Type.Price>500 AND Food.Price>300) ORDER BY room_type.Price


SELECT Customer_Id FROM customer WHERE Customer_Id IN (SELECT Customer_Id FROM customer_facility group by (Customer_Id) HAVING count(Facility_Id) > 1 ) UNION (SELECT Customer_Id FROM customer_facility WHERE Facility_Id IN (SELECT Facility_Id FROM facility_type WHERE Price>1000))

