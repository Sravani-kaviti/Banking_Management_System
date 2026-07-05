CREATE DATABASE hubnet;
USE hubnet;
CREATE TABLE bank (
    Name VARCHAR(100),
    UserName VARCHAR(50) PRIMARY KEY,
    Password VARCHAR(100),
    DOB DATE,
    Address VARCHAR(255),
    Mobile_Number VARCHAR(10),
    Aadhar_no VARCHAR(12),
    Balance INT
);
CREATE TABLE `transaction` (
    Credited INT,
    Debited INT,
    UserName1 VARCHAR(50),
    Date DATETIME,
    FOREIGN KEY (UserName1) REFERENCES bank(UserName)
);
