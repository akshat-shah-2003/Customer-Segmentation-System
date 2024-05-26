-- create database shopbase;
use shopbase;
-- Create the users table
-- drop table users;
CREATE TABLE users (
    user_id INT AUTO_INCREMENT,
    name VARCHAR(100),
    email VARCHAR(100),
    gender VARCHAR(10),
    age INT,
    city VARCHAR(100),
    mobile_no VARCHAR(15),
    PRIMARY KEY (user_id)
);

-- Create a trigger to auto-generate user_id
DELIMITER //
CREATE TRIGGER users_trigger BEFORE INSERT ON users
FOR EACH ROW
BEGIN
    SET NEW.user_id = (SELECT COALESCE(MAX(user_id), 0) + 1 FROM users);
END;
//
DELIMITER ;

INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (1, 'Anurag Chorghade', 'chorghadeanurag@gmail.com', 'Male', 21, 'Nagpur', '8767813612');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (2, 'Aarav Gupta', 'guptaarav@gmail.com', 'Male', 19, 'Delhi', '9876543210');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (3, 'Isha Singh', 'singhisha@gmail.com', 'Female', 20, 'Mumbai', '8765432109');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (4, 'Aditi Sharma', 'sharmaaditi@gmail.com', 'Female', 22, 'Bangalore', '7654321098');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (5, 'Raj Patel', 'patelraj@gmail.com', 'Male', 18, 'Ahmedabad', '6543210987');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (6, 'Neha Reddy', 'reddyneha@gmail.com', 'Female', 23, 'Hyderabad', '5432109876');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (7, 'Arjun Kumar', 'kumararjun@gmail.com', 'Male', 21, 'Chennai', '4321098765');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (8, 'Aisha Khan', 'khanaisha@gmail.com', 'Female', 19, 'Kolkata', '3210987654');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (9, 'Vivek Pandey', 'pandeyvivek@gmail.com', 'Male', 24, 'Lucknow', '2109876543');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (10, 'Meera Gupta', 'guptameera@gmail.com', 'Female', 20, 'Jaipur', '1098765432');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (11, 'Abhishek Singh', 'singhabhishek@gmail.com', 'Male', 18, 'Pune', '9876655443');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (12, 'Aaradhya Reddy', 'reddyaaradhya@gmail.com', 'Female', 19, 'Nagpur', '8877665544');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (13, 'Rishi Patel', 'patelrishi@gmail.com', 'Male', 21, 'Delhi', '7788554433');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (14, 'Sneha Gupta', 'guptasneha@gmail.com', 'Female', 20, 'Mumbai', '6688443322');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (15, 'Kabir Kumar', 'kumarkabir@gmail.com', 'Male', 24, 'Bangalore', '5577332211');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (16, 'Ananya Sharma', 'sharmaananya@gmail.com', 'Female', 22, 'Ahmedabad', '4466221100');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (17, 'Surya Singh', 'singhsurya@gmail.com', 'Male', 19, 'Hyderabad', '3355110099');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (18, 'Ishita Reddy', 'reddyishita@gmail.com', 'Female', 20, 'Chennai', '2244009988');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (19, 'Vikram Kumar', 'kumarvikram@gmail.com', 'Male', 21, 'Kolkata', '1133998877');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (20, 'Riya Pandey', 'pandeyriya@gmail.com', 'Female', 23, 'Lucknow', '0022887766');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (21, 'Aryan Gupta', 'guptaaryan@gmail.com', 'Male', 22, 'Jaipur', '9911665522');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (22, 'Manya Singh', 'singhmanya@gmail.com', 'Female', 19, 'Pune', '9922336611');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (23, 'Rohan Reddy', 'reddyrohan@gmail.com', 'Male', 20, 'Nagpur', '8833224477');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (24, 'Ishaan Patel', 'patelishaan@gmail.com', 'Male', 18, 'Delhi', '7744113366');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (25, 'Simran Gupta', 'guptasimran@gmail.com', 'Female', 19, 'Mumbai', '6655222244');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (26, 'Amit Sharma', 'sharmaamit@gmail.com', 'Male', 21, 'Bangalore', '5566333311');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (27, 'Priya Singh', 'singhpriya@gmail.com', 'Female', 20, 'Ahmedabad', '4477553322');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (28, 'Rahul Kumar', 'kumarrahul@gmail.com', 'Male', 19, 'Hyderabad', '3388664411');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (29, 'Anjali Reddy', 'reddyanjali@gmail.com', 'Female', 18, 'Chennai', '2299775500');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (30, 'Alok Kumar', 'kumaralok@gmail.com', 'Male', 20, 'Kolkata', '1100886611');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (31, 'Sanvi Pandey', 'pandeysanvi@gmail.com', 'Female', 21, 'Lucknow', '0011227700');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (32, 'Aarav Gupta', 'guptaarav@gmail.com', 'Male', 22, 'Jaipur', '9999887766');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (33, 'Ishika Singh', 'singhishika@gmail.com', 'Female', 19, 'Pune', '9988776655');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (34, 'Yash Reddy', 'reddyyash@gmail.com', 'Male', 20, 'Nagpur', '8822334466');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (35, 'Sanya Patel', 'patelsanya@gmail.com', 'Female', 23, 'Delhi', '7711223344');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (36, 'Rajesh Gupta', 'guptarajesh@gmail.com', 'Male', 24, 'Mumbai', '6622114455');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (37, 'Shreya Sharma', 'sharmashreya@gmail.com', 'Female', 18, 'Bangalore', '5533446611');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (38, 'Pranav Singh', 'singhpranav@gmail.com', 'Male', 19, 'Ahmedabad', '3344557722');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (39, 'Diya Kumar', 'kumardiya@gmail.com', 'Female', 20, 'Hyderabad', '2255668833');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (40, 'Aarush Reddy', 'reddyaarush@gmail.com', 'Male', 21, 'Chennai', '1166779922');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (41, 'Ishani Gupta', 'guptaishani@gmail.com', 'Female', 22, 'Kolkata', '9911882266');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (42, 'Rishi Pandey', 'pandeyrishi@gmail.com', 'Male', 18, 'Lucknow', '8822661199');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (43, 'Ananya Singh', 'singhananya@gmail.com', 'Female', 19, 'Jaipur', '7711998822');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (44, 'Aryan Reddy', 'reddyaryan@gmail.com', 'Male', 20, 'Pune', '6622119933');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (45, 'Nidhi Patel', 'patelnidhi@gmail.com', 'Female', 21, 'Nagpur', '5533221199');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (46, 'Karan Gupta', 'guptakaran@gmail.com', 'Male', 22, 'Delhi', '4411998833');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (47, 'Shivangi Singh', 'singhshivangi@gmail.com', 'Female', 19, 'Mumbai', '3322119944');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (48, 'Rahul Sharma', 'sharmarahul@gmail.com', 'Male', 20, 'Bangalore', '2211998833');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (49, 'Anjali Kumar', 'kumaranjali@gmail.com', 'Female', 21, 'Ahmedabad', '1122339944');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (50, 'Rohit Reddy', 'reddyrohit@gmail.com', 'Male', 18, 'Hyderabad', '9933221144');


INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (51, 'Amitabh Khanna', 'khannaamitabh@gmail.com', 'Male', 30, 'Delhi', '9876543210');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (52, 'Sunita Rao', 'raosunita@gmail.com', 'Female', 35, 'Mumbai', '8765432109');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (53, 'Rajesh Menon', 'menonrajesh@gmail.com', 'Male', 28, 'Bangalore', '7654321098');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (54, 'Deepika Iyer', 'iyerdeepika@gmail.com', 'Female', 32, 'Chennai', '6543210987');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (55, 'Ravi Verma', 'vermaravi@gmail.com', 'Male', 26, 'Hyderabad', '5432109876');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (56, 'Reena Kapoor', 'kapoorreena@gmail.com', 'Female', 34, 'Kolkata', '4321098765');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (57, 'Ajay Rathore', 'rathoreajay@gmail.com', 'Male', 37, 'Lucknow', '3210987654');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (58, 'Sneha Desai', 'desaisneha@gmail.com', 'Female', 29, 'Jaipur', '2109876543');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (59, 'Vikrant Singhania', 'singhaniavikrant@gmail.com', 'Male', 36, 'Pune', '1098765432');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (60, 'Kritika Reddy', 'reddykritika@gmail.com', 'Female', 27, 'Nagpur', '9988776655');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (61, 'Abhinav Sharma', 'sharmaabhinav@gmail.com', 'Male', 29, 'Delhi', '8877665544');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (62, 'Neha Sinha', 'sinhaneha@gmail.com', 'Female', 33, 'Mumbai', '7788554433');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (63, 'Ankit Patel', 'patelankit@gmail.com', 'Male', 31, 'Bangalore', '6688443322');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (64, 'Priya Agarwal', 'agarwalpriya@gmail.com', 'Female', 25, 'Chennai', '5577332211');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (65, 'Rahul Mishra', 'mishra.rahul@gmail.com', 'Male', 28, 'Hyderabad', '4466221100');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (66, 'Shikha Khurana', 'khuranashikha@gmail.com', 'Female', 30, 'Kolkata', '3355110099');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (67, 'Alok Verma', 'verma.alok@gmail.com', 'Male', 36, 'Lucknow', '2244009988');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (68, 'Manisha Gupta', 'guptamanisha@gmail.com', 'Female', 32, 'Jaipur', '1133998877');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (69, 'Rohit Singh', 'singhrohit@gmail.com', 'Male', 35, 'Pune', '0022887766');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (70, 'Tanvi Reddy', 'reddytanvi@gmail.com', 'Female', 26, 'Nagpur', '9911665522');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (71, 'Karan Kapoor', 'kapoorkaran@gmail.com', 'Male', 29, 'Delhi', '9922336611');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (72, 'Smita Joshi', 'joshismita@gmail.com', 'Female', 33, 'Mumbai', '8833224477');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (73, 'Harish Gupta', 'guptaharish@gmail.com', 'Male', 30, 'Bangalore', '7744113366');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (74, 'Nisha Patel', 'patelnisha@gmail.com', 'Female', 27, 'Chennai', '6655222244');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (75, 'Vijay Sharma', 'sharmavijay@gmail.com', 'Male', 28, 'Hyderabad', '5566333311');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (76, 'Shweta Singh', 'singhshweta@gmail.com', 'Female', 36, 'Kolkata', '4477553322');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (77, 'Rakesh Gupta', 'guptarakesh@gmail.com', 'Male', 32, 'Lucknow', '3388664411');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (78, 'Jaya Verma', 'vermajaya@gmail.com', 'Female', 25, 'Jaipur', '2299775500');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (79, 'Rajeshwari Reddy', 'reddyrajeshwari@gmail.com', 'Male', 26, 'Pune', '1100886611');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (80, 'Prateek Khanna', 'khannaprateek@gmail.com', 'Male', 37, 'Nagpur', '0011227700');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (81, 'Swati Sharma', 'sharmaswati@gmail.com', 'Female', 30, 'Delhi', '9999887766');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (82, 'Vinay Kumar', 'kumarvinay@gmail.com', 'Male', 35, 'Mumbai', '9988776655');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (83, 'Anushka Singh', 'singhanushka@gmail.com', 'Female', 29, 'Bangalore', '8822334466');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (84, 'Gopal Verma', 'vermagopal@gmail.com', 'Male', 31, 'Chennai', '7711223344');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (85, 'Shivani Gupta', 'guptashivani@gmail.com', 'Female', 28, 'Hyderabad', '6622114455');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (86, 'Aryan Kumar', 'kumararyan@gmail.com', 'Male', 33, 'Kolkata', '5533446611');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (87, 'Kavya Patel', 'patelkavya@gmail.com', 'Female', 26, 'Lucknow', '3344557722');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (88, 'Siddharth Sharma', 'sharmasiddharth@gmail.com', 'Male', 27, 'Jaipur', '2255668833');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (89, 'Pooja Reddy', 'reddypooja@gmail.com', 'Female', 36, 'Pune', '1166779922');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (90, 'Rajat Gupta', 'guptarajat@gmail.com', 'Male', 30, 'Nagpur', '9999887766');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (91, 'Neha Singh', 'singhneha@gmail.com', 'Female', 31, 'Delhi', '8822661199');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (92, 'Vikas Sharma', 'sharmavikas@gmail.com', 'Male', 29, 'Mumbai', '7711998822');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (93, 'Jyoti Patel', 'pateljyoti@gmail.com', 'Female', 25, 'Bangalore', '6622119933');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (94, 'Rahul Khanna', 'khannarahul@gmail.com', 'Male', 26, 'Chennai', '5533221199');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (95, 'Shreya Singh', 'singhshreya@gmail.com', 'Female', 35, 'Hyderabad', '4411998833');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (96, 'Karan Kumar', 'kumarkaran@gmail.com', 'Male', 32, 'Kolkata', '3322119944');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (97, 'Anjali Sharma', 'sharmaanjali@gmail.com', 'Female', 28, 'Lucknow', '2211998833');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (98, 'Rajesh Patel', 'patelrajesh@gmail.com', 'Male', 29, 'Jaipur', '1122339944');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (99, 'Ananya Reddy', 'reddyananya@gmail.com', 'Female', 37, 'Pune', '9933221144');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (100, 'Amit Kumar', 'kumaramit@gmail.com', 'Male', 30, 'Nagpur', '8822113344');


INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (101, 'Vijay Kumar', 'kumarvijay@gmail.com', 'Male', 42, 'Delhi', '9876543210');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (102, 'Ritu Sharma', 'sharmaritu@gmail.com', 'Female', 45, 'Mumbai', '8765432109');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (103, 'Rajiv Singh', 'singhrajiv@gmail.com', 'Male', 51, 'Bangalore', '7654321098');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (104, 'Meenakshi Nair', 'nairmeenakshi@gmail.com', 'Female', 47, 'Chennai', '6543210987');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (105, 'Prakash Reddy', 'reddyprakash@gmail.com', 'Male', 52, 'Hyderabad', '5432109876');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (106, 'Madhu Menon', 'menonmadhu@gmail.com', 'Female', 48, 'Kolkata', '4321098765');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (107, 'Alok Desai', 'desaialok@gmail.com', 'Male', 49, 'Lucknow', '3210987654');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (108, 'Rashmi Joshi', 'joshirashmi@gmail.com', 'Female', 43, 'Jaipur', '2109876543');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (109, 'Sanjay Gupta', 'guptasanjay@gmail.com', 'Male', 46, 'Pune', '1098765432');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (110, 'Deepa Reddy', 'reddydeepa@gmail.com', 'Female', 44, 'Nagpur', '9988776655');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (111, 'Ramesh Khanna', 'khannaramesh@gmail.com', 'Male', 55, 'Delhi', '8877665544');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (112, 'Anita Singh', 'singhanita@gmail.com', 'Female', 52, 'Mumbai', '7788554433');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (113, 'Vikram Patel', 'patelvikram@gmail.com', 'Male', 50, 'Bangalore', '6688443322');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (114, 'Priya Mehta', 'mehtapriya@gmail.com', 'Female', 41, 'Chennai', '5577332211');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (115, 'Alok Sinha', 'sinhaalok@gmail.com', 'Male', 44, 'Hyderabad', '4466221100');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (116, 'Manisha Kapoor', 'kapoormanisha@gmail.com', 'Female', 53, 'Kolkata', '3355110099');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (117, 'Ajay Singhania', 'singhaniaajay@gmail.com', 'Male', 49, 'Lucknow', '2244009988');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (118, 'Sangeeta Gupta', 'guptasangeeta@gmail.com', 'Female', 47, 'Jaipur', '1133998877');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (119, 'Rahul Reddy', 'reddyrahul@gmail.com', 'Male', 42, 'Pune', '0022887766');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (120, 'Priyanka Kumar', 'kumarpriyanka@gmail.com', 'Female', 45, 'Nagpur', '9911665522');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (121, 'Anand Sharma', 'sharmaanand@gmail.com', 'Male', 53, 'Delhi', '9922336611');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (122, 'Seema Deshmukh', 'deshmukhseema@gmail.com', 'Female', 49, 'Mumbai', '8833224477');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (123, 'Rajiv Malhotra', 'malhotrarajiv@gmail.com', 'Male', 47, 'Bangalore', '7744113366');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (124, 'Indira Rao', 'raoindira@gmail.com', 'Female', 41, 'Chennai', '6655222244');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (125, 'Arun Varma', 'varmaarun@gmail.com', 'Male', 43, 'Hyderabad', '5566333311');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (126, 'Shobha Menon', 'menonshobha@gmail.com', 'Female', 51, 'Kolkata', '4477553322');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (127, 'Sanjay Shah', 'shahsanjay@gmail.com', 'Male', 50, 'Lucknow', '3388664411');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (128, 'Anita Verma', 'vermaanita@gmail.com', 'Female', 45, 'Jaipur', '2299775500');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (129, 'Rajat Gupta', 'guptarajat@gmail.com', 'Male', 48, 'Pune', '1100886611');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (130, 'Kavita Reddy', 'reddykavita@gmail.com', 'Female', 44, 'Nagpur', '0011227700');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (131, 'Anil Kumar', 'kumaranil@gmail.com', 'Male', 55, 'Delhi', '9999887766');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (132, 'Rashmi Singh', 'singhrashmi@gmail.com', 'Female', 52, 'Mumbai', '9988776655');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (133, 'Vijay Patel', 'patelvijay@gmail.com', 'Male', 50, 'Bangalore', '8822334466');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (134, 'Shilpa Agarwal', 'agarwalshilpa@gmail.com', 'Female', 41, 'Chennai', '7711223344');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (135, 'Amit Sharma', 'sharmaamit@gmail.com', 'Male', 44, 'Hyderabad', '6622114455');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (136, 'Nisha Kapoor', 'kapoornisha@gmail.com', 'Female', 53, 'Kolkata', '5533446611');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (137, 'Alok Singhania', 'singhalok@gmail.com', 'Male', 49, 'Lucknow', '3344557722');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (138, 'Neeta Gupta', 'guptaneeta@gmail.com', 'Female', 47, 'Jaipur', '2255668833');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (139, 'Rahul Reddy', 'reddyrahul@gmail.com', 'Male', 42, 'Pune', '1166779922');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (140, 'Priya Kumar', 'kumarpriya@gmail.com', 'Female', 45, 'Nagpur', '9999887766');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (141, 'Anand Sharma', 'sharmaanand@gmail.com', 'Male', 53, 'Delhi', '8822661199');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (142, 'Seema Deshmukh', 'deshmukhseema@gmail.com', 'Female', 49, 'Mumbai', '7711998822');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (143, 'Rajiv Malhotra', 'malhotrarajiv@gmail.com', 'Male', 47, 'Bangalore', '6622119933');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (144, 'Indira Rao', 'raoindira@gmail.com', 'Female', 41, 'Chennai', '5533221199');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (145, 'Arun Varma', 'varmaarun@gmail.com', 'Male', 43, 'Hyderabad', '4411998833');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (146, 'Shobha Menon', 'menonshobha@gmail.com', 'Female', 51, 'Kolkata', '3322119944');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (147, 'Sanjay Shah', 'shahsanjay@gmail.com', 'Male', 50, 'Lucknow', '2211998833');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (148, 'Anita Verma', 'vermaanita@gmail.com', 'Female', 45, 'Jaipur', '1122339944');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (149, 'Rajat Gupta', 'guptarajat@gmail.com', 'Male', 48, 'Pune', '9933221144');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (150, 'Kavita Reddy', 'reddykavita@gmail.com', 'Female', 44, 'Nagpur', '8822113344');



INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (151, 'Arnav Deshpande', 'deshpandearnav@gmail.com', 'Male', 15, 'Nashik', '9876543210');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (152, 'Jiya Mehta', 'mehtajiya@gmail.com', 'Female', 18, 'Udaipur', '8765432109');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (153, 'Vikram Prasad', 'prasadvikram@gmail.com', 'Male', 22, 'Amritsar', '7654321098');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (154, 'Amrita Iyer', 'iyeramrita@gmail.com', 'Female', 25, 'Surat', '6543210987');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (155, 'Aditya Singh', 'singhaditya@gmail.com', 'Male', 32, 'Indore', '5432109876');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (156, 'Priya Sharma', 'sharmapriya@gmail.com', 'Female', 28, 'Agra', '4321098765');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (157, 'Raj Patel', 'patelraj@gmail.com', 'Male', 35, 'Bhopal', '3210987654');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (158, 'Neha Singh', 'singhneha@gmail.com', 'Female', 40, 'Visakhapatnam', '2109876543');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (159, 'Karan Gupta', 'guptakaran@gmail.com', 'Male', 45, 'Thane', '1098765432');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (160, 'Isha Khanna', 'khannai@gmail.com', 'Female', 50, 'Patna', '9988776655');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (161, 'Aryan Kapoor', 'kapooraryan@gmail.com', 'Male', 55, 'Guwahati', '8822334466');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (162, 'Pooja Reddy', 'reddypooja@gmail.com', 'Female', 60, 'Shillong', '7711223344');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (163, 'Rajat Kumar', 'kumarrajat@gmail.com', 'Male', 20, 'Gangtok', '6622114455');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (164, 'Nisha Joshi', 'joshinisha@gmail.com', 'Female', 24, 'Kochi', '5533446611');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (165, 'Kartik Gupta', 'guptakartik@gmail.com', 'Male', 28, 'Coimbatore', '3344557722');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (166, 'Sneha Patel', 'patelsneha@gmail.com', 'Female', 30, 'Shimla', '2255668833');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (167, 'Alok Reddy', 'reddyalok@gmail.com', 'Male', 35, 'Port Blair', '1166779922');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (168, 'Shreya Sharma', 'sharmashreya@gmail.com', 'Female', 38, 'Itanagar', '9999887766');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (169, 'Rahul Verma', 'vermarahul@gmail.com', 'Male', 42, 'Agartala', '9988776655');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (170, 'Anjali Singh', 'singhanjali@gmail.com', 'Female', 47, 'Gangtok', '8822661199');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (171, 'Vivek Shah', 'shahvivek@gmail.com', 'Male', 52, 'Kochi', '7711998822');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (172, 'Riya Sinha', 'sinhariya@gmail.com', 'Female', 48, 'Coimbatore', '6622119933');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (173, 'Ashok Reddy', 'reddyashok@gmail.com', 'Male', 55, 'Shimla', '5533221199');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (174, 'Nandini Sharma', 'sharmanandini@gmail.com', 'Female', 53, 'Port Blair', '4411998833');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (175, 'Rahul Verma', 'vermarahul@gmail.com', 'Male', 42, 'Itanagar', '3322119944');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (176, 'Sneha Patel', 'patelsneha@gmail.com', 'Female', 30, 'Agartala', '2211998833');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (177, 'Alok Reddy', 'reddyalok@gmail.com', 'Male', 35, 'Gangtok', '1122339944');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (178, 'Shreya Sharma', 'sharmashreya@gmail.com', 'Female', 38, 'Kochi', '9933221144');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (179, 'Rahul Verma', 'vermarahul@gmail.com', 'Male', 42, 'Coimbatore', '8822113344');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (180, 'Sneha Patel', 'patelsneha@gmail.com', 'Female', 30, 'Shimla', '7711223344');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (181, 'Alok Reddy', 'reddyalok@gmail.com', 'Male', 35, 'Port Blair', '6622114455');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (182, 'Shreya Sharma', 'sharmashreya@gmail.com', 'Female', 38, 'Itanagar', '5533446611');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (183, 'Rahul Verma', 'vermarahul@gmail.com', 'Male', 42, 'Agartala', '3344557722');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (184, 'Sneha Patel', 'patelsneha@gmail.com', 'Female', 30, 'Gangtok', '2255668833');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (185, 'Alok Reddy', 'reddyalok@gmail.com', 'Male', 35, 'Kochi', '1166779922');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (186, 'Shreya Sharma', 'sharmashreya@gmail.com', 'Female', 38, 'Coimbatore', '9999887766');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (187, 'Rahul Verma', 'vermarahul@gmail.com', 'Male', 42, 'Shimla', '9988776655');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (188, 'Sneha Patel', 'patelsneha@gmail.com', 'Female', 30, 'Port Blair', '8822661199');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (189, 'Alok Reddy', 'reddyalok@gmail.com', 'Male', 35, 'Kochi', '7711998822');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (190, 'Shreya Sharma', 'sharmashreya@gmail.com', 'Female', 38, 'Shimla', '6622119933');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (191, 'Rahul Verma', 'vermarahul@gmail.com', 'Male', 42, 'Port Blair', '5533221199');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (192, 'Sneha Patel', 'patelsneha@gmail.com', 'Female', 30, 'Itanagar', '4411998833');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (193, 'Alok Reddy', 'reddyalok@gmail.com', 'Male', 35, 'Agartala', '3322119944');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (194, 'Shreya Sharma', 'sharmashreya@gmail.com', 'Female', 38, 'Shimla', '2211998833');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (195, 'Rahul Verma', 'vermarahul@gmail.com', 'Male', 42, 'Itanagar', '1122339944');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (196, 'Sneha Patel', 'patelsneha@gmail.com', 'Female', 30, 'Agartala', '9933221144');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (197, 'Alok Reddy', 'reddyalok@gmail.com', 'Male', 35, 'Shimla', '8822113344');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (198, 'Shreya Sharma', 'sharmashreya@gmail.com', 'Female', 38, 'Port Blair', '7711223344');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (199, 'Rahul Verma', 'vermarahul@gmail.com', 'Male', 42, 'Kochi', '6622114455');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (200, 'Sneha Patel', 'patelsneha@gmail.com', 'Female', 30, 'Coimbatore', '5533446611');

INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (201, 'John Smith', 'johnsmith@example.com', 'Male', 22, 'Mumbai', '1234567890');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (202, 'Emily Johnson', 'emilyjohnson@example.com', 'Female', 19, 'Delhi', '2345678901');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (203, 'Michael Williams', 'michaelwilliams@example.com', 'Male', 20, 'Bangalore', '3456789012');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (204, 'Olivia Brown', 'oliviabrown@example.com', 'Female', 18, 'Hyderabad', '4567890123');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (205, 'William Jones', 'williamjones@example.com', 'Male', 21, 'Chennai', '5678901234');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (206, 'Sophia Garcia', 'sophiagarcia@example.com', 'Female', 20, 'Kolkata', '6789012345');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (207, 'James Martinez', 'jamesmartinez@example.com', 'Male', 19, 'Pune', '7890123456');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (208, 'Isabella Rodriguez', 'isabellarodriguez@example.com', 'Female', 22, 'Jaipur', '8901234567');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (209, 'Benjamin Hernandez', 'benjaminhernandez@example.com', 'Male', 20, 'Ahmedabad', '9012345678');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (210, 'Mia Lopez', 'mialopez@example.com', 'Female', 18, 'Lucknow', '0123456789');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (211, 'Alexander Gonzales', 'alexandergonzales@example.com', 'Male', 21, 'Nagpur', '9876543210');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (212, 'Charlotte Perez', 'charlotteperez@example.com', 'Female', 19, 'Kanpur', '8765432109');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (213, 'Daniel Sanchez', 'danielsanchez@example.com', 'Male', 22, 'Nashik', '7654321098');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (214, 'Amelia Torres', 'ameliatorres@example.com', 'Female', 20, 'Udaipur', '6543210987');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (215, 'Matthew Ramirez', 'matthewramirez@example.com', 'Male', 18, 'Amritsar', '5432109876');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (216, 'Ella Flores', 'ellaflores@example.com', 'Female', 21, 'Surat', '4321098765');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (217, 'Jackson Cruz', 'jacksoncruz@example.com', 'Male', 20, 'Indore', '3210987654');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (218, 'Avery Diaz', 'averydiaz@example.com', 'Female', 19, 'Agra', '2109876543');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (219, 'Sofia Stewart', 'sofiastewart@example.com', 'Male', 22, 'Bhopal', '1098765432');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (220, 'Logan Gomez', 'logangomez@example.com', 'Female', 20, 'Visakhapatnam', '9988776655');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (221, 'Aria Vargas', 'ariavargas@example.com', 'Male', 18, 'Thane', '8877665544');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (222, 'Lucas Reyes', 'lucasreyes@example.com', 'Female', 21, 'Patna', '7766554433');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (223, 'Scarlett Morales', 'scarlettmorales@example.com', 'Male', 20, 'Guwahati', '6655443322');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (224, 'Liam Gutierrez', 'liamgutierrez@example.com', 'Female', 19, 'Shillong', '5544332211');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (225, 'Grace Jimenez', 'gracejimenez@example.com', 'Male', 22, 'Gangtok', '4433221100');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (226, 'Noah Perry', 'noahperry@example.com', 'Female', 20, 'Kochi', '3322110099');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (227, 'Chloe Fox', 'chloefox@example.com', 'Male', 18, 'Coimbatore', '2211009988');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (228, 'Ethan Hayes', 'ethanhayes@example.com', 'Female', 21, 'Shimla', '1100998877');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (229, 'Madison Knight', 'madisonknight@example.com', 'Male', 20, 'Port Blair', '9988776655');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (230, 'Liam Gutierrez', 'liamgutierrez@example.com', 'Female', 19, 'Itanagar', '8877665544');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (231, 'Ava Ford', 'avaford@example.com', 'Male', 22, 'Agartala', '7766554433');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (232, 'Oliver Stephens', 'oliverstephens@example.com', 'Female', 20, 'Shimla', '6655443322');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (233, 'Emma May', 'emmamay@example.com', 'Male', 18, 'Port Blair', '5544332211');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (234, 'Charlotte Cruz', 'charlottecruz@example.com', 'Female', 21, 'Kochi', '4433221100');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (235, 'William Hayes', 'williamhayes@example.com', 'Male', 20, 'Coimbatore', '3322110099');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (236, 'Evelyn Fox', 'evelynfox@example.com', 'Female', 19, 'Shimla', '2211009988');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (237, 'Mason Knight', 'masonknight@example.com', 'Male', 22, 'Port Blair', '1100998877');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (238, 'Harper Ford', 'harperford@example.com', 'Female', 20, 'Itanagar', '9988776655');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (239, 'Sophia Stephens', 'sophiastephens@example.com', 'Male', 18, 'Agartala', '8877665544');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (240, 'Liam May', 'liammay@example.com', 'Female', 21, 'Shimla', '7766554433');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (241, 'Olivia Cruz', 'oliviacruz@example.com', 'Male', 20, 'Port Blair', '6655443322');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (242, 'Noah Hayes', 'noahhayes@example.com', 'Female', 19, 'Kochi', '5544332211');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (243, 'Chloe Ford', 'chloeford@example.com', 'Male', 22, 'Coimbatore', '4433221100');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (244, 'Ethan Knight', 'ethanknight@example.com', 'Female', 20, 'Shimla', '3322110099');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (245, 'Madison Fox', 'madisonfox@example.com', 'Male', 18, 'Port Blair', '2211009988');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (246, 'Liam Knight', 'liamknight@example.com', 'Female', 21, 'Itanagar', '1100998877');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (247, 'Ava Ford', 'avaford@example.com', 'Male', 20, 'Agartala', '9988776655');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (248, 'Oliver Fox', 'oliverfox@example.com', 'Female', 19, 'Shimla', '8877665544');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (249, 'Emma Knight', 'emmaknight@example.com', 'Male', 22, 'Port Blair', '7766554433');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (250, 'Charlotte Fox', 'charlottefox@example.com', 'Female', 20, 'Kochi', '6655443322');


INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (251, 'Elijah Perez', 'elijahperez@example.com', 'Male', 30, 'Mumbai', '1234567890');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (252, 'Evelyn Russell', 'evelynrussell@example.com', 'Female', 28, 'Delhi', '2345678901');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (253, 'Gabriel Griffin', 'gabrielgriffin@example.com', 'Male', 35, 'Bangalore', '3456789012');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (254, 'Harper Diaz', 'harperdiaz@example.com', 'Female', 32, 'Hyderabad', '4567890123');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (255, 'Henry Price', 'henryprice@example.com', 'Male', 38, 'Chennai', '5678901234');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (256, 'Isabella Scott', 'isabellascott@example.com', 'Female', 37, 'Kolkata', '6789012345');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (257, 'Jack Carter', 'jackcarter@example.com', 'Male', 33, 'Pune', '7890123456');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (258, 'Jackson Morris', 'jacksonmorris@example.com', 'Female', 27, 'Jaipur', '8901234567');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (259, 'James Bell', 'jamesbell@example.com', 'Male', 29, 'Ahmedabad', '9012345678');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (260, 'Liam Howard', 'liamhoward@example.com', 'Female', 26, 'Lucknow', '0123456789');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (261, 'Logan Peterson', 'loganpeterson@example.com', 'Male', 34, 'Nagpur', '9876543210');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (262, 'Lucas Cooper', 'lucascooper@example.com', 'Female', 35, 'Kanpur', '8765432109');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (263, 'Mason Ward', 'masonward@example.com', 'Male', 36, 'Nashik', '7654321098');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (264, 'Matthew Cox', 'matthewcox@example.com', 'Female', 38, 'Udaipur', '6543210987');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (265, 'Michael Powell', 'michaelpowell@example.com', 'Male', 39, 'Amritsar', '5432109876');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (266, 'Noah Long', 'noahlong@example.com', 'Female', 36, 'Surat', '4321098765');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (267, 'Oliver Ross', 'oliverross@example.com', 'Male', 30, 'Indore', '3210987654');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (268, 'Olivia Hayes', 'oliviahayes@example.com', 'Female', 31, 'Agra', '2109876543');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (269, 'Ryan Jenkins', 'ryanjenkins@example.com', 'Male', 28, 'Bhopal', '1098765432');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (270, 'Samuel Bell', 'samuelbell@example.com', 'Female', 27, 'Visakhapatnam', '9988776655');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (271, 'Sofia Gonzales', 'sofiagonzales@example.com', 'Male', 36, 'Thane', '8877665544');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (272, 'Sophia Alexander', 'sophiaalexander@example.com', 'Female', 29, 'Patna', '7766554433');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (273, 'William Gray', 'williamgray@example.com', 'Male', 32, 'Guwahati', '6655443322');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (274, 'Ava Hughes', 'avahughes@example.com', 'Female', 30, 'Shillong', '5544332211');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (275, 'Oliver Price', 'oliverprice@example.com', 'Male', 35, 'Gangtok', '4433221100');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (276, 'Aria Collins', 'ariacollins@example.com', 'Female', 38, 'Kochi', '3322110099');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (277, 'Harper Wright', 'harperwright@example.com', 'Male', 37, 'Coimbatore', '2211009988');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (278, 'Elijah Green', 'elijahgreen@example.com', 'Female', 36, 'Shimla', '1100998877');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (279, 'Grace Ward', 'graceward@example.com', 'Male', 38, 'Port Blair', '9988776655');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (280, 'James Nelson', 'jamesnelson@example.com', 'Female', 39, 'Itanagar', '8877665544');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (281, 'John Parker', 'johnparker@example.com', 'Male', 30, 'Agartala', '7766554433');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (282, 'Liam Collins', 'liamcollins@example.com', 'Female', 29, 'Shimla', '6655443322');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (283, 'Lucas Wood', 'lucaswood@example.com', 'Male', 26, 'Port Blair', '5544332211');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (284, 'Matthew Flores', 'matthewflores@example.com', 'Female', 27, 'Kochi', '4433221100');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (285, 'Michael White', 'michaelwhite@example.com', 'Male', 28, 'Coimbatore', '3322110099');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (286, 'Noah Clark', 'noahclark@example.com', 'Female', 25, 'Shimla', '2211009988');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (287, 'Oliver Hall', 'oliverhall@example.com', 'Male', 27, 'Port Blair', '1100998877');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (288, 'Olivia Allen', 'oliviaallen@example.com', 'Female', 28, 'Kochi', '9988776655');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (289, 'Ryan Lewis', 'ryanlewis@example.com', 'Male', 30, 'Coimbatore', '8877665544');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (290, 'Samuel Young', 'samuelyoung@example.com', 'Female', 32, 'Shimla', '7766554433');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (291, 'Sophia King', 'sophiaking@example.com', 'Male', 33, 'Port Blair', '6655443322');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (292, 'William Hernandez', 'williamhernandez@example.com', 'Female', 26, 'Kochi', '5544332211');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (293, 'Ava Lee', 'avalee@example.com', 'Male', 28, 'Coimbatore', '4433221100');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (294, 'Harper Adams', 'harperadams@example.com', 'Female', 29, 'Shimla', '3322110099');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (295, 'James Wright', 'jameswright@example.com', 'Male', 30, 'Port Blair', '2211009988');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (296, 'John Clark', 'johnclark@example.com', 'Female', 35, 'Kochi', '1100998877');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (297, 'Liam Moore', 'liammoore@example.com', 'Male', 37, 'Coimbatore', '9988776655');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (298, 'Lucas Hill', 'lucashill@example.com', 'Female', 36, 'Shimla', '8877665544');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (299, 'Matthew Garcia', 'matthewgarcia@example.com', 'Male', 25, 'Port Blair', '7766554433');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (300, 'Michael Martinez', 'michaelmartinez@example.com', 'Female', 26, 'Kochi', '6655443322');


INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (301, 'Ethan Stewart', 'ethanstewart@example.com', 'Male', 45, 'Mumbai', '1234567890');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (302, 'Ava Carter', 'avacarter@example.com', 'Female', 43, 'Delhi', '2345678901');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (303, 'Daniel Mitchell', 'danielmitchell@example.com', 'Male', 50, 'Bangalore', '3456789012');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (304, 'Emma Perez', 'emmaperez@example.com', 'Female', 52, 'Hyderabad', '4567890123');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (305, 'Mia Wright', 'miawright@example.com', 'Male', 49, 'Chennai', '5678901234');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (306, 'Elijah Taylor', 'elijahtaylor@example.com', 'Female', 41, 'Kolkata', '6789012345');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (307, 'Sophia Thomas', 'sophiathomas@example.com', 'Male', 47, 'Pune', '7890123456');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (308, 'Alexander Mitchell', 'alexandermitchell@example.com', 'Female', 48, 'Jaipur', '8901234567');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (309, 'Mason Lopez', 'masonlopez@example.com', 'Male', 41, 'Ahmedabad', '9012345678');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (310, 'William King', 'williamking@example.com', 'Female', 43, 'Lucknow', '0123456789');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (311, 'James Turner', 'jamesturner@example.com', 'Male', 52, 'Nagpur', '9876543210');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (312, 'Benjamin Martinez', 'benjaminmartinez@example.com', 'Female', 55, 'Kanpur', '8765432109');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (313, 'Evelyn Young', 'evelynyoung@example.com', 'Male', 60, 'Nashik', '7654321098');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (314, 'Ethan Lee', 'ethanlee@example.com', 'Female', 59, 'Udaipur', '6543210987');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (315, 'Logan Harris', 'loganharris@example.com', 'Male', 45, 'Amritsar', '5432109876');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (316, 'Michael Wright', 'michaelwright@example.com', 'Female', 46, 'Surat', '4321098765');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (317, 'Olivia Lewis', 'olivialewis@example.com', 'Male', 50, 'Indore', '3210987654');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (318, 'Charlotte Turner', 'charlotteturner@example.com', 'Female', 49, 'Agra', '2109876543');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (319, 'David Hernandez', 'davidhernandez@example.com', 'Male', 43, 'Bhopal', '1098765432');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (320, 'Emily Carter', 'emilycarter@example.com', 'Female', 41, 'Visakhapatnam', '9988776655');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (321, 'Jackson Rodriguez', 'jacksonrodriguez@example.com', 'Male', 45, 'Thane', '8877665544');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (322, 'Joseph Garcia', 'josephgarcia@example.com', 'Female', 52, 'Patna', '7766554433');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (323, 'Liam Johnson', 'liamjohnson@example.com', 'Male', 49, 'Guwahati', '6655443322');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (324, 'Lucas Hernandez', 'lucashernandez@example.com', 'Female', 47, 'Shillong', '5544332211');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (325, 'Mason Martinez', 'masonmartinez@example.com', 'Male', 46, 'Gangtok', '4433221100');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (326, 'Michael Martinez', 'michaelmartinez@example.com', 'Female', 41, 'Kochi', '3322110099');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (327, 'Noah Smith', 'noahsmith@example.com', 'Male', 42, 'Coimbatore', '2211009988');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (328, 'Oliver Jones', 'oliverjones@example.com', 'Female', 43, 'Shimla', '1100998877');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (329, 'Olivia Taylor', 'oliviataylor@example.com', 'Male', 45, 'Port Blair', '9988776655');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (330, 'Sophia Brown', 'sophiabrown@example.com', 'Female', 48, 'Kochi', '8877665544');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (331, 'William Martinez', 'williammartinez@example.com', 'Male', 50, 'Shimla', '7766554433');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (332, 'Ava Johnson', 'avajohnson@example.com', 'Female', 55, 'Port Blair', '6655443322');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (333, 'Benjamin Rodriguez', 'benjaminrodriguez@example.com', 'Male', 60, 'Kochi', '5544332211');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (334, 'Charlotte White', 'charlottewhite@example.com', 'Female', 59, 'Coimbatore', '4433221100');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (335, 'David Smith', 'davidsmith@example.com', 'Male', 52, 'Shimla', '3322110099');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (336, 'Emily Hernandez', 'emilyhernandez@example.com', 'Female', 49, 'Port Blair', '2211009988');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (337, 'Isabella Johnson', 'isabellajohnson@example.com', 'Male', 45, 'Kochi', '1100998877');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (338, 'James Brown', 'jamesbrown@example.com', 'Female', 43, 'Shimla', '9988776655');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (339, 'Liam Martinez', 'liammartinez@example.com', 'Male', 41, 'Port Blair', '8877665544');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (340, 'Mason Davis', 'masondavis@example.com', 'Female', 42, 'Kochi', '7766554433');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (341, 'Michael Rodriguez', 'michaelrodriguez@example.com', 'Male', 45, 'Shimla', '6655443322');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (342, 'Olivia Moore', 'oliviamoore@example.com', 'Female', 48, 'Port Blair', '5544332211');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (343, 'Olivia Hernandez', 'oliviahernandez@example.com', 'Male', 50, 'Kochi', '4433221100');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (344, 'Sophia Wilson', 'sophiawilson@example.com', 'Female', 52, 'Shimla', '3322110099');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (345, 'William Brown', 'williambrown@example.com', 'Male', 55, 'Port Blair', '2211009988');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (346, 'Ava Lee', 'avalee@example.com', 'Female', 59, 'Kochi', '1100998877');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (347, 'Benjamin Martinez', 'benjaminmartinez@example.com', 'Male', 60, 'Shimla', '9988776655');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (348, 'Charlotte Wilson', 'charlottewilson@example.com', 'Female', 61, 'Port Blair', '8877665544');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (349, 'David Rodriguez', 'davidrodriguez@example.com', 'Male', 62, 'Kochi', '7766554433');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (350, 'Emily White', 'emilywhite@example.com', 'Female', 63, 'Shimla', '6655443322');



INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (351, 'Aarav Reddy', 'aaravreddy@example.com', 'Male', 22, 'Varanasi', '1234567890');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (352, 'Aaradhya Singh', 'aaradhyasingh@example.com', 'Female', 25, 'Bhubaneswar', '2345678901');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (353, 'Advait Patel', 'advaitpatel@example.com', 'Male', 28, 'Ranchi', '3456789012');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (354, 'Amaira Gupta', 'amairagupta@example.com', 'Female', 30, 'Kota', '4567890123');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (355, 'Aniket Kumar', 'aniketkumar@example.com', 'Male', 32, 'Dehradun', '5678901234');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (356, 'Anvi Sharma', 'anvisharma@example.com', 'Female', 35, 'Gwalior', '6789012345');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (357, 'Arnav Mishra', 'arnavmishra@example.com', 'Male', 38, 'Allahabad', '7890123456');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (358, 'Aryan Singh', 'aryansingh@example.com', 'Female', 40, 'Ajmer', '8901234567');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (359, 'Avani Sharma', 'avanisharma@example.com', 'Male', 18, 'Jodhpur', '9012345678');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (360, 'Aditya Verma', 'adityaverma@example.com', 'Female', 20, 'Vadodara', '0123456789');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (361, 'Alisha Gupta', 'alishagupta@example.com', 'Male', 22, 'Bhopal', '9876543210');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (362, 'Ananya Patel', 'ananyapatel@example.com', 'Female', 25, 'Patiala', '8765432109');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (363, 'Aman Kumar', 'amankumar@example.com', 'Male', 28, 'Panaji', '7654321098');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (364, 'Anisha Sharma', 'anishasharma@example.com', 'Female', 30, 'Pondicherry', '6543210987');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (365, 'Arjun Singh', 'arjunsingh@example.com', 'Male', 32, 'Bhavnagar', '5432109876');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (366, 'Anushka Reddy', 'anushkareddy@example.com', 'Female', 35, 'Kolhapur', '4321098765');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (367, 'Ayush Gupta', 'ayushgupta@example.com', 'Male', 38, 'Diu', '3210987654');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (368, 'Bhavya Singh', 'bhavyasingh@example.com', 'Female', 40, 'Sangli', '2109876543');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (369, 'Chirag Patel', 'chiragpatel@example.com', 'Male', 18, 'Dhanbad', '9988776655');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (370, 'Divya Sharma', 'divyasharma@example.com', 'Female', 20, 'Gaya', '8877665544');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (371, 'Dhruv Verma', 'dhruvverma@example.com', 'Male', 22, 'Nashik', '7766554433');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (372, 'Esha Gupta', 'eshagupta@example.com', 'Female', 25, 'Haldwani', '6655443322');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (373, 'Farhan Khan', 'farhankhan@example.com', 'Male', 28, 'Roorkee', '5544332211');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (374, 'Gayatri Patel', 'gayatripatel@example.com', 'Female', 30, 'Nanded', '4433221100');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (375, 'Gaurav Sharma', 'gauravsharma@example.com', 'Male', 32, 'Belgaum', '3322110099');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (376, 'Ishaan Gupta', 'ishaangupta@example.com', 'Female', 35, 'Bilaspur', '2211009988');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (377, 'Ishika Singh', 'ishikasingh@example.com', 'Male', 38, 'Nizamabad', '1100998877');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (378, 'Jai Sharma', 'jaisharma@example.com', 'Female', 40, 'Haridwar', '9012345678');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (379, 'Kabir Singh', 'kabirsingh@example.com', 'Male', 18, 'Palghar', '0123456789');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (380, 'Kavya Patel', 'kavyapatel@example.com', 'Female', 20, 'Bharuch', '1234567890');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (381, 'Karan Sharma', 'karansharma@example.com', 'Male', 22, 'Aurangabad', '2345678901');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (382, 'Kritika Gupta', 'kritikagupta@example.com', 'Female', 25, 'Kottayam', '3456789012');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (383, 'Lakshya Singh', 'lakshyasingh@example.com', 'Male', 28, 'Mathura', '4567890123');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (384, 'Mahi Patel', 'mahipatel@example.com', 'Female', 30, 'Bokaro', '5678901234');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (385, 'Manan Sharma', 'manansharma@example.com', 'Male', 32, 'Gandhinagar', '6789012345');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (386, 'Naina Gupta', 'nainagupta@example.com', 'Female', 35, 'Thanjavur', '7890123456');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (387, 'Naman Singh', 'namansingh@example.com', 'Male', 38, 'Tirupati', '8901234567');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (388, 'Neha Patel', 'nehapatel@example.com', 'Female', 40, 'Warangal', '9012345678');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (389, 'Nikita Sharma', 'nikitasharma@example.com', 'Male', 18, 'Gorakhpur', '0123456789');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (390, 'Parth Gupta', 'parthgupta@example.com', 'Female', 20, 'Daman', '1234567890');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (391, 'Pooja Singh', 'poojasingh@example.com', 'Male', 22, 'Raipur', '2345678901');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (392, 'Pranav Patel', 'pranavpatel@example.com', 'Female', 25, 'Salem', '3456789012');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (393, 'Raghav Sharma', 'raghavsharma@example.com', 'Male', 28, 'Tirunelveli', '4567890123');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (394, 'Raj Gupta', 'rajgupta@example.com', 'Female', 30, 'Chittoor', '5678901234');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (395, 'Rajat Singh', 'rajatsingh@example.com', 'Male', 32, 'Kollam', '6789012345');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (396, 'Riya Patel', 'riyapatel@example.com', 'Female', 35, 'Malappuram', '7890123456');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (397, 'Rohan Sharma', 'rohansharma@example.com', 'Male', 38, 'Nagercoil', '8901234567');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (398, 'Rudra Gupta', 'rudragupta@example.com', 'Female', 40, 'Thanjavur', '9012345678');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (399, 'Saisha Singh', 'saishasingh@example.com', 'Male', 18, 'Bhatpara', '0123456789');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (400, 'Samarth Patel', 'samarthpatel@example.com', 'Female', 20, 'Bardhaman', '1234567890');



INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (401, 'Sanya Sharma', 'sanyasharma@example.com', 'Female', 30, 'Jamnagar', '1234567890');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (402, 'Shaurya Gupta', 'shauryagupta@example.com', 'Male', 32, 'Kolhapur', '2345678901');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (403, 'Siya Patel', 'siyapatel@example.com', 'Female', 35, 'Raipur', '3456789012');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (404, 'Sarthak Sharma', 'sarthaksharma@example.com', 'Male', 38, 'Nashik', '4567890123');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (405, 'Tanisha Singh', 'tanishasingh@example.com', 'Female', 40, 'Ujjain', '5678901234');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (406, 'Trisha Gupta', 'trishagupta@example.com', 'Male', 42, 'Jhansi', '6789012345');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (407, 'Udaya Patel', 'udayapatel@example.com', 'Female', 45, 'Bhilai', '7890123456');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (408, 'Vanshika Sharma', 'vanshikasharma@example.com', 'Male', 48, 'Kakinada', '8901234567');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (409, 'Veer Singh', 'veersingh@example.com', 'Female', 50, 'Cuttack', '9012345678');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (410, 'Zara Gupta', 'zaragupta@example.com', 'Male', 30, 'Bhagalpur', '0123456789');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (411, 'Aadil Patel', 'aadilpatel@example.com', 'Female', 32, 'Tiruppur', '1234567890');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (412, 'Aditi Sharma', 'aditisharma@example.com', 'Male', 35, 'Ujjain', '2345678901');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (413, 'Alok Singh', 'aloksingh@example.com', 'Female', 38, 'Kollam', '3456789012');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (414, 'Amaya Gupta', 'amayagupta@example.com', 'Male', 40, 'Belagavi', '4567890123');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (415, 'Anika Patel', 'anikapatel@example.com', 'Female', 42, 'Jabalpur', '5678901234');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (416, 'Arya Sharma', 'aryasharma@example.com', 'Male', 45, 'Jammu', '6789012345');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (417, 'Aryan Singh', 'aryansingh@example.com', 'Female', 48, 'Bikaner', '7890123456');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (418, 'Avni Gupta', 'avnigupta@example.com', 'Male', 50, 'Muzaffarpur', '8901234567');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (419, 'Ayaan Patel', 'ayaanpatel@example.com', 'Female', 30, 'Siliguri', '9012345678');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (420, 'Bhavya Sharma', 'bhavyasharma@example.com', 'Male', 32, 'Bilaspur', '0123456789');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (421, 'Chhavi Gupta', 'chhavigupta@example.com', 'Female', 35, 'Guntur', '1234567890');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (422, 'Daksh Singh', 'dakshsingh@example.com', 'Male', 38, 'Bhagalpur', '2345678901');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (423, 'Devika Patel', 'devikapatel@example.com', 'Female', 40, 'Jodhpur', '3456789012');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (424, 'Eva Sharma', 'evasharma@example.com', 'Male', 42, 'Dewas', '4567890123');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (425, 'Fiza Gupta', 'fizagupta@example.com', 'Female', 45, 'Bikaner', '5678901234');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (426, 'Gautam Singh', 'gautamsingh@example.com', 'Male', 48, 'Jammu', '6789012345');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (427, 'Hansa Patel', 'hansapatel@example.com', 'Female', 50, 'Rajkot', '7890123456');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (428, 'Ira Gupta', 'iragupta@example.com', 'Male', 30, 'Amravati', '8901234567');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (429, 'Inaya Sharma', 'inayasharma@example.com', 'Female', 32, 'Pune', '9012345678');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (430, 'Jai Patel', 'jaipatel@example.com', 'Male', 35, 'Gaya', '0123456789');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (431, 'Janvi Gupta', 'janvigupta@example.com', 'Female', 38, 'Durgapur', '1234567890');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (432, 'Karan Singh', 'karansingh@example.com', 'Male', 40, 'Ajmer', '2345678901');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (433, 'Kaira Patel', 'kairapatel@example.com', 'Female', 42, 'Bhavnagar', '3456789012');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (434, 'Krish Sharma', 'krishsharma@example.com', 'Male', 45, 'Bhopal', '4567890123');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (435, 'Kyra Gupta', 'kyragupta@example.com', 'Female', 48, 'Dharwad', '5678901234');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (436, 'Laksh Singh', 'lakshsingh@example.com', 'Male', 50, 'Jabalpur', '6789012345');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (437, 'Mahi Patel', 'mahipatel@example.com', 'Female', 30, 'Siliguri', '7890123456');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (438, 'Manan Sharma', 'manansharma@example.com', 'Male', 32, 'Bilaspur', '8901234567');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (439, 'Mannat Gupta', 'mannatgupta@example.com', 'Female', 35, 'Guntur', '9012345678');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (440, 'Navya Singh', 'navyasingh@example.com', 'Male', 38, 'Ratlam', '0123456789');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (441, 'Nikunj Patel', 'nikunjpatel@example.com', 'Female', 40, 'Bharuch', '1234567890');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (442, 'Nikita Sharma', 'nikitasharma@example.com', 'Male', 42, 'Dehradun', '2345678901');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (443, 'Nimrat Gupta', 'nimratgupta@example.com', 'Female', 45, 'Ujjain', '3456789012');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (444, 'Om Singh', 'omsingh@example.com', 'Male', 48, 'Jammu', '4567890123');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (445, 'Pari Patel', 'paripatel@example.com', 'Female', 50, 'Nasik', '5678901234');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (446, 'Pranav Sharma', 'pranavsharma@example.com', 'Male', 30, 'Jodhpur', '6789012345');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (447, 'Priya Gupta', 'priyagupta@example.com', 'Female', 32, 'Puducherry', '7890123456');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (448, 'Rachit Singh', 'rachitsingh@example.com', 'Male', 35, 'Shimla', '8901234567');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (449, 'Radhika Patel', 'radhikapatel@example.com', 'Female', 38, 'Guntur', '9012345678');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (450, 'Ria Sharma', 'riasharma@example.com', 'Male', 40, 'Dhanbad', '0123456789');



INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (451, 'Vivaan Gupta', 'vivaangupta@example.com', 'Male', 18, 'Panaji', '1234567890');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (452, 'Yamini Sharma', 'yaminisharma@example.com', 'Female', 21, 'Bilaspur', '2345678901');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (453, 'Zaid Patel', 'zaidpatel@example.com', 'Male', 24, 'Bhuj', '3456789012');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (454, 'Zoya Singh', 'zoyasingh@example.com', 'Female', 27, 'Kottayam', '4567890123');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (455, 'Aarav Gupta', 'aaravgupta@example.com', 'Male', 30, 'Kanpur', '5678901234');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (456, 'Aaradhya Sharma', 'aaradhyasharma@example.com', 'Female', 33, 'Kota', '6789012345');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (457, 'Advik Patel', 'advikpatel@example.com', 'Male', 36, 'Patiala', '7890123456');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (458, 'Alisha Singh', 'alishasingh@example.com', 'Female', 39, 'Chandigarh', '8901234567');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (459, 'Aryan Gupta', 'aryangupta@example.com', 'Male', 42, 'Jalandhar', '9012345678');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (460, 'Anvi Sharma', 'anvisharma@example.com', 'Female', 45, 'Ludhiana', '0123456789');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (461, 'Arjun Patel', 'arjunpatel@example.com', 'Male', 48, 'Mathura', '1234567890');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (462, 'Avani Singh', 'avanisingh@example.com', 'Female', 51, 'Nashik', '2345678901');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (463, 'Bhavya Gupta', 'bhavyagupta@example.com', 'Male', 54, 'Noida', '3456789012');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (464, 'Chahat Sharma', 'chahatsharma@example.com', 'Female', 57, 'Pune', '4567890123');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (465, 'Darsh Patel', 'darshpatel@example.com', 'Male', 60, 'Raipur', '5678901234');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (466, 'Diya Singh', 'diyasingh@example.com', 'Female', 63, 'Surat', '6789012345');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (467, 'Eshan Gupta', 'eshangupta@example.com', 'Male', 65, 'Udaipur', '7890123456');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (468, 'Fatima Patel', 'fatimapatel@example.com', 'Female', 18, 'Varanasi', '8901234567');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (469, 'Gaurav Sharma', 'gauravsharma@example.com', 'Male', 21, 'Vijayawada', '9012345678');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (470, 'Gitanjali Singh', 'gitanjalisingh@example.com', 'Female', 24, 'Visakhapatnam', '0123456789');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (471, 'Harsh Gupta', 'harshgupta@example.com', 'Male', 27, 'Warangal', '1234567890');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (472, 'Ishika Patel', 'ishikapatel@example.com', 'Female', 30, 'Agartala', '2345678901');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (473, 'Ishant Sharma', 'ishantsharma@example.com', 'Male', 33, 'Ahmedabad', '3456789012');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (474, 'Jasmine Singh', 'jasminesingh@example.com', 'Female', 36, 'Allahabad', '4567890123');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (475, 'Kabir Gupta', 'kabirgupta@example.com', 'Male', 39, 'Amritsar', '5678901234');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (476, 'Komal Patel', 'komalpatel@example.com', 'Female', 42, 'Aurangabad', '6789012345');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (477, 'Lakshay Sharma', 'lakshaysharma@example.com', 'Male', 45, 'Bareilly', '7890123456');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (478, 'Manvi Singh', 'manvisingh@example.com', 'Female', 48, 'Belgaum', '8901234567');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (479, 'Mohit Gupta', 'mohitgupta@example.com', 'Male', 51, 'Bhagalpur', '9012345678');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (480, 'Neha Sharma', 'nehasharma@example.com', 'Female', 54, 'Bhiwandi', '0123456789');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (481, 'Nishant Patel', 'nishantpatel@example.com', 'Male', 57, 'Bhubaneswar', '1234567890');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (482, 'Ojasvi Singh', 'ojasvisingh@example.com', 'Female', 60, 'Bikaner', '2345678901');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (483, 'Parth Gupta', 'parthgupta@example.com', 'Male', 63, 'Chandrapur', '3456789012');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (484, 'Pihu Sharma', 'pihusharma@example.com', 'Female', 65, 'Cuttack', '4567890123');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (485, 'Pranay Patel', 'pranaypatel@example.com', 'Male', 18, 'Daman', '5678901234');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (486, 'Prisha Singh', 'prishasingh@example.com', 'Female', 21, 'Darjeeling', '6789012345');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (487, 'Rajat Gupta', 'rajatgupta@example.com', 'Male', 24, 'Davangere', '7890123456');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (488, 'Rhea Sharma', 'rheasharma@example.com', 'Female', 27, 'Dewas', '8901234567');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (489, 'Reyansh Patel', 'reyanshpatel@example.com', 'Male', 30, 'Dibrugarh', '9012345678');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (490, 'Riya Singh', 'riyasingh@example.com', 'Female', 33, 'Dindigul', '0123456789');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (491, 'Rohan Gupta', 'rohangupta@example.com', 'Male', 36, 'Durg', '1234567890');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (492, 'Saisha Sharma', 'saishasharma@example.com', 'Female', 39, 'Erode', '2345678901');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (493, 'Samar Patel', 'samarpatel@example.com', 'Male', 42, 'Faridabad', '3456789012');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (494, 'Samaira Singh', 'samairasingh@example.com', 'Female', 45, 'Gangtok', '4567890123');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (495, 'Shlok Gupta', 'shlokgupta@example.com', 'Male', 48, 'Gaya', '5678901234');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (496, 'Shreya Sharma', 'shreyasharma@example.com', 'Female', 51, 'Ghaziabad', '6789012345');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (497, 'Shivam Patel', 'shivampatel@example.com', 'Male', 54, 'Gorakhpur', '7890123456');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (498, 'Sneha Singh', 'snehasingh@example.com', 'Female', 57, 'Guntur', '8901234567');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (499, 'Sparsh Gupta', 'sparshgupta@example.com', 'Male', 60, 'Guwahati', '9012345678');
INSERT INTO users (user_id, name, email, gender, age, city, mobile_no) VALUES (500, 'Tanishka Sharma', 'tanishkasharma@example.com', 'Female', 63, 'Gwalior', '0123456789');

CREATE TABLE cart (
    cart_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    product_id INT,
    added_on TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    add_to_cart_count INT,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);
DELIMITER //

CREATE TRIGGER cart_before_insert_trigger
BEFORE INSERT ON cart
FOR EACH ROW
BEGIN
    SET NEW.cart_id = (SELECT IFNULL(MAX(cart_id), 0) + 1 FROM cart);
END//

DELIMITER ;
-- Query for viewing cart data
SELECT cart_id, user_id, product_id, added_on, add_to_cart_count
FROM cart;

-- Create or replace the view user_cart_data
CREATE OR REPLACE VIEW user_cart_data AS
SELECT 
    u.user_id,
    u.email,
    u.age,
    u.gender,
    u.city,
    c.product_id,
    SUM(c.add_to_cart_count) AS total_items_in_cart
FROM 
    users u
LEFT JOIN 
    cart c ON u.user_id = c.user_id
WHERE
    c.product_id IS NOT NULL
GROUP BY 
    u.user_id, c.product_id
ORDER BY
    u.user_id;

-- Insert random data into the cart table
INSERT INTO cart (user_id, product_id, added_on, add_to_cart_count)
SELECT
    user_id,
    FLOOR(RAND() * 10) + 1 AS product_id,
    '2024-04-06 22:28:00' AS added_on,
    FLOOR(RAND() * 10) + 1 AS add_to_cart_count
FROM 
    users
ORDER BY
    RAND(); -- Randomize the order of users

select * from users;
select * from cart;
select * from user_cart_data;
-- DELETE FROM cart
-- WHERE user_id IN (
--     SELECT user_id
--     FROM (
--         SELECT user_id
--         FROM user_cart_data
--         ORDER BY user_id DESC
--         LIMIT 50
--     ) AS last_50_users
-- );user_cart_data


