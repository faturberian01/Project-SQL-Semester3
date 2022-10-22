
USE Bluejack_Library 

INSERT INTO[Student] (StudentID, StudentName, StudentGender, StudentAddress, StudentEmail) VALUES
('ST001', 'Brian', 'Male', 'Soedarjo Street', 'Brian01@yahoo.com'),
('ST002', 'Daffa', 'Male', 'Bengkong Harapan Street', 'Daffa100@gmail.com'),
('ST003', 'Muhammad Faiz', 'Male', 'Sengkuang I Street No.15', 'Faizzz@yahoo.com'),
('ST004', 'Dicky Setiawan' , 'Male', 'Bengkong Harapan Utama No.1', 'DickyS@gmail.com'),
('ST005', 'Siti Anisa', 'Female', 'Dutamas II No.4', 'Siti@yahoo.com'),
('ST006', 'Darliana Putri', 'Female', 'Sengkuang Street', 'Putri001@yahoo.com'),
('ST007', 'Berlin Satria', 'Male', 'Bengkong Laut Street', 'Satriaberlin@gmail.com'),
('ST008', 'Sri Mulia', 'Female', 'Seraya Street No.40', 'Sri001@yahoo.com'),
('ST009', 'Nofrian Ade', 'Male', 'Bengkong Laut Street No.1', 'adeN001@yahoo.com'),
('ST010', 'Dedy Mulyadi', 'Male', 'Batu Besar Street', 'DedyM02@gmail.com')

INSERT INTO[Staff](StaffID, StaffName, StaffGender, StaffAddress, StaffPhone, StaffSalary) VALUES
('SF001', 'Ryan', 'Male', 'Siduarjo Street Blok F No.2', '+628521523230', '2000000'),
('SF002', 'Dinda Putri', 'Female', 'Mega Legenda Blok J No.30', '+62881638294', '2500000'),
('SF003', 'Nurul Azizah', 'Female', 'Bengkong Polisi No.20', '+62923819313', '2000000'),
('SF004', 'Vanesa Naura', 'Female', 'Barelang Villa Blok G No.40', '+62823920823', '2000000'),
('SF005', 'Arnando Aditya', 'Male', 'Grogol Blok F No.15', '+62821928374', '2000000'),
('SF006', 'Riri Nur Aisyah', 'Female', 'Sei Jodoh Blok T No.30','+628233315123', '2500000'),
('SF007', 'Farhan Hidayat', 'Male', 'Sei Panas Blok A No.1','+628213951234', '2000000'),
('SF008', 'Aisyah Putri', 'Female', 'Legenda Malaka Blok C No.7','+62924183128', '2000000'),
('SF009', 'Nelly Ningsih', 'Female', 'Nagoya Garden Blok F No.55-56','+6285233123951','2000000'),
('SF010', 'Fiqri Ardiansyah', 'Male', 'Bengkong Laut Blok D No.15','+6287316512831','2000000')

INSERT INTO[BookCategory](BookCategoryID, BookCategoryName) VALUES
('BC001', 'Fantasy'),
('BC002', 'Mystery'),
('BC003', 'Education'),
('BC004', 'Romance'),
('BC005', 'Sci-fi')

INSERT INTO[Book](BookID, BookTitle, BookPublishDate, BookStock, BookRating, BookCategoryID) VALUES
('BK001', 'Dilan 1990', '2018-09-27', '35',  '4.1','BC004'),
('BK002', 'Shadow and Bone', '2012-06-05', '90', '4.0', 'BC001'),
('BK003', 'The Revenge Of Seven', '2014-08-26','35', '4.3', 'BC001'),
('BK004', 'Misteri tiga perempat', '2019-01-14', '5', '3.7', 'BC002'),
('BK005', 'The Education of an Idealist: A Memoir', '2019-09-10', '15', '4.4', 'BC003'),
('BK006', 'The School of Life: An Emotional Education', '2019-03-07', '30', '4.3', 'BC003'),
('BK007', 'Red Rising: Kebangkitan Merah' , '2014-01-28', '25', '4.2', 'BC005'),
('BK008', 'The Fault in Our Stars', '2012-01-10', '15', '4.2', 'BC004'),
('BK009', 'Cheeky Romance', '2014-11-06', '45', '4.1', 'BC004'),
('BK010', 'Setajam Sengat (Sting)', '2016-08-16', '55', '4.9', 'BC004'),
('BK011', 'War Storm', '2018-05-15', '7', '3.9','BC001'),
('BK012', 'Tujuh Kelana', '2020-08-05', '30', '4.2', 'BC001')

INSERT INTO [Donator](DonatorID, DonatorName, DonatorGender, DonatorAddress, DonatorPhone) VALUES
('DR001', 'Indra Kenz', 'Male', 'Serpong Garden Cisuk Avenue','08131415236'),
('DR002', 'Hotman Paris', 'Male', 'Podomoro Tenjo, Purnawirawan Street', '0856661298'),
('DR003', 'Ms.Bunga Citra Lestari', 'Female', 'Pondok Merah Avenue', '082134236462'),
('DR004', 'Baim Wong', 'Male', 'Pondok Aren No.10', '081384925123'),
('DR005', 'Ms.Nia Putri' , 'Female', 'Komplek Aku Tahu Blok G No. 9', '08124829351'),
('DR006', 'Atika Lestari', 'Female', 'Bakti Jaya No.1', '08523172384'),
('DR007', 'Ms.Bunga Citra', 'Female', 'Jombang Blok A No.18', '08192523535'),
('DR008', 'Joko Prabowo', 'Male', 'Muka Kuning Blok C No.1', '08241235732'),
('DR009', 'Muhammad Usman','Male' ,'Tiban Baru Blok Q No.20', '0823817491742'),
('DR010', 'Ms.Anissa Azizah','Female' ,'Tarempa Barat Blok C No.7', '0878275813523')

INSERT INTO[DonationTrans](DonationTransID, StaffID, DonatorID, DonationDate, BookID, DonationQuantity) VALUES
('DT001', 'SF009', 'DR004', '2021-05-25', 'BK001', '20'),
('DT002', 'SF007', 'DR002', '2021-05-27', 'BK002', '10'),
('DT003', 'SF002', 'DR003', '2021-06-01', 'BK003', '40'),
('DT004', 'SF005', 'DR001', '2021-06-05', 'BK004','30'),
('DT005', 'SF002', 'DR009', '2021-07-15', 'BK005', '10'),
('DT006', 'SF001', 'DR005', '2021-07-16', 'BK006', '200'),
('DT007', 'SF006', 'DR006', '2021-07-16', 'BK007', '100'),
('DT008', 'SF004', 'DR008', '2021-07-25', 'BK008', '25'),
('DT009', 'SF003', 'DR007', '2021-08-10', 'BK009', '85'),
('DT010', 'SF005', 'DR010', '2021-08-12', 'BK010', '300'),
('DT011', 'SF010', 'DR002', '2021-08-25', 'BK011', '150'),
('DT012', 'SF001', 'DR001', '2021-09-15', 'BK012', '450'),
('DT013', 'SF001', 'DR005', '2021-11-16', 'BK002', '200'),
('DT014', 'SF008', 'DR003', '2021-12-11', 'BK006', '50')

INSERT INTO[BorrowTrans](BorrowTransID, StudentID, StaffID, BorrowDate, ReturnDate) VALUES
('BT001','ST003','SF001','2020-12-21','2021-01-04'), 
('BT002','ST002','SF004','2020-12-26','2021-01-12'), 
('BT003','ST001','SF007','2020-12-30','2021-01-17'), 
('BT004','ST005','SF002','2021-01-05','2021-01-20'), 
('BT005','ST003','SF008','2021-01-18','2021-01-25'), 
('BT006','ST010','SF010','2021-01-27','2021-02-05'), 
('BT007','ST003','SF003','2021-02-03','2021-02-15'), 
('BT008','ST005','SF003','2021-02-09','2021-02-15'), 
('BT009','ST006','SF010','2021-02-15','2021-02-25'), 
('BT010','ST003','SF005','2021-02-27','2021-03-04'), 
('BT011','ST004','SF006','2021-03-01','2021-03-08'), 
('BT012','ST002','SF009','2021-03-03','2021-03-05'), 
('BT013','ST008','SF010','2021-03-06','2021-03-10'), 
('BT014','ST006','SF009','2021-03-17','2021-03-25'), 
('BT015','ST007','SF001','2021-03-19','2021-03-22'), 
('BT016','ST009','SF008','2021-03-27','2021-04-01'), 
('BT017','ST010','SF006','2021-03-29','2021-04-05'), 
('BT018','ST002','SF007','2021-04-02','2021-04-06'), 
('BT019','ST004','SF001','2021-04-07','2021-04-10'),
('BT020','ST001','SF005','2021-04-07','2021-04-12'),
('BT021','ST006','SF003','2021-04-20','2021-04-27'),
('BT022','ST003','SF008','2021-04-25','2021-05-03'),
('BT023','ST010','SF002','2021-05-01','2021-05-08'),
('BT024','ST008','SF006','2021-05-05','2021-05-15'),
('BT025','ST005','SF003','2021-05-10','2021-05-17')

INSERT INTO[BorrowTransDetail](BorrowTransID, BookID) VALUES
('BT001','BK001'),
('BT009','BK002'),
('BT002','BK003'),
('BT002','BK004'),
('BT003','BK005'),
('BT003','BK006'),
('BT004','BK007'),
('BT004','BK008'),
('BT005','BK009'),
('BT006','BK010'),
('BT007','BK011'),
('BT008','BK012'),
('BT009','BK001'),
('BT010','BK002'),
('BT011','BK003'),
('BT012','BK010'),
('BT013','BK011'),
('BT014','BK004'),
('BT015','BK005'),
('BT016','BK009'),
('BT017','BK008'),
('BT018','BK003'),
('BT018','BK012'),
('BT019','BK006'),
('BT019','BK007')
