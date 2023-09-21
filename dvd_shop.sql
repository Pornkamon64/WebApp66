-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 21, 2023 at 10:54 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dvd shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `actors`
--

CREATE TABLE `actors` (
  `aid` int(5) NOT NULL,
  `aname` varchar(30) NOT NULL,
  `alastname` varchar(30) NOT NULL,
  `nationality` varchar(30) NOT NULL,
  `movie` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Actors detail';

--
-- Dumping data for table `actors`
--

INSERT INTO `actors` (`aid`, `aname`, `alastname`, `nationality`, `movie`) VALUES
(10054, 'jennifer', 'lawrence', 'america', 10045),
(10055, 'leonardo', 'diCaprio', 'america', 10025),
(10056, 'ju-hyeon', 'seo', 'korean', 10029),
(10057, 'simon', ' leviev', 'israeli', 10026),
(10058, 'louis', 'partridge', 'British', 10046);

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `mbid` int(5) NOT NULL,
  `mbname` varchar(30) NOT NULL,
  `mblastname` varchar(30) NOT NULL,
  `telephone` varchar(11) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='members detail';

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`mbid`, `mbname`, `mblastname`, `telephone`, `email`) VALUES
(10001, 'mary', 'coconut', '0967463525', 'mary1234@gmail.com'),
(10002, 'mark', 'jijonee', '0987654324', 'mark1234@gmail.com'),
(10003, 'deny', 'wannee', '0647186894', 'deny1234@gmail.com'),
(10004, 'fixxy', 'samaku', '0650654970', 'fixxy1234@gmail.com'),
(10005, 'bendy', 'momolady', '0967463525', 'bendy1234@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `pdid` int(5) NOT NULL,
  `pdname` varchar(50) NOT NULL,
  `price` int(10) NOT NULL,
  `date` date NOT NULL,
  `detail` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='product detail';

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`pdid`, `pdname`, `price`, `date`, `detail`) VALUES
(10025, 'Don’t Look Up', 120, '2021-10-20', 'หนังดีหนังดังและเป็นหนังที่เป็นที่พูดถึงจากทั้งต่างประเทศ รวมไปถึงประเทศไทยเราเอง ที่เนื้อเรื่องหลักๆ ของหนังเรื่องนี้จะเป็นการเสียดสีสังคมแบบตลกร้ายของอเมริกา ซึ่งเรื่องนี้มีพากย์ไทยด้วย แถมยังแปลไทยออกมาได้สนุกสมจริงอีกต่างหาก และก็ไม่ต้องกลัวว่าไม่รู้เรื่อการเมืองจะดูไม่รู้เรื่อง เพราะตัวหนังก็ทำออกมาให้ดูและเข้าใจได้ง่ายๆ อยู่แล้ว โดยเรื่องนี้ได้พูดถึงนักดาราศาสตร์ ดร.แรนดัล มินดี้ พร้อมกับนักศึกษาอย่าง เคต ดิบิแอสกี้ ที่ไปเจอกับดาวเคราะห์น้อยที่กำลังจะพุ่งเข้ามาชนโลกในอีก 6 เดือน แต่เมื่อพวกเขานำเรื่องนี้ไปเสนอประธานาธิบดี และออกแถลงข่าวออกไปกลับไม่มีใครเชื่อเลย แถมยังไม่ค่อยได้รับความสนใจอีก พวกเขาจึงต้องพยายามบอกถึงปัญหาเหล่านี้ และกลายมาเป็นเรื่องที่เสียดสีสังคมนั่นเอง สิ่งที่ทำให้หนังเรื่องนี้น่าสนใจและเล่นบทได้อยู่หมัด ก็คือเหล่านักแสดงดังและแสดงได้เก่งมากๆ ด้วย'),
(10026, 'The Tinder Swindler: สิบแปดมงกุฎทินเดอร์', 139, '2022-06-16', 'หนังที่ถูกพูดถึงกันเป็นวงกว้าง ซึ่งเรื่องนี้เป็นหนัง Netflix 2022 ที่ค่อนข้างจะเป็นแนวหนังสารคดีนิดหน่อย แต่ถ้าได้ลองดูแล้ว ก็จะสามารถเข้าใจเนื้อหาเหมือนกับดูหนังจริงๆ ได้เลย โดยเรื่องนี้จะเป็นการตีแผ่เรื่องราวของการแฝงตัว และใช้ Social Media เป็นเครื่องมือทำให้คนที่หลงเชื่อถูกหลอก เรื่องราวแบบนี้ความจริงก็สามารถเห็นได้จากข่าว และเรื่องจากเหตุการณ์ที่เกิดขึ้นจริงอยู่เสมอ แต่เรื่องนี้จะพูดถึงสาวสองคนคือ ซีซิล และ เพอร์นิลลา ที่ใช้ Tinder (แอพหาคู่ชื่อดัง) และปัดขวาไปเจอกับ  ไซมอน เลวีฟ ที่บอกว่าตัวเองนั้นเป็นลูกของมหาเศรษฐี และพาเธอไปพบเจอกับสังคมความหรูหราอยู่สบาย ที่ทั้งสองคนไม่เคยเจอมาก่อน และคิดว่าเจอเข้ากับเจ้าชายเข้าแล้วประมาณนั้นเลย แต่ความจริงเบื้องหลังสิ่งเหล่านี้ ยังมีเรื่องเลวร้ายที่ทั้งสองยังไม่รู้ว่าจะต้องเจอกับอะไรบ้าง'),
(10029, 'Love and Leashes: รักจูงรัก', 139, '2022-09-04', 'หนัง Netflix 2022 ของเกาหลีที่กำลังได้รับความนิยมสูงมากในตอนนี้ ซึ่งเรื่องนี้ต้องบอกก่อนว่าเป็นหนังเรท 18+ ที่มีเนื้อหาเกี่ยวกับเรื่องเพศ แต่ก็ไม่ได้ถึงขั้นโป๊เปลือยอะไรขนาดนั้นนะ จากที่ลองดูแล้วก็สนุกปนตลกมากจริงๆ โดยเรื่องนี้เป็นเรื่องเกี่ยวกับ ชองจีอู พนักงานสาวสวยที่มีหน้าที่การงานดี ทำงานเก่ง แต่ว่าเธอก็เบื่อๆ กับชีวิตที่เป็นอยู่ จนกระทั่งไปพบความลับเรื่องรสนิยมทางเพศของ ชองจีฮู รองผู้จัดการคนใหม่เข้า เพราะว่าหยิบของที่ส่งมาผิด แต่เมื่อเธอรู้ความลับและช่วยปกปิดเรื่องนี้เอาไว้ ทำให้ชองจีฮูอยากให้เธอมาเป็นนายหญิงของเขา จากตอนแรกที่เธอปฏิเสธ จนนานๆ เข้าเธอก็เริ่มอยากจะรู้ว่าจะเป็นอย่างไร จนทั้งคู่ได้ลองสัมผัสประการณ์การเป็นนายหญิง และการเป็นทาสกับรสนิยมทางเพศแบบเจ็บปวดในสัญญา 3 เดือน จากความคิดตอนแรกเพียงคู่ขาก็เริ่มเปลี่ยนเป็นความรักขึ้นเรื่อยๆ เรื่องจะเป็นยังไงต้องไปลองดูกันเอาเองนะ'),
(10045, 'American Hustle', 125, '2013-12-13', 'สร้างจากเรื่องจริงทีเกิดขึ้นในยุค 80 เรื่องราวของนักต้มตุ๋นอัจฉริยะ ไอร์วิ่ง โรเซนเฟล์ด (รับบทโดย คริสเตียน เบล)ที่ต้องทำงานร่วมกับเจ้าหน้าที่ FBI ริชชี ดีมาโซ (รับบทโดย แบรดลีย์ คูเปอร์) เพื่อเปิดโปงและกำจัดการคอรัปชั่นให้หมดไปในปฏิบัติการที่มีชื่อว่า ‘ABSCAM’ ซึ่งจะทำให้พวกเขาต้องเข้าไปพัวพันกับโลกมืด ทั้งมาเฟีย การพนัน เหล่านักการเมืองที่ชั่วร้าย และแผนลับแผนลวงที่สุดเหลือเชื่อ'),
(10046, 'Enola Holmes: เอโนลา โฮล์มส์', 125, '2022-06-24', 'หนังที่ตัวแอดชอบมากอีกหนึ่งเรื่องของ Netflix ที่เกี่ยวกับนักสืบชื่อดังในตำนานอย่าง เชอร์ล็อก โฮล์มส์ แต่ว่าหนัง Netflix 2022 เรื่องนี้ไม่ได้เล่าถึงตัวของเชอร์ล็อก โฮล์มส์ โดยตรง แต่ว่าจะเป็นการเล่าเรื่องของน้องสาวของเขานั่นก็คือ เอโนลา โฮล์มส์ เด็กสาวที่มีชื่อแปลกกว่าคนอื่นเขา เนื่องจากแม่ของเธอชอบเล่นเกมสะกดคำ จึงได้ตั้งชื่อกลับคำมาจาก Alone และเธอก็ใช้ชีวิตอยู่กับแม่สองคนหลังจากที่พ่อเสียชีวิต จนกระทั่งเมื่อถึงอายุ 16 ปีแม่ของเธอก็หายตัวไป เธอจึงขอความช่วยเหลือจากพี่ๆ ของเธอ ทำให้พี่ชายทั้งสองคือเชอร์ล็อก โฮล์มส์ และไมครอฟต์ โฮล์มส์ เข้ามาช่วยดูแล แต่ด้วยความเจ้าระเบียบของไมครอฟต์ ทำให้เธอต้องการหนีออกไปตามหาแม่ด้วยตัวเอง โดยมีเบาะแสจากแม่ของเธอเองที่ทิ้งไว้ให้เป็นตัวช่วย เรื่องจะเป็นอย่างไรต้องไปติดตามดูกันเอาเองนะ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actors`
--
ALTER TABLE `actors`
  ADD PRIMARY KEY (`aid`),
  ADD KEY `movie` (`movie`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`mbid`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`pdid`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `actors`
--
ALTER TABLE `actors`
  ADD CONSTRAINT `actors_ibfk_1` FOREIGN KEY (`movie`) REFERENCES `products` (`pdid`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
