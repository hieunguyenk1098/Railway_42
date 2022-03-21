-- Cú pháp tạo Database CREATE DATABASE ten_database
CREATE DATABASE Testing_System_Assignment_1;
use Testing_System_Assignment_1;

-- Tạo Table Department
CREATE TABLE Department(
	DepartmentID 		INT,
	Department_name 	VARCHAR(50)
);

-- Tạo bảng Position
CREATE TABLE Position (
	PositionID 			INT,
	PositionName 		VARCHAR(50)
);

-- tạo bảng Account
CREATE TABLE Account (
	AccountID 			INT,
	Email 				VARCHAR(50),
	Esername 			VARCHAR(50),
	FullName 			VARCHAR(50),
	DepartmentID 		INT,
	PositionID 			INT,
	CreateDate 			date
);

-- Tạo bảng Group
CREATE TABLE `Group` (
	GroupID 			INT,
	GroupName 			VARCHAR(50),
	CreatorID 			INT,
	CreateDate			date
);

-- Tạo bảng GroupAccount
CREATE TABLE GroupAccount (
	GroupID 			INT,
	AccountID 			INT,
	JoinDate 			date
);

-- Tạo bảng TypeQuestion
CREATE TABLE TypeQuestion (
	TypeID 				INT,
	TypeName 			VARCHAR(50)
);

-- Tạo bảng CategoryQuestion
CREATE TABLE CategoryQuestion (
	CategoryID 			INT,
	CategoryName 		VARCHAR(50)
);

-- Tạo bảng Question
CREATE TABLE Question (
	QuestionID 			INT,
	Content 			VARCHAR(50),
	CategoryID 			INT,
	TypeID 				INT,
	CreatorID 			INT,
	CreateDate 			date
);

-- Tạo bảng Answer
CREATE TABLE Answer (
AnswerID 		INT,
Content 		VARCHAR(50),
QuestionID 		INT,
isCorrect 		VARCHAR(50)
);

-- Tạo bảng Exam
CREATE TABLE Exam (
ExamID 			INT,
`Code` 			VARCHAR(20),
Title 			VARCHAR(100),
CategoryID 		INT,
Duration 		VARCHAR(10),
CreateID 		INT,
CreateDate 		date
);

-- Tạo bảng ExamQuestion
CREATE TABLE ExamQuestion (
ExamID 			INT,
QuestionID 		INT
);
