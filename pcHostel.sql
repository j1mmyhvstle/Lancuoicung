create database hostel
go

use hostel
go

CREATE TABLE Student (
id INT IDENTITY(1, 1) PRIMARY KEY,
mobile BIGINT NOT NULL,
lname VARCHAR(250) NOT NULL,
fname VARCHAR(250) NOT NULL,
mname VARCHAR(250) NOT NULL,
email VARCHAR(250) NOT NULL,
paddress VARCHAR(250) NOT NULL,
college VARCHAR(250) NOT NULL,
idproof VARCHAR(250) NOT NULL,
roomNo VARCHAR(250) NOT NULL,
living VARCHAR(250) DEFAULT 'Yes',
username VARCHAR(250) NOT NULL,
password VARCHAR(250) NOT NULL,
FOREIGN KEY (roomNo) REFERENCES rooms(roomNo)
)
-- CREATE TABLE ROOMS
CREATE TABLE rooms (
roomNo VARCHAR(250) not null PRIMARY KEY,
roomStatus VARCHAR(250) NOT NULL,
Booked VARCHAR(150) DEFAULT 'No'
)

drop table rooms
-- CREATE TABLE FEES
CREATE TABLE fees (
mobileNo BIGINT NOT NULL,
fmonth VARCHAR(60) NOT NULL,
amount BIGINT NOT NULL
)


-- CREATE TABLE NEWEMPLOYEE
CREATE TABLE newEmployee (
id INT IDENTITY(1, 1) PRIMARY KEY,
emobile BIGINT NOT NULL,
ename VARCHAR(250) NOT NULL,
efname VARCHAR(250) NOT NULL,
emname VARCHAR(250) NOT NULL,
eemail VARCHAR(250) NOT NULL,
epaddress VARCHAR(250) NOT NULL,
eidproof VARCHAR(250) NOT NULL,
edesignation VARCHAR(250) NOT NULL,
working VARCHAR(50) DEFAULT 'Yes'
)

CREATE TABLE Feedback (
FeedbackID INT PRIMARY KEY IDENTITY,
StudentID INT,
Name NVARCHAR(100),
FeedbackText NVARCHAR(MAX),
FeedbackDate DATE,

);
ALTER TABLE Feedback
ADD TieuDe NVARCHAR(100),
NoiDungPhanHoi NVARCHAR(500);

INSERT INTO Feedback (StudentID, Name, FeedbackText, FeedbackDate)
VALUES (1, N'John Doe', N'This is a sample feedback.', '2024-03-20');

INSERT INTO Feedback (StudentID, Name, FeedbackText, FeedbackDate)
VALUES (2, N'John Doe', N'This is a sample feedback.', '2024-03-20');

-- CREATE TABLE EMPLOYEESALARY
CREATE TABLE employeeSalary (
mobileNo BIGINT NOT NULL,
fmonth VARCHAR(60) NOT NULL,
amount BIGINT NOT NULL
)
CREATE TABLE Users -- bang nay co ve khong can thiet nua
(
Username_ nvarchar(50) NOT NULL,
Password_ nvarchar(50) NOT NULL,
)
INSERT INTO Users (Username_, Password_)
VALUES ('admin','admin')

CREATE TABLE ThongBao
(
ID INT PRIMARY KEY IDENTITY,
Tieude NVARCHAR(100),
Noidung NVARCHAR(500),
Ghichu NVARCHAR(200),
LienLac NVARCHAR(50)
);

create table bus
(
bienso VARCHAR(50) NOT NULL,
machuyen VARCHAR(50) PRIMARY KEY NOT NULL,
gioxuatphat DATETIME NOT NULL,
)

insert into bus(bienso, machuyen, gioxuatphat)
values
('abc1','100', '2024-03-26 11:45:00' ),
('abc2','130', '2024-03-26 12:45:00' ),
('abc3','120', '2024-03-26 4:45:00' ),
('abc4','110', '2024-03-26 5:45:00' );


INSERT INTO Student (mobile, fname, mname, lname, email, paddress, college, idproof, roomNo, living, username, password)
VALUES
(1234567890, 'Nguyen', 'Anh', 'Tuan', 'anhtuan@gmail.com', '123 Le Loi, Q1, HCM', 'DHQG', '123456789', '101', 'Yes', 1001, 'password1'),
(2345678901, 'Tran', 'Bao', 'Ngoc', 'baongoc@gmail.com', '456 Tran Hung Dao, Q5, HCM', 'UIT', '234567890', '102', 'Yes', 1002, 'password2'),
(3456789012, 'Le', 'Thi', 'Mai', 'thimai@gmail.com', '789 Nguyen Trai, Q1, HCM', 'HUTECH', '345678901', '103', 'Yes', 1003, 'password3'),
(4567890123, 'Pham', 'Van', 'Minh', 'vanminh@gmail.com', '321 Le Lai, Q1, HCM', 'NEU', '456789012', '104', 'Yes', 1004, 'password4'),
(5678901234, 'Ho', 'Thi', 'Trang', 'thitrang@gmail.com', '654 Tran Phu, Q5, HCM', 'FTU', '567890123', '105', 'Yes', 1005, 'password5'),
(5678901011, 'Ho', 'Thi', 'Thuy', 'thithuy@gmail.com', '654 Tran Phu, Q5, HCM', 'FTU', '5678901234', '105', 'Yes', 1006, 'password6');

INSERT INTO rooms (roomNo, roomStatus, Booked)
VALUES
('101', 'Available', 'No'),
('102', 'Available', 'No'),
('103', 'Available', 'No'),
('104', 'Available', 'No'),
('105', 'Available', 'No');

-- test truy van ban cung phong
select CONCAT_WS(' ',fname,mname,lname) as 'Họ và tên', email as 'Email', mobile as 'SĐT' from Student where roomNo = '105';


-- database này có một vài chỗ khác với database của Bình, lưu ý lưu ý
