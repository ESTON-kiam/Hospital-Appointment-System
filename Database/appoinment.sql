

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";



--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` char(50) DEFAULT NULL,
  `UserName` char(50) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Mayuri K', 'mayuri.infospace@gmail.com', 9090909090, 'mayuri.infospace@gmail.com', '21232f297a57a5a743894a0e4a801fc3', '2019-07-25 06:21:50');

--

CREATE TABLE `tblappointment` (
  `ID` int(10) NOT NULL,
  `AptNumber` varchar(80) DEFAULT NULL,
  `Name` varchar(120) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `PhoneNumber` bigint(11) DEFAULT NULL,
  `AptDate` varchar(120) DEFAULT NULL,
  `AptTime` varchar(120) DEFAULT NULL,
  `Services` varchar(120) DEFAULT NULL,
  `ApplyDate` timestamp NULL DEFAULT current_timestamp(),
  `Remark` varchar(250) NOT NULL,
  `Status` varchar(50) NOT NULL,
  `RemarkDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `tblappointment` (`ID`, `AptNumber`, `Name`, `Email`, `PhoneNumber`, `AptDate`, `AptTime`, `Services`, `ApplyDate`, `Remark`, `Status`, `RemarkDate`) VALUES
(1, '791992286', 'mayuri kale', '', 1201201201, '06/04/2021', '05 pm', '', '2021-04-06 07:14:08', 'accepted appointment', '1', '2021-04-06 07:29:51'),
(2, '679078797', 'Akash', '', 2020202020, '06/04/2021', '04PM', '', '2021-04-06 07:53:04', 'Remark for appointment', '1', '2021-04-06 07:54:57'),
(3, '393103875', 'mayuri kale', '', 9090909090, '20-04-2021', '04:20PM', '', '2021-04-20 10:52:15', '', '', '0000-00-00 00:00:00');



CREATE TABLE `tblcustomers` (
  `ID` int(10) NOT NULL,
  `Name` varchar(120) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(11) DEFAULT NULL,
  `Gender` enum('Female','Male','Transgender') DEFAULT NULL,
  `Details` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `tblcustomers` (`ID`, `Name`, `Email`, `MobileNumber`, `Gender`, `Details`, `CreationDate`, `UpdationDate`) VALUES
(1, 'mayuri kale', 'mayuri.infospace@gmail.com', 1201201201, 'Female', 'Client details here', '2021-04-06 07:02:23', NULL),
(2, 'Akash', 'akash@gmail.com', 1010101010, 'Male', 'Clients details here', '2021-04-06 07:50:29', NULL);

-- --------------------------------------------------------


CREATE TABLE `tblinvoice` (
  `id` int(11) NOT NULL,
  `Userid` int(11) DEFAULT NULL,
  `ServiceId` int(11) DEFAULT NULL,
  `BillingId` int(11) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `tblinvoice` (`id`, `Userid`, `ServiceId`, `BillingId`, `PostingDate`) VALUES
(1, 1, 6, 496923361, '2021-04-06 07:20:33'),
(2, 1, 3, 914095039, '2021-04-06 07:37:05'),
(3, 2, 6, 104585344, '2021-04-06 07:57:41'),
(4, 3, 1, 377202092, '2021-04-20 10:52:28'),
(5, 3, 2, 377202092, '2021-04-20 10:52:28'),
(6, 1, 2, 928303444, '2021-04-24 03:21:14'),
(7, 1, 3, 928303444, '2021-04-24 03:21:14');



CREATE TABLE `tblservices` (
  `ID` int(10) NOT NULL,
  `ServiceName` varchar(200) DEFAULT NULL,
  `Cost` int(10) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `tblservices` (`ID`, `ServiceName`, `Cost`, `CreationDate`) VALUES
(1, 'Special Education', 1000, '2021-04-03 11:33:47'),
(2, 'Occupational Therapy', 1655, '2021-04-03 12:36:09'),
(3, 'Physiotherapy', 1623, '2021-04-03 12:36:24'),
(4, 'Speech therapy', 2453, '2021-04-03 12:36:35'),
(5, 'Remedial Education', 3245, '2021-04-03 12:36:49'),
(6, 'acupuncture therapy', 1200, '2021-04-06 07:13:34'),
(7, 'Oxygen therapy', 1500, '2021-04-06 07:51:40');


ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);


ALTER TABLE `tblappointment`
  ADD PRIMARY KEY (`ID`);


ALTER TABLE `tblcustomers`
  ADD PRIMARY KEY (`ID`);


ALTER TABLE `tblinvoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);


ALTER TABLE `tblservices`
  ADD PRIMARY KEY (`ID`);


ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;


ALTER TABLE `tblappointment`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;


ALTER TABLE `tblcustomers`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;


ALTER TABLE `tblinvoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;


ALTER TABLE `tblservices`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

