-- Simulasi
USE Bluejack_Library

--Staff pertama
--memasukkan data Staff
INSERT INTO Staff VALUES
('SF011', 'Alvian Brian', 'Male', 'Legoso Raya Street', '+628521523230', '2500000'),
('SF012', 'Nicholas Indra Wijaya', 'Male', 'Leyo tak leyot Avenue', '+6281298029809', '2250000')

--memasukkan data siswa ke library
INSERT INTO Student VALUES
('ST011', 'Aris', 'Male', 'Syahdan Street', 'Aris@gmail.com')

--staff Alvian memasukkan category buku
--memasukkan list Category buku

INSERT INTO BookCategory VALUES
('BC006', 'Comedy')

--Kemudian Staff Alvian, memasukkan category buku yang baru
--memasukkan data Buku
INSERT INTO Book VALUES
('BK013', 'Koala Kumal', '2016-01-05', '4.5', 'BC006')

--Aris ingim meminjam buku koala kumal
--dan pihak perpus memasang waktu terakhir pengembalian buku pada minggu ke 2
INSERT INTO [BorrowTrans](BorrowTransID, StudentID, StaffID, BorrowDate, ReturnDate) VALUES
('BT026','ST011','SF011','2021-12-15', '2021-12-29')

INSERT INTO [BorrowTransDetail](BorrowTransID, BookID) VALUES
('BT026','BK013')


--Aris sudah selesai meminjam buku
-- dan aris inging mengembalikan buku pada hari ke 5
UPDATE BorrowTrans
SET ReturnDate = '2021-12-20'
WHERE BorrowTransID = 'BT026'


-- Fatur ingin mendaftarkan diri sebagai pendonasi di perpustakaan 
-- Staff Nicholas memasukkan biodata donatur

INSERT INTO [Donator](DonatorID, DonatorName, DonatorGender, DonatorAddress, DonatorPhone) VALUES
('DR011', 'Fatur Brian', 'Male', 'Taman Serpong No.12','081385678907')

-- Fatur ingim mendonasikan buku "Wisata Alam Ghaib"
-- Staff Menginput Buku Donasi Barunya
INSERT INTO[Book](BookID, BookTitle, BookPublishDate, BookRating, BookCategoryID) VALUES
('BK014', 'Wisata Alam Ghaib', '2021-12-21', '4.5','BC002')
-- Staff menginput data Donasinya
INSERT INTO[DonationTrans](DonationTransID, StaffID, DonatorID, DonationDate, BookID, DonationQuantity) VALUES
('DT015', 'SF012', 'DR011', '2022-01-12', 'BK014', '35')