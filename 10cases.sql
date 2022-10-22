USE Bluejack_Library

--1
SELECT  
	StudentName, 
	StudentAddress,
	bt.BorrowTransID As BorrowTransactionID,
	bt.BorrowDate As BorrowTransactionDate,
	COUNT(btd.BookID) As [Number of Books Borrowed] 
	FROM Student st 
	JOIN BorrowTrans bt ON st.StudentID = bt.StudentID
	JOIN BorrowTransDetail btd ON bt.BorrowTransID = btd.BorrowTransID
	WHERE YEAR(bt.BorrowDate) = 2020 AND st.StudentAddress LIKE '%street'
	GROUP BY StudentName, StudentAddress, bt.BorrowTransID, bt.BorrowDate

--2
SELECT 
    BookTitle,
    MONTH(BookPublishDate) As [Book Publish Date], 
    BookCategoryName,
    SUM(DonationQuantity) As [Total Quantity] 
FROM Book b
    JOIN DonationTrans dt ON b.BookID = dt.BookID
    JOIN BookCategory bc ON bc.BookCategoryID = b.BookCategoryID
    WHERE BookCategoryName LIKE '%y' AND MONTH(BookPublishDate) % 2 = 1
	GROUP BY BookTitle, BookPublishDate, BookCategoryName

--3
SELECT 
	bt.BorrowTransID,
	FORMAT(bt.BorrowDate,'dd MMM yyyy') As [Borrow Transaction],
	st.StudentName,
	COUNT(btd.BookID) As [Books Boorrowed],
	AVG(b.BookRating) As [Avarage Book Rating] 
	FROM Student st
	JOIN BorrowTrans bt ON bt.StudentID = st.StudentID
	JOIN BorrowTransDetail btd ON btd.BorrowTransID = bt.BorrowTransID
	JOIN Book b ON b.BookID = btd.BookID
	WHERE st.StudentEmail LIKE'%@gmail%' AND b.BookRating >= 4.0
	GROUP BY bt.BorrowTransID, bt.BorrowDate, st.StudentName

--4
SELECT
    DonatorName,
    FORMAT (DonationDate, 'MMM dd, yyyy') DonationDate,
    DonationQuantity,
    BookRating As [Average Rating]
	FROM DonationTrans dt
    JOIN Donator d ON dt.DonatorID = d.DonatorID
    JOIN Book b ON b.BookID = dt.BookID
	WHERE DonatorName LIKE 'Ms.%' 
    AND DonatorGender LIKE 'Female'    
    AND DAY(DonationDate) <= 14

--5
SELECT 
    DonatorName,
    DonationDate,
    StaffName,
    StaffGender,
    'Rp.' + CAST(StaffSalary As varchar(255)) As StaffSalary          
    FROM Donator d 
    JOIN DonationTrans dt ON dt.DonatorID = d.DonatorID
    JOIN Staff s ON s.StaffID = dt.StaffID,
	(
		SELECT AVG(StaffSalary) As TotalAVGSalary
		FROM Staff
	)As A
    WHERE DonatorName LIKE '% %' AND StaffSalary >= A.TotalAVGSalary
    ORDER BY CONVERT(datetime,DonationDate,103)DESC;

--6
SELECT
    DonationTransID,
    REPLACE(BookTitle,' ','') AS BookTitle,
    CAST(BookRating * 20 as varchar(255)) + ' %' AS BookRating,
    DonationQuantity,
    DonatorPhone
    FROM DonationTrans dt
    JOIN Donator d ON d.DonatorID = dt.DonatorID
    JOIN Book b ON b.BookID = dt.BookID,
	(
		SELECT AVG(BookRating) As AVGBOOK
		FROM Book
	)As A
    WHERE BookRating >= A.AVGBOOK AND LEN(DonatorAddress) >= 15

-- 7
SELECT 
	bt.BorrowTransID, 
	BorrowDate, ReturnDate, 
	BookTitle, 
	'Star ' + CAST(BookRating As varchar(255)) As BookRating, 
	BookCategoryName
	FROM BorrowTrans bt
	JOIN BorrowTransDetail btd on bt.BorrowTransID = btd.BorrowTransID
	JOIN Book b on btd.BookID = b.BookID
	JOIN BookCategory bc on b.BookCategoryID = bc.BookCategoryID,
	(SELECT min(BookRating) as minrating FROM Book) x,
	(SELECT max(BookRating) as maxrating FROM Book) y
	WHERE BookRating = x.minrating or BookRating = y.maxrating AND BookStock > 10
	ORDER BY BorrowTransID asc;


--8
SELECT 
	CASE WHEN std.StudentGender = 'Male' THEN CONCAT('Mr. ', std.[StudentName]) ELSE CONCAT('Mrs. ', std.[StudentName]) END AS [Student Name],
	 REPLACE(StudentEmail,'.com','') AS StudentEmail  
	-- COUNT(BorrowTransID) AS Books Borrowed,
	FROM Student std
	JOIN BorrowTrans bt on std.StudentID = bt.StudentID
	JOIN Staff stf on bt.StaffID = stf.StaffID,
	(SELECT avg(StaffSalary) as average FROM Staff) x
	WHERE (StudentGender like 'Male' and StaffSalary > x.average)  or (StudentGender like 'Female' and StaffSalary < x.average)

--9
CREATE VIEW ViewDonationDetail AS
SELECT 
    DonatorName,
	COUNT(DonationTransID) As [Donation Transaction],
    AVG(DonationQuantity) AS [Average Quantity]
	FROM Donator d
    JOIN DonationTrans dt ON dt.DonatorID = d.DonatorID
    WHERE d.DonatorAddress LIKE '%Street' 
	OR DonatorAddress LIKE '%Avenue' 
	GROUP BY DonatorName
	HAVING COUNT(DonationTransID) >= 1

--10
CREATE VIEW ViewStudentBorrowingData AS
SELECT DISTINCT
	StudentName,
	COUNT(bt.BorrowTransID) As [Borrow Transaction],
	AVG(DATEDIFF(DAY, bt.BorrowDate, bt.ReturnDate)) As [Average Duration] 
	FROM Student s
	JOIN BorrowTrans bt ON bt.StudentID = s.StudentID
	WHERE s.StudentGender LIKE  'Male' AND s.StudentEmail LIKE '%yahoo%'
	GROUP BY s.StudentName