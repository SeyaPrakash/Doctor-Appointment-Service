SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE `tblappointment` (
  `ID` int(10) NOT NULL,
  `AppointmentNumber` int(10) DEFAULT NULL,
  `Name` varchar(250) DEFAULT NULL,
  `MobileNumber` bigint(20) DEFAULT NULL,
  `Email` varchar(250) DEFAULT NULL,
  `AppointmentDate` date DEFAULT NULL,
  `AppointmentTime` time DEFAULT NULL,
  `Specialization` varchar(250) DEFAULT NULL,
  `Doctor` int(10) DEFAULT NULL,
  `Message` mediumtext DEFAULT NULL,
  `ApplyDate` timestamp NULL DEFAULT current_timestamp(),
  `Remark` varchar(250) DEFAULT NULL,
  `Status` varchar(250) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `tblappointment` (`ID`, `AppointmentNumber`, `Name`, `MobileNumber`, `Email`, `AppointmentDate`, `AppointmentTime`, `Specialization`, `Doctor`, `Message`, `ApplyDate`, `Remark`, `Status`, `UpdationDate`) VALUES
(1, 141561395, 'Arun Kumar', 9988776655, 'arun@gmail.com', '2023-01-31', '12:41:00', '2', 2, 'Ok Thanks', '2023-01-30 06:11:50', 'Cancelled due to unavailability of doctor', 'Cancelled', '2023-01-30 12:40:35'),
(2, 499219152, 'Raja', 9876543210, 'raja@gmail.com', '2023-01-31', '12:30:00', '2', 2, 'Thank You', '2023-01-30 07:08:58', 'Your appointment has been approved', 'Approved', '2023-01-30 12:34:41'),
(3, 485109480, 'Roja', 9876598765, 'roja@gmail.com', '2023-01-31', '13:00:00', '1', 1, 'Thank You', '2023-01-30 12:08:51', 'Appointment request has been approved', 'Approved', '2023-01-30 14:32:29'),
(4, 611388102, 'Jyotiga', 9876123450, 'jyotiga@gmail.com', '2023-02-01', '02:00:00', '1', 1, 'Thanks', '2023-01-31 14:31:17', NULL, NULL, NULL),
(5, 607441873, 'Arul Raj', 9123456780, 'arul@gmail.com', '2023-02-01', '20:50:00', '1', 1, 'Thank You', '2023-01-31 01:19:37', NULL, NULL, NULL),
(6, 667282012, 'Rahul Rose', 9867542310, 'rahul@gmail.com', '2023-02-05', '18:31:00', '2', 2, 'Thank You', '2023-02-02 01:48:52', 'Approved', 'Approved', '2023-02-02 07:24:25'),
(7, 599829368, 'Anitha', 9078563421, 'anitha@gmail.com', '2023-02-05', '15:20:00', '2', 2, 'Thanks', '2023-02-01 01:49:54', NULL, NULL, NULL),
(8, 940019123, 'Akash', 9786551122, 'akash@gmail.com', '2023-02-15', '12:30:00', '13', 4, 'Thanks', '2023-02-11 01:56:17', 'Your appointment has been approved.', 'Approved', '2023-02-11 01:56:55');

CREATE TABLE `tbldoctor` (
  `ID` int(5) NOT NULL,
  `FullName` varchar(250) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(250) DEFAULT NULL,
  `Specialization` varchar(250) DEFAULT NULL,
  `Password` varchar(259) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `tbldoctor` (`ID`, `FullName`, `MobileNumber`, `Email`, `Specialization`, `Password`, `CreationDate`) VALUES
(1, 'Dr. Anu Radha', 9787979798, 'anu@gmail.com', '1', 'f925916e2754e5e03f75dd58a5733251', '2023-02-09 15:01:11'),
(2, 'Dr. Pradeep', 8907654321, 'pradeep@gmail.com', '2', '202cb962ac59075b964b07152d234b70', '2023-02-09 15:01:59'),
(3, 'Dr. Arjun', 6381805111, 'arjun@gmail.com', '7', 'f925916e2754e5e03f75dd58a5733251', '2023-02-11 01:28:44'),
(4, 'Dr. Shiva', 9876543210, 'shiva123@test.com', '4', 'f925916e2754e5e03f75dd58a5733251', '2023-02-11 01:54:44');

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` date DEFAULT NULL,
  `Timing` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`, `Timing`) VALUES
(1, 'aboutus', 'About Us', '<div><font color=\"#202124\" face=\"arial, sans-serif\"><b>Our mission declares our purpose of existence as a company and our objectives.</b></font></div><div><font color=\"#202124\" face=\"arial, sans-serif\"><b><br></b></font></div><div><font color=\"#202124\" face=\"arial, sans-serif\"><b>To give every customer much more than what he/she asks for in terms of quality, selection, value for money and customer service, by understanding local tastes and preferences and innovating constantly to eventually provide an unmatched experience in jewellery shopping.</b></font></div>', NULL, NULL, NULL, ''),
(2, 'contactus', 'Contact Us', '20,Officer Line, Near CMC, Vellore (Tamil Nadu)', 'infoaboutus@gmail.com', 8807749958, NULL, '09:30 am to 6:30 pm');

CREATE TABLE `tblspecialization` (
  `ID` int(5) NOT NULL,
  `Specialization` varchar(250) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `tblspecialization` (`ID`, `Specialization`, `CreationDate`) VALUES
(1, 'Orthopedics', '2023-02-09 14:22:33'),
(2, 'Internal Medicine', '2023-02-09 14:23:42'),
(3, 'Obstetrics and Gynecology', '2023-02-09 14:24:14'),
(4, 'Dermatology', '2023-02-09 14:24:42'),
(5, 'Pediatrics', '2023-02-09 14:25:06'),
(6, 'Radiology', '2023-02-09 14:25:31'),
(7, 'General Surgery', '2023-02-09 14:25:52'),
(8, 'Ophthalmology', '2023-02-09 14:27:18'),
(9, 'Family Medicine', '2023-02-09 14:27:52'),
(10, 'Chest Medicine', '2023-02-09 14:28:32'),
(11, 'Anesthesia', '2023-02-09 14:29:12'),
(12, 'Pathology', '2023-02-09 14:29:51'),
(13, 'ENT', '2023-02-09 14:30:13');

ALTER TABLE `tblappointment`
  ADD PRIMARY KEY (`ID`);

ALTER TABLE `tbldoctor`
  ADD PRIMARY KEY (`ID`);

ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

ALTER TABLE `tblspecialization`
  ADD PRIMARY KEY (`ID`);

ALTER TABLE `tblappointment`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

ALTER TABLE `tbldoctor`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

ALTER TABLE `tblspecialization`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;