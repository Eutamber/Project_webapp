-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 25, 2023 at 10:41 AM
-- Server version: 8.0.17
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database_webapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `product_webapp`
--

CREATE TABLE `product_webapp` (
  `ID` bigint(20) NOT NULL,
  `types` varchar(255) NOT NULL,
  `topic` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `color1` varchar(255) DEFAULT NULL,
  `color2` varchar(255) DEFAULT NULL,
  `color3` varchar(255) DEFAULT NULL,
  `color4` varchar(255) DEFAULT NULL,
  `details` varchar(255) CHARACTER SET tis620 COLLATE tis620_thai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=tis620;

--
-- Dumping data for table `product_webapp`
--

INSERT INTO `product_webapp` (`ID`, `types`, `topic`, `price`, `color1`, `color2`, `color3`, `color4`, `details`) VALUES
(1001, 'Furniture', 'ชุดห้องนอน รุ่นร็อตเตอร์ดัม', 19000, NULL, NULL, NULL, NULL, 'ตียง, ตู้เสื้อผ้า 4 บาน, โต๊ะเครื่องแป้ง สีเลอบานา โอ๊ค/ดาร์ค เวงเก้\r\n- ผลิตจากไม้พาร์ทิเคิลบอร์ดเกรดสูง (E1) ปิดด้วยกระดาษฟอยล์ 2 สี คือ สีไม้อ่อน (สีเลอบานา โอ๊ค) และสีดำที่มี texture ของลายไม้ (สีดาร์ค เวงเก้)\r\n- สะดวกสบายด้วยชั้นวางของที่หัวเตียง\r\n- เ'),
(1002, 'Furniture', 'ชุดห้องนอน รุ่นวิวิด พลัส+วีโก้', 165000, NULL, NULL, NULL, NULL, '- ผลิตจากไม้พาร์ทิเคิลบอร์ดเกรดสูง (E1) ปิดผิวด้วยเมลามีนสีขาว สามารถกันความร้อนความชื้นได้ดี\r\n- เหมาะกับที่นอน 8-9 นิ้ว (แยกจำหน่าย)\r\n- พร้อมพื้นเตียงไม้ทึบ ฐานเตียงแข็งแรงพร้อมคานรองรับพิเศษ\r\n- สีอาจแตกต่างจากในภาพเล็กน้อย\r\n- สามารถใช้ร่วมกันเฟอร์นิเจอร'),
(1003, 'Furniture', 'FURINBOX ชุดห้องนอน รุ่นแชมป์', 14800, NULL, NULL, NULL, NULL, '- ดีไซน์มาอย่างลงตัวที่มาพร้อมกับหน้าบานที่มีกระจกยาวแบบเต็มตัว เพื่อให้เหมาะกับความต้องการในห้องนอนของคุณ\r\n- ฟังก์ชันด้านในที่คิดมาให้แล้ว เหมาะสำหรับทุกการใช้งาน\r\n- มีลิ้นชักขนาดใหญ่ 2 ลิ้นชักสำหรับเก็บกางเกงพับและชุดชั้นในสตรี'),
(1004, 'Furniture', 'ซื้อชุดห้องนอน รุ่นอิลลูชั่น พลัส ขนาด 6 ฟุต', 46000, NULL, NULL, NULL, NULL, 'ซื้อชุดห้องนอน รุ่นอิลลูชั่น พลัส ขนาด 6 ฟุต (เตียง(พื้นซี่), ตู้เสื้อผ้า 4 บาน, โต๊ะเครื่องแป้ง) แถมฟรี! ตู้ 3 ลิ้นชัก รุ่นอิลลูชั่น พลัส หรือม้านั่งผ้า รุ่นอเล็กซ์'),
(1005, 'Furniture', 'เตียง 2 ลิ้นชัก รุ่นบลัง บีบี บ็อกซ์', 14600, NULL, NULL, NULL, NULL, '- ผลิตจากไม้พาร์ทิเคิลบอร์ดปิดผิวเมลามีนสีขาว เคลือบยูวีไฮกลอส ให้ความเงางาม กันความร้อนความชื้นได้ดี\r\n- ลิ้นชักใต้เตียงสำหรับเตียงบอดี้ B ขนาดใหญ่พิเศษ เพิ่มพื้นที่เก็บของด้านใต้เตียง ติดตั้งพร้อมลูกล้อ ช่วยให้สะดวกในการใช้งานมากยิ่งขึ้น\r\n- ขนาดลิ้นชัก :'),
(1006, 'Furniture', 'ชุดโต๊ะทานอาหาร 4 ที่นั่ง รุ่นฮัมเบิ้ล', 8860, '#CD853F', '#8B4513', NULL, NULL, '- โต๊ะรับประทานอาหารไม้ยางพารา\r\n- พื้นผิวโต๊ะมีความทนทานต่อน้ำ น้ำมัน คราบอาหาร ความร้อนและรอยขีดข่วนได้เป็นอย่างดี\r\n- โครงสร้างไม้จริงที่ช่วยเพิ่มความแข็งแรง โครงสร้างแข็งแรง\r\n- ไม้ยางพาราธรรมชาติให้ลวดลาย ที่แตกต่างในแต่ละชิ้น\r\n- เหมาะสำหรับใช้ภายในอาคา'),
(1007, 'Furniture', 'ชุดโต๊ะอาหาร 4 ที่นั่ง รุ่นเปอเซโอ้+คอร์บี้', 8999, '#3f51b5', '#5677fc', NULL, NULL, '- ท็อปทำด้วยหินอ่อน มีความแข็งแรง ทนทาน\r\n- มีลวดลายสวยงาม มีอายุการใช้งานที่ยาวนาน\r\n- ขาโต๊ะจากไม้ยางพาราคุณภาพดี\r\n- บุด้วยผ้าคุณภาพดี นำเข้าจากต่างประเทศ\r\n- โครงไม้เนื้อแข็ง เพื่อความแข็งแรงทนทาน การใช้งานยาวนาน\r\n- หุ้มด้วยฟองน้ำอย่างดี มีความยืดหยุ่นสูง'),
(1008, 'Furniture', 'FURINBOX ตู้รองเท้า 3 บานเปิด รุ่นมินิโอ ขนาด 90 ซม. ', 12800, NULL, NULL, NULL, NULL, '- ผลิตจากไม้พาร์ทิเคิลบอร์ดคุณภาพดี\r\n- ปิดผิวด้วยกระดาษหนา อัดด้วยความร้อนสูง ป้องกันเชื้อรา\r\n- ดีไซน์ สวยงาม ดูทันสมัย\r\n- สไตล์โมเดิร์น\r\n- ท็อปเป็นเมลามีน สามารถทนความร้อน ความชื้น และรอยขีดข่วนได้ดี  มีอายุการใช้งานที่ยาวนาน'),
(1009, 'Furniture', 'ตู้รองเท้า พร้อมที่เก็บของ ลินซี่ รุ่นฟารินี่ ขนาด 100 ซม. ', 8500, NULL, NULL, NULL, NULL, '- ผลิตจากพาร์ติเคิลบอร์ด ทนความร้อนและความชื้นได้ดี\r\n- เบาะนั่งโครงไม้แข็งแรง หุ้มผ้าโพลีเอสเตอร์ บุฟองน้ำ\r\n- ที่เก็บของใต้เบาะนั่ง 3 ช่อง เก็บของได้สะดวก หยิบใช้ง่าย\r\n- ชั้นวางรองเท้า 2 ชั้น ตัวยึดชั้นวางรองบานพับทำจากเหล็ก\r\n- ชั้นโล่งแบ่งชั้นวางรองเท้าไ'),
(1010, 'Furniture', 'ตู้วางรองเท้า รุ่นเพซโซ่ ขนาด 60 ซม.', 2290, NULL, NULL, NULL, NULL, '- ผลิตจากไม้พาร์ทิเคิลบอร์ดคุณภาพสูง (E1) ปิดผิวด้วยเมลามีนหรือฟอยล์ สามารถกันความร้อนความชื้นได้ดี\r\n- มีชั้นวางรองเท้ามากถึง 6 ชั้น และวางรองเท้าได้มากถึง 12 คู่\r\n- สามารถจัดวางรองเท้าไซส์ใหญ่สุดได้ที่ไซส์ 44\r\n- ชั้นวางรองเท้าสามารถปรับระดับได้ทุกชั้น\r\n-'),
(2001, 'Bedding', 'ชุดผ้าปูที่นอน รุ่นอันน์ย่า ขนาด 3.5 ฟุต (2 ชิ้น/ชุด)', 1290, NULL, NULL, NULL, NULL, '- ผลิตจากผ้าฝ้าย 100% เป็นด้ายหวีทอโครงสร้างลายต่วน จำนวนเส้นด้าย 300 เส้น ต่อหนึ่งตารางนิ้ว (460 เส้น ต่อ 10 ตร.ซม.) พร้อมลายพิมพ์ออกแบบโดยเฉพาะ\r\n- 1 ชุด ประกอบด้วย ผ้าปูที่นอนรัดมุมสำหรับเตียง 3.5 ฟุต เหมาะกับที่นอนหนา 38 ซม. (15 นิ้ว) พร้อมปลอกหมอนหนุน'),
(2002, 'Bedding', 'ซื้อชุดผ้าปู ขนาด 6 ฟุต 2 ชิ้น', 2690, NULL, NULL, NULL, NULL, ''),
(2003, 'Bedding', 'ชุดผ้าปูที่นอน รุ่น คาร์ลิโอ้ ขนาด 5 ฟุต', 699, NULL, NULL, NULL, NULL, '- ขนาด 5 ฟุต\r\n- ผลิตมาจากผ้าโพลีเอสเตอร์คุณภาพ 100%\r\n- เหมาะกับที่นอนหนา 12 นิ้ว\r\n- ให้สัมผัสที่นุ่ม สบาย ไม่ระคายผิว'),
(2004, 'Bedding', 'ชุดผ้าปูที่นอน รุ่นคูปเปอร์ ขนาด 5 ฟุต', 690, NULL, NULL, NULL, NULL, '- ประกอบไปด้วยผ้าปูรัดมุมสำหรับเตียง 5 ฟุต 1 ชิ้น ปลอกหมอนหนุนขนาดมาตรฐาน 2 ชิ้น และปลอกหมอนข้าง 2 ชิ้น\r\n- ชุดผ้าปูรัดมุมสำหรับเตียงคู่ 5 ฟุต เหมาะกับที่นอนหนา 12 นิ้ว'),
(2005, 'Bedding', 'ชุดผ้าปูที่นอน รุ่นเกลล์แคนดี้ ขนาด 3.5 ฟุต', 1990, NULL, NULL, NULL, NULL, '- ชุดผ้าปู ขนาด 3.5 ฟุต จำนวน 4 ชิ้น/ชุด ทอจากเส้นใยโพลีเอสเตอร์ 100% น้ำหนัก 85 กรัม\r\n- ออกแบบลวดลายกราฟิกบนผืนผ้าด้วยการพิมพ์แบบดิสเพิร์ส'),
(2006, 'Bedding', 'ผ้าห่มฟรีซ รุ่นแพนิเชียน ขนาด 120 X 160 ซม.', 199, NULL, NULL, NULL, NULL, '- ผ้าห่มฟรีซพิมพ์ลาย เนื้อนุ่ม น้ำหนัก 160 กรัม\r\n- สามารถซักมือ หรือซักเครื่อง ด้วยอุณหภูมิปกติ\r\n- ใช้สำหรับห่มนอน'),
(2007, 'Bedding', 'ผ้าห่มถัก รุ่นเอิร์ล ขนาด 127 X 152 ซม.', 790, NULL, NULL, NULL, NULL, '- ผ้าห่มถักเนื้อนุ่ม ถักทอลายสวยงาม\r\n- น้ำหนัก 590 gsm\r\n- มีความนุ่มสบาย และ ยืดหยุ่นเวลาใช้งาน'),
(2008, 'Bedding', 'ผ้าห่มแบบเย็น รุ่นลิโมช ขนาด 60 X 80 นิ้ว ', 1590, NULL, NULL, NULL, NULL, '- ขนาด  60 x 80 นิ้ว\r\n- ผลิตจากผ้าฝ้าย,ไนลอน และโพลีเอสเตอร์คุณภาพดี\r\n- ถักทอ yarn dyed ทำให้เกิดเป็นลายริ้วดูสวยงาม\r\n- ด้านหลังถักทอด้วยเส้นใยไนลอนผสมโพลีเอสเตอร์\r\n- มาพร้อมไส้ผ้าห่มโพลีเอสเตอร์ 100 gsm.\r\n- เนื้อผ้าให้ผิวสัมผัสที่นุ่มลื่นและบางเบา เพื่อค'),
(2009, 'Bedding', 'ผ้าห่มแบบเย็น รุ่นลูคัส ขนาด 60 X 80 นิ้ว', 1590, NULL, NULL, NULL, NULL, '- ผ้าห่มแบบเย็น ผลิตจากผ้าฝ้ายคุณภาพดี ถักทอ yarn dyed ทำให้เกิดเป็นลายริ้วดูสวยงาม ด้านหลังถักทอด้วยเส้นใยไนลอนผสมโพลีเอสเตอร์ มาพร้อมไส้ผ้าห่มโพลีเอสเตอร์ 100 กรัม.\r\n\r\n- เนื้อผ้าให้ผิวสัมผัสที่นุ่มลื่นและบางเบา เพื่อความเย็นสบายในสภาพอากาศที่ร้อนอบอ้าว '),
(2010, 'Bedding', 'ที่นอนปิกนิกพร้อมหมอน รุ่นบัดดี้', 599, NULL, NULL, NULL, NULL, '- ที่นอนปิกนิกแบบหนา ทำจากผ้าโพลีเอสเตอร์ 100%\r\n- สำหรับใช้ปูนอน'),
(3001, 'Home Decoration', 'นาฬิกาติดผนัง รุ่นเฌอริน ขนาด 12 นิ้ว', 350, NULL, NULL, NULL, NULL, '- นาฬิกาติดผนัง ทำจากพลาสติกและแก้วใส\r\n- ใช้ตัวเครื่องจากจีนแบบเดินเงียบ\r\n- ใช้กับแบตเตอรี่ธรรมดา AA 1 ก้อน\r\n- ห้ามใช้ถ่านอัลคาไลน์\r\n- ขนาด: กว้าง 30 x ลึก 4 x สูง 30 ซม.'),
(3002, 'Home Decoration', 'นาฬิกาติดผนัง รุ่นฮาร์ฟเฟล ขนาด 12 นิ้ว', 390, NULL, NULL, NULL, NULL, '- นาฬิกาติดผนังทำจากพลาสติก\r\n- ใช้ตัวเครื่องจากจีนแบบเดินเงียบ\r\n- ใช้กับแบตเตอรี่ธรรมดา AA 1 ก้อน'),
(3003, 'Home Decoration', 'เทียนพิลล่า รุ่นคาเมลล่า ขนาด 3 X 6 นิ้ว - กลิ่นวานิลา', 159, NULL, NULL, NULL, NULL, '- ไส้เทียนไม่มีสารตะกั่ว \r\n- เขม่าและควันน้อย \r\n- ระยะเวลาจุดนาน\r\n- จำนวนชั่วโมงในการจุด 70 ชั่วโมง'),
(3004, 'Home Decoration', 'ที่รองเทียน รุ่นวาเลน พลัส ขนาด 12 นิ้ว', 295, NULL, NULL, NULL, NULL, '- ที่รองเทียนทำจากแก้ว ขนาด 3.5 x 12 นิ้ว\r\n- ใช้สำหรับรองเทียน tea light หรือ votive\r\n- ใช้สำหรับตกแต่ง'),
(3005, 'Home Decoration', 'กรอบรูป รุ่นอันเซิน ขนาด 8 x 10 นิ้ว', 129, NULL, NULL, NULL, NULL, '- ปราศจากแอลกอฮอล์ พาราเบน ทำให้ไม่ระคายเคืองผิวดูแลผิวให้สะอาดอยู่เสมอด้วยสัมผัสนุ่มนวลจากผ้าเช็ดทำความสะอาด ซึ่งผลิตจากผ้าที่มีความหนานุ่มพิเศษ \r\n- เหมาะสำหรับใส่รูปเพื่อตกแต่งห้องให้ดูสวยงาม '),
(3006, 'Home Decoration', 'รูปภาพพร้อมกรอบ รุ่นออนวารี่ จำนวน 4 ชิ้น/ชุด', 990, NULL, NULL, NULL, NULL, '- รูปภาพพร้อมกรอบ จำนวน 4 ชิ้น/ชุด\r\n- ไม่สามารถเปลี่ยนรูปด้านในได้\r\n- เหมาะสำหรับใช้ภายในอาคาร\r\n- ใช้สำหรับตกแต่งผนัง'),
(3007, 'Home Decoration', 'ที่คั่นหนังสือ รุ่นโฮโรซ่า จำนวน 2 ชิ้น/ชุด', 595, NULL, NULL, NULL, NULL, '- ที่คั่นหนังสือรูปม้า ทำจากโพลี่เรซิน\r\n- เหมาะสำหรับใช้ตกแต่งบนโต๊ะหรือชั้นวาง'),
(3008, 'Home Decoration', 'รูปปั้นกระต่าย รุ่นแรทบิทโท่ ขนาด 7.8 นิ้ว ', 295, NULL, NULL, NULL, NULL, '- เหมาะสำหรับใช้ตกแต่งบนโต๊ะหรือชั้นวางได้ตามความต้องการ'),
(3009, 'Home Decoration', 'ซื้อพรมปูพื้น พร้อมพรมขนแกะเทียม รุ่นคาร์เรล', 2950, NULL, NULL, NULL, NULL, NULL),
(3010, 'Home Decoration', 'พรมปูพื้น XL รุ่นมารินน์ ขนาด 200 X 240 ซม.', 7999, NULL, NULL, NULL, NULL, '- พรมปูพื้นที่ทอจากเส้นด้ายเงางามให้ความหรูหรา นุ่มสบายและอบอุ่น\r\n- มีให้เลือกหลากหลายไซส์ 90 x 150, 120 x 180, 150 x 240 และ 200 x 240 ซม.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product_webapp`
--
ALTER TABLE `product_webapp`
  ADD PRIMARY KEY (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
