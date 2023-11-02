-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 02, 2023 at 08:28 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
  `details` varchar(255) DEFAULT NULL,
  `imge` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=tis620 COLLATE=tis620_thai_ci;

--
-- Dumping data for table `product_webapp`
--

INSERT INTO `product_webapp` (`ID`, `types`, `topic`, `price`, `color1`, `color2`, `color3`, `color4`, `details`, `imge`) VALUES
(1001, 'Furniture', 'ชุดห้องนอน รุ่นร็อตเตอร์ดัม', 19000, NULL, NULL, NULL, NULL, 'ตียง, ตู้เสื้อผ้า 4 บาน, โต๊ะเครื่องแป้ง สีเลอบานา โอ๊ค/ดาร์ค เวงเก้\r\n- ผลิตจากไม้พาร์ทิเคิลบอร์ดเกรดสูง (E1) ปิดด้วยกระดาษฟอยล์ 2 สี คือ สีไม้อ่อน (สีเลอบานา โอ๊ค) และสีดำที่มี texture ของลายไม้ (สีดาร์ค เวงเก้)\r\n- สะดวกสบายด้วยชั้นวางของที่หัวเตียง\r\n', 'https://www.indexlivingmall.com/_next/image?url=https%3A%2F%2Fmedia.indexlivingmall.com%2Fmedia%2Fcatalog%2Fproduct%2Fcache%2F29b3f741dcafc528943c644b5c704259%2F1%2F2%2F120025303_1695107648891PNPO.jpg&w=1200&q=75'),
(1002, 'Furniture', 'ชุดห้องนอน รุ่นวิวิด พลัส+วีโก้', 165000, NULL, NULL, NULL, NULL, '- ผลิตจากไม้พาร์ทิเคิลบอร์ดเกรดสูง (E1) ปิดผิวด้วยเมลามีนสีขาว สามารถกันความร้อนความชื้นได้ดี\r\n- เหมาะกับที่นอน 8-9 นิ้ว (แยกจำหน่าย)\r\n- พร้อมพื้นเตียงไม้ทึบ ฐานเตียงแข็งแรงพร้อมคานรองรับพิเศษ\r\n- สีอาจแตกต่างจากในภาพเล็กน้อย\r\n- สามารถใช้ร่วมกันเฟอร์นิเจอร', 'https://www.indexlivingmall.com/_next/image?url=https%3A%2F%2Fmedia.indexlivingmall.com%2Fmedia%2Fcatalog%2Fproduct%2Fcache%2F29b3f741dcafc528943c644b5c704259%2F1%2F2%2F120025263_1690440230001raVT.jpg&w=1200&q=75'),
(1003, 'Furniture', 'FURINBOX ชุดห้องนอน รุ่นแชมป์', 14800, NULL, NULL, NULL, NULL, '- ดีไซน์มาอย่างลงตัวที่มาพร้อมกับหน้าบานที่มีกระจกยาวแบบเต็มตัว เพื่อให้เหมาะกับความต้องการในห้องนอนของคุณ\r\n- ฟังก์ชันด้านในที่คิดมาให้แล้ว เหมาะสำหรับทุกการใช้งาน\r\n- มีลิ้นชักขนาดใหญ่ 2 ลิ้นชักสำหรับเก็บกางเกงพับและชุดชั้นในสตรี', 'https://www.indexlivingmall.com/_next/image?url=https%3A%2F%2Fmedia.indexlivingmall.com%2Fmedia%2Fcatalog%2Fproduct%2Fcache%2F29b3f741dcafc528943c644b5c704259%2F4%2F0%2F400001028_1679285988085tcKI.jpg&w=1200&q=75'),
(1004, 'Furniture', 'ซื้อชุดห้องนอน รุ่นอิลลูชั่น พลัส ขนาด 6 ฟุต', 46000, NULL, NULL, NULL, NULL, 'ซื้อชุดห้องนอน รุ่นอิลลูชั่น พลัส ขนาด 6 ฟุต (เตียง(พื้นซี่), ตู้เสื้อผ้า 4 บาน, โต๊ะเครื่องแป้ง) แถมฟรี! ตู้ 3 ลิ้นชัก รุ่นอิลลูชั่น พลัส หรือม้านั่งผ้า รุ่นอเล็กซ์', 'https://www.indexlivingmall.com/_next/image?url=https%3A%2F%2Fmedia.indexlivingmall.com%2Fmedia%2Fcatalog%2Fproduct%2F4%2F5%2F4504_fur_23001245_33332_bf.jpg&w=1200&q=75'),
(1005, 'Furniture', 'เตียง 2 ลิ้นชัก รุ่นบลัง บีบี บ็อกซ์', 14600, NULL, NULL, NULL, NULL, '- ผลิตจากไม้พาร์ทิเคิลบอร์ดปิดผิวเมลามีนสีขาว เคลือบยูวีไฮกลอส ให้ความเงางาม กันความร้อนความชื้นได้ดี\r\n- ลิ้นชักใต้เตียงสำหรับเตียงบอดี้ B ขนาดใหญ่พิเศษ เพิ่มพื้นที่เก็บของด้านใต้เตียง ติดตั้งพร้อมลูกล้อ ช่วยให้สะดวกในการใช้งานมากยิ่งขึ้น\r\n- ขนาดลิ้นชัก :', 'https://www.indexlivingmall.com/_next/image?url=https%3A%2F%2Fmedia.indexlivingmall.com%2Fmedia%2Fcatalog%2Fproduct%2Fcache%2F29b3f741dcafc528943c644b5c704259%2F1%2F1%2F110032222_1620974617465Feyx.jpg&w=1200&q=75'),
(1006, 'Furniture', 'ชุดโต๊ะอาหาร 4 ที่นั่ง รุ่นฮัมเบิ้ล', 8860, '#CD853F', '#8B4513', NULL, NULL, '- โต๊ะรับประทานอาหารไม้ยางพารา\r\n- พื้นผิวโต๊ะมีความทนทานต่อน้ำ น้ำมัน คราบอาหาร ความร้อนและรอยขีดข่วนได้เป็นอย่างดี\r\n- โครงสร้างไม้จริงที่ช่วยเพิ่มความแข็งแรง โครงสร้างแข็งแรง\r\n- ไม้ยางพาราธรรมชาติให้ลวดลาย ที่แตกต่างในแต่ละชิ้น\r\n- เหมาะสำหรับใช้ภายในอาคา', 'https://www.indexlivingmall.com/_next/image?url=https%3A%2F%2Fmedia.indexlivingmall.com%2Fmedia%2Fcatalog%2Fproduct%2Fcache%2F29b3f741dcafc528943c644b5c704259%2F1%2F2%2F120025011_1681290957035nEKQ.jpg&w=1200&q=75'),
(1007, 'Furniture', 'ชุดโต๊ะอาหาร 4 ที่นั่ง รุ่นเปอเซโอ้+คอร์บี้', 8999, '#3f51b5', '#5677fc', NULL, NULL, '- ท็อปทำด้วยหินอ่อน มีความแข็งแรง ทนทาน\r\n- มีลวดลายสวยงาม มีอายุการใช้งานที่ยาวนาน\r\n- ขาโต๊ะจากไม้ยางพาราคุณภาพดี\r\n- บุด้วยผ้าคุณภาพดี นำเข้าจากต่างประเทศ\r\n- โครงไม้เนื้อแข็ง เพื่อความแข็งแรงทนทาน การใช้งานยาวนาน\r\n- หุ้มด้วยฟองน้ำอย่างดี มีความยืดหยุ่นสูง', 'https://indexlivingmall.com/_next/image?url=https%3A%2F%2Fmedia.indexlivingmall.com%2Fmedia%2Fcatalog%2Fproduct%2Fcache%2F29b3f741dcafc528943c644b5c704259%2F1%2F1%2F110033511_op1_PERSEO_CORBY_WT_LGY.jpg&w=1200&q=75'),
(1008, 'Furniture', 'FURINBOX ตู้รองเท้า 3 บานเปิด รุ่นมินิโอ ขนาด 90 ซม. ', 12800, NULL, NULL, NULL, NULL, '- ผลิตจากไม้พาร์ทิเคิลบอร์ดคุณภาพดี\r\n- ปิดผิวด้วยกระดาษหนา อัดด้วยความร้อนสูง ป้องกันเชื้อรา\r\n- ดีไซน์ สวยงาม ดูทันสมัย\r\n- สไตล์โมเดิร์น\r\n- ท็อปเป็นเมลามีน สามารถทนความร้อน ความชื้น และรอยขีดข่วนได้ดี  มีอายุการใช้งานที่ยาวนาน', 'https://www.indexlivingmall.com/_next/image?url=https%3A%2F%2Fmedia.indexlivingmall.com%2Fmedia%2Fcatalog%2Fproduct%2F3%2F7%2F370000351_c_Minio_90cm_WTO.jpg&w=1200&q=75'),
(1009, 'Furniture', 'ตู้รองเท้า พร้อมที่เก็บของ ลินซี่ รุ่นฟารินี่ ขนาด 100 ซม. ', 8500, NULL, NULL, NULL, NULL, '- ผลิตจากพาร์ติเคิลบอร์ด ทนความร้อนและความชื้นได้ดี\r\n- เบาะนั่งโครงไม้แข็งแรง หุ้มผ้าโพลีเอสเตอร์ บุฟองน้ำ\r\n- ที่เก็บของใต้เบาะนั่ง 3 ช่อง เก็บของได้สะดวก หยิบใช้ง่าย\r\n- ชั้นวางรองเท้า 2 ชั้น ตัวยึดชั้นวางรองบานพับทำจากเหล็ก\r\n', 'https://www.indexlivingmall.com/_next/image?url=https%3A%2F%2Fmedia.indexlivingmall.com%2Fmedia%2Fcatalog%2Fproduct%2F4%2F1%2F410000088_op1_Linsy_Farini_Shoecabinet100CM_WN.jpg&w=1200&q=75'),
(1010, 'Furniture', 'ตู้วางรองเท้า รุ่นเพซโซ่ ขนาด 60 ซม.', 2290, NULL, NULL, NULL, NULL, '- ผลิตจากไม้พาร์ทิเคิลบอร์ดคุณภาพสูง (E1) ปิดผิวด้วยเมลามีนหรือฟอยล์ สามารถกันความร้อนความชื้นได้ดี\r\n- มีชั้นวางรองเท้ามากถึง 6 ชั้น และวางรองเท้าได้มากถึง 12 คู่\r\n- สามารถจัดวางรองเท้าไซส์ใหญ่สุดได้ที่ไซส์ 44\r\n- ชั้นวางรองเท้าสามารถปรับระดับได้ทุกชั้น\r\n-', 'https://www.indexlivingmall.com/_next/image?url=https%3A%2F%2Fmedia.indexlivingmall.com%2Fmedia%2Fcatalog%2Fproduct%2Fcache%2F29b3f741dcafc528943c644b5c704259%2F1%2F2%2F120017684_pc_PEZZO_NT_WT.jpg&w=1200&q=75'),
(2001, 'Bedding', 'ชุดผ้าปูที่นอน รุ่นอันน์ย่า ขนาด 3.5 ฟุต (2 ชิ้น/ชุด)', 1290, NULL, NULL, NULL, NULL, '- ผลิตจากผ้าฝ้าย 100% เป็นด้ายหวีทอโครงสร้างลายต่วน จำนวนเส้นด้าย 300 เส้น ต่อหนึ่งตารางนิ้ว (460 เส้น ต่อ 10 ตร.ซม.) พร้อมลายพิมพ์ออกแบบโดยเฉพาะ\r\n- 1 ชุด ประกอบด้วย ผ้าปูที่นอนรัดมุมสำหรับเตียง 3.5 ฟุต เหมาะกับที่นอนหนา 38 ซม. (15 นิ้ว) พร้อมปลอกหมอนหนุน', 'https://www.indexlivingmall.com/_next/image?url=https%3A%2F%2Fmedia.indexlivingmall.com%2Fmedia%2Fcatalog%2Fproduct%2F1%2F7%2F170131896_c_ANYA_MTC.jpg&w=1200&q=75\r\n'),
(2002, 'Bedding', 'ซื้อชุดผ้าปู ขนาด 6 ฟุต 2 ชิ้น', 2690, NULL, NULL, NULL, NULL, '', 'https://www.indexlivingmall.com/_next/image?url=https%3A%2F%2Fmedia.indexlivingmall.com%2Fmedia%2Fcatalog%2Fproduct%2F4%2F5%2F4504_hdi_23001345_33899_mx.jpg&w=1200&q=75'),
(2003, 'Bedding', 'ชุดผ้าปูที่นอน รุ่น คาร์ลิโอ้ ขนาด 5 ฟุต', 699, NULL, NULL, NULL, NULL, '- ขนาด 5 ฟุต\r\n- ผลิตมาจากผ้าโพลีเอสเตอร์คุณภาพ 100%\r\n- เหมาะกับที่นอนหนา 12 นิ้ว\r\n- ให้สัมผัสที่นุ่ม สบาย ไม่ระคายผิว', 'https://www.indexlivingmall.com/_next/image?url=https%3A%2F%2Fmedia.indexlivingmall.com%2Fmedia%2Fcatalog%2Fproduct%2F1%2F7%2F170112185_1564634112843ljsU_2.jpg&w=1200&q=75'),
(2004, 'Bedding', 'ชุดผ้าปูที่นอน รุ่นคูปเปอร์ ขนาด 5 ฟุต', 690, NULL, NULL, NULL, NULL, '- ประกอบไปด้วยผ้าปูรัดมุมสำหรับเตียง 5 ฟุต 1 ชิ้น ปลอกหมอนหนุนขนาดมาตรฐาน 2 ชิ้น และปลอกหมอนข้าง 2 ชิ้น\r\n- ชุดผ้าปูรัดมุมสำหรับเตียงคู่ 5 ฟุต เหมาะกับที่นอนหนา 12 นิ้ว', 'https://www.indexlivingmall.com/_next/image?url=https%3A%2F%2Fmedia.indexlivingmall.com%2Fmedia%2Fcatalog%2Fproduct%2F1%2F7%2F170120823_1629970012398hfOi.jpeg&w=1200&q=75\r\n'),
(2005, 'Bedding', 'ชุดผ้าปูที่นอน รุ่นเกลล์แคนดี้ ขนาด 3.5 ฟุต', 1990, NULL, NULL, NULL, NULL, '- ชุดผ้าปู ขนาด 3.5 ฟุต จำนวน 4 ชิ้น/ชุด ทอจากเส้นใยโพลีเอสเตอร์ 100% น้ำหนัก 85 กรัม\r\n- ออกแบบลวดลายกราฟิกบนผืนผ้าด้วยการพิมพ์แบบดิสเพิร์ส', 'https://www.indexlivingmall.com/_next/image?url=https%3A%2F%2Fmedia.indexlivingmall.com%2Fmedia%2Fcatalog%2Fproduct%2F1%2F7%2F170130258_c_GAIL-CANDY_MTC.jpg&w=1200&q=75\r\n'),
(2006, 'Bedding', 'ผ้าห่มฟรีซ รุ่นแพนิเชียน ขนาด 120 X 160 ซม.', 199, NULL, NULL, NULL, NULL, '- ผ้าห่มฟรีซพิมพ์ลาย เนื้อนุ่ม น้ำหนัก 160 กรัม\r\n- สามารถซักมือ หรือซักเครื่อง ด้วยอุณหภูมิปกติ\r\n- ใช้สำหรับห่มนอน', 'https://www.indexlivingmall.com/_next/image?url=https%3A%2F%2Fmedia.indexlivingmall.com%2Fmedia%2Fcatalog%2Fproduct%2F1%2F7%2F170130506_c_PANICIAN-A_GY.JPG&w=1200&q=75'),
(2007, 'Bedding', 'ผ้าห่มถัก รุ่นเอิร์ล ขนาด 127 X 152 ซม.', 790, NULL, NULL, NULL, NULL, '- ผ้าห่มถักเนื้อนุ่ม ถักทอลายสวยงาม\r\n- น้ำหนัก 590 gsm\r\n- มีความนุ่มสบาย และ ยืดหยุ่นเวลาใช้งาน', 'https://www.indexlivingmall.com/_next/image?url=https%3A%2F%2Fmedia.indexlivingmall.com%2Fmedia%2Fcatalog%2Fproduct%2F1%2F7%2F170126073_c_Earl_BL.JPG&w=1200&q=75'),
(2008, 'Bedding', 'ผ้าห่มแบบเย็น รุ่นลิโมช ขนาด 60 X 80 นิ้ว ', 1590, NULL, NULL, NULL, NULL, '- ขนาด  60 x 80 นิ้ว\r\n- ผลิตจากผ้าฝ้าย,ไนลอน และโพลีเอสเตอร์คุณภาพดี\r\n- ถักทอ yarn dyed ทำให้เกิดเป็นลายริ้วดูสวยงาม\r\n- ด้านหลังถักทอด้วยเส้นใยไนลอนผสมโพลีเอสเตอร์\r\n- มาพร้อมไส้ผ้าห่มโพลีเอสเตอร์ 100 gsm.\r\n- เนื้อผ้าให้ผิวสัมผัสที่นุ่มลื่นและบางเบา เพื่อค', 'https://www.indexlivingmall.com/_next/image?url=https%3A%2F%2Fmedia.indexlivingmall.com%2Fmedia%2Fcatalog%2Fproduct%2F1%2F7%2F170115400_c_Limages_GY_2.JPG&w=1200&q=75'),
(2009, 'Bedding', 'ผ้าห่มแบบเย็น รุ่นลูคัส ขนาด 60 X 80 นิ้ว', 1590, NULL, NULL, NULL, NULL, '- ผ้าห่มแบบเย็น ผลิตจากผ้าฝ้ายคุณภาพดี ถักทอ yarn dyed ทำให้เกิดเป็นลายริ้วดูสวยงาม ด้านหลังถักทอด้วยเส้นใยไนลอนผสมโพลีเอสเตอร์ มาพร้อมไส้ผ้าห่มโพลีเอสเตอร์ 100 กรัม.\r\n\r\n- เนื้อผ้าให้ผิวสัมผัสที่นุ่มลื่นและบางเบา เพื่อความเย็นสบายในสภาพอากาศที่ร้อนอบอ้าว ', 'https://www.indexlivingmall.com/_next/image?url=https%3A%2F%2Fmedia.indexlivingmall.com%2Fmedia%2Fcatalog%2Fproduct%2F1%2F7%2F170129561_c_LUCAS_GN.jpg&w=1200&q=75'),
(2010, 'Bedding', 'ที่นอนปิกนิกพร้อมหมอน รุ่นบัดดี้', 599, NULL, NULL, NULL, NULL, '- ที่นอนปิกนิกแบบหนา ทำจากผ้าโพลีเอสเตอร์ 100%\r\n- สำหรับใช้ปูนอน', 'https://www.indexlivingmall.com/_next/image?url=https%3A%2F%2Fmedia.indexlivingmall.com%2Fmedia%2Fcatalog%2Fproduct%2F1%2F7%2F170117359_pc_BUDDY_MTC.jpg&w=1200&q=75'),
(3001, 'Home Decoration', 'นาฬิกาติดผนัง รุ่นเฌอริน ขนาด 12 นิ้ว', 350, NULL, NULL, NULL, NULL, '- นาฬิกาติดผนัง ทำจากพลาสติกและแก้วใส\r\n- ใช้ตัวเครื่องจากจีนแบบเดินเงียบ\r\n- ใช้กับแบตเตอรี่ธรรมดา AA 1 ก้อน\r\n- ห้ามใช้ถ่านอัลคาไลน์\r\n- ขนาด: กว้าง 30 x ลึก 4 x สูง 30 ซม.', 'https://www.indexlivingmall.com/_next/image?url=https%3A%2F%2Fmedia.indexlivingmall.com%2Fmedia%2Fcatalog%2Fproduct%2F1%2F7%2F170122392_c_Sheryn_MTC.jpg&w=1200&q=75'),
(3002, 'Home Decoration', 'นาฬิกาติดผนัง รุ่นฮาร์ฟเฟล ขนาด 12 นิ้ว', 390, NULL, NULL, NULL, NULL, '- นาฬิกาติดผนังทำจากพลาสติก\r\n- ใช้ตัวเครื่องจากจีนแบบเดินเงียบ\r\n- ใช้กับแบตเตอรี่ธรรมดา AA 1 ก้อน', 'https://www.indexlivingmall.com/_next/image?url=https%3A%2F%2Fmedia.indexlivingmall.com%2Fmedia%2Fcatalog%2Fproduct%2F1%2F7%2F170115757_c_halfell_BK_BN_2.jpg&w=1200&q=75'),
(3003, 'Home Decoration', 'เทียนพิลล่า รุ่นคาเมลล่า ขนาด 3 X 6 นิ้ว - กลิ่นวานิลา', 159, NULL, NULL, NULL, NULL, '- ไส้เทียนไม่มีสารตะกั่ว \r\n- เขม่าและควันน้อย \r\n- ระยะเวลาจุดนาน\r\n- จำนวนชั่วโมงในการจุด 70 ชั่วโมง', 'https://www.indexlivingmall.com/_next/image?url=https%3A%2F%2Fmedia.indexlivingmall.com%2Fmedia%2Fcatalog%2Fproduct%2F1%2F7%2F170108651_f_CARMELLA_VANILLA_CR.jpg&w=1200&q=75'),
(3004, 'Home Decoration', 'ที่รองเทียน รุ่นวาเลน พลัส ขนาด 12 นิ้ว', 295, NULL, NULL, NULL, NULL, '- ที่รองเทียนทำจากแก้ว ขนาด 3.5 x 12 นิ้ว\r\n- ใช้สำหรับรองเทียน tea light หรือ votive\r\n- ใช้สำหรับตกแต่ง', 'https://www.indexlivingmall.com/_next/image?url=https%3A%2F%2Fmedia.indexlivingmall.com%2Fmedia%2Fcatalog%2Fproduct%2F1%2F7%2F170099870_c_Valen_plus__GD.jpg&w=1200&q=75'),
(3005, 'Home Decoration', 'กรอบรูป รุ่นอันเซิน ขนาด 8 x 10 นิ้ว', 129, NULL, NULL, NULL, NULL, '- ปราศจากแอลกอฮอล์ พาราเบน ทำให้ไม่ระคายเคืองผิวดูแลผิวให้สะอาดอยู่เสมอด้วยสัมผัสนุ่มนวลจากผ้าเช็ดทำความสะอาด ซึ่งผลิตจากผ้าที่มีความหนานุ่มพิเศษ \r\n- เหมาะสำหรับใส่รูปเพื่อตกแต่งห้องให้ดูสวยงาม ', 'https://www.indexlivingmall.com/_next/image?url=https%3A%2F%2Fmedia.indexlivingmall.com%2Fmedia%2Fcatalog%2Fproduct%2F1%2F7%2F170130623c_Suarez_8x12_NT.JPG&w=1200&q=75'),
(3006, 'Home Decoration', 'รูปภาพพร้อมกรอบ รุ่นออนวารี่ จำนวน 4 ชิ้น/ชุด', 990, NULL, NULL, NULL, NULL, '- รูปภาพพร้อมกรอบ จำนวน 4 ชิ้น/ชุด\r\n- ไม่สามารถเปลี่ยนรูปด้านในได้\r\n- เหมาะสำหรับใช้ภายในอาคาร\r\n- ใช้สำหรับตกแต่งผนัง', 'https://www.indexlivingmall.com/_next/image?url=https%3A%2F%2Fmedia.indexlivingmall.com%2Fmedia%2Fcatalog%2Fproduct%2F1%2F7%2F170124610_c_ONWARY_MTC.jpg&w=1200&q=75'),
(3007, 'Home Decoration', 'ที่คั่นหนังสือ รุ่นโฮโรซ่า จำนวน 2 ชิ้น/ชุด', 595, NULL, NULL, NULL, NULL, '- ที่คั่นหนังสือรูปม้า ทำจากโพลี่เรซิน\r\n- เหมาะสำหรับใช้ตกแต่งบนโต๊ะหรือชั้นวาง', 'https://www.indexlivingmall.com/_next/image?url=https%3A%2F%2Fmedia.indexlivingmall.com%2Fmedia%2Fcatalog%2Fproduct%2F1%2F7%2F170128570_c_HOROSA_BK_GD.jpg&w=1200&q=75'),
(3008, 'Home Decoration', 'รูปปั้นกระต่าย รุ่นแรทบิทโท่ ขนาด 7.8 นิ้ว ', 295, NULL, NULL, NULL, NULL, '- เหมาะสำหรับใช้ตกแต่งบนโต๊ะหรือชั้นวางได้ตามความต้องการ', 'https://www.indexlivingmall.com/_next/image?url=https%3A%2F%2Fmedia.indexlivingmall.com%2Fmedia%2Fcatalog%2Fproduct%2F1%2F7%2F170126963_c_RABBITO_WT_GD.JPG&w=1200&q=75'),
(3009, 'Home Decoration', 'ซื้อพรมปูพื้น พร้อมพรมขนแกะเทียม รุ่นคาร์เรล', 2950, NULL, NULL, NULL, NULL, NULL, 'https://www.indexlivingmall.com/_next/image?url=https%3A%2F%2Fmedia.indexlivingmall.com%2Fmedia%2Fcatalog%2Fproduct%2F4%2F5%2F4504_hdi_23001359_33942_mx_c.jpg&w=1200&q=75'),
(3010, 'Home Decoration', 'พรมปูพื้น XL รุ่นมารินน์ ขนาด 200 X 240 ซม.', 7999, NULL, NULL, NULL, NULL, '- พรมปูพื้นที่ทอจากเส้นด้ายเงางามให้ความหรูหรา นุ่มสบายและอบอุ่น\r\n- มีให้เลือกหลากหลายไซส์ 90 x 150, 120 x 180, 150 x 240 และ 200 x 240 ซม.', 'https://www.indexlivingmall.com/_next/image?url=https%3A%2F%2Fmedia.indexlivingmall.com%2Fmedia%2Fcatalog%2Fproduct%2F1%2F7%2F170111209_f_MARYN_GY.jpg&w=1200&q=75'),
(4001, 'Travel_Equipment', 'TRAVEL BAG SET, JET MODEL (2 PIECES/SET)', 3900, NULL, NULL, NULL, NULL, '- ชุดกระเป๋าเดินทาง 2 ชิ้น/ชุด ทำจากโพลีคาร์บอเนตและเอบีเอส ผิวสัมผัสแบบ sand pressing pattern\r\n- เพียงรูดซิปก็สามารถขยายเพิ่มความจุ เมื่อต้องการเพิ่มพื้นที่ของกระเป๋า\r\n- กระเป๋าซิป มีระบบความปลอดภัย TSA\r\n- คันชักคู่ทำจากอะลูมิเนียมคุณภาพดี พร้อมหูหิ้วเหม', 'https://www.indexlivingmall.com/_next/image?url=https%3A%2F%2Fmedia.indexlivingmall.com%2Fmedia%2Fcatalog%2Fproduct%2F1%2F7%2F170129730_cr_JED_DGY.jpg&w=1920&q=75'),
(4002, 'Travel_Equipment', 'ชุดกระเป๋าเดินทาง รุ่นเจ๊ต (2 ชิ้น/ชุด)', 3500, NULL, NULL, NULL, NULL, '- ชุดกระเป๋าเดินทาง 2 ชิ้น/ชุด ทำจากโพลีคาร์บอเนตและเอบีเอส ผิวสัมผัสแบบ sand pressing pattern\r\n- เพียงรูดซิปก็สามารถขยายเพิ่มความจุ เมื่อต้องการเพิ่มพื้นที่ของกระเป๋า\r\n- กระเป๋าซิป มีระบบความปลอดภัย TSA\r\n- คันชักคู่ทำจากอะลูมิเนียมคุณภาพดี พร้อมหูหิ้วเหม', 'https://www.indexlivingmall.com/_next/image?url=https%3A%2F%2Fmedia.indexlivingmall.com%2Fmedia%2Fcatalog%2Fproduct%2F1%2F7%2F170129729_cr_JED_SB.jpg&w=1920&q=75'),
(4003, 'Travel_Equipment', 'กระเป๋าเดินทางขยายได้ รุ่นเจย์ด้า ขนาด 20 นิ้ว ', 2400, NULL, NULL, NULL, NULL, '- กระเป๋าเดินทางขยายได้ ขนาด 20 นิ้ว ขนาดถือขึ้นเครื่อง ทำจากโพลีคาร์บอเนตและเอบีเอส ผิวสัมผัสเป็นแบบเนื้อด้าน\r\n- กระเป๋าซิปพร้อมซิปขยาย มีระบบความปลอดภัย TSA\r\n- เพียงรูดซิปก็สามารถขยายเพิ่มความจุ เมื่อต้องการเพิ่มพื้นที่ของกระเป๋า\r\n- คันชักคู่ทำจากอะลูมิ', 'https://www.indexlivingmall.com/_next/image?url=https%3A%2F%2Fmedia.indexlivingmall.com%2Fmedia%2Fcatalog%2Fproduct%2F1%2F7%2F170129726_c_JAYDA_GN.jpg&w=1920&q=75'),
(4004, 'Travel_Equipment', 'กระเป๋าเดินทาง รุ่นคาเทร่า ขนาด 20 นิ้ว', 1950, NULL, NULL, NULL, NULL, '- วัสดุยืดหยุ่น, ทนทาน, น้ำหนักเบา, สะดวกต่อการใช้งานด้วยล้อ 4 ล้อ\r\n- มีซิปด้านหน้าสามารถขยายกระเป๋าให้จุได้เยอะขึ้น \r\n- ตัวล็อคระบบ TSA\r\n- รับน้ำหนักได้สูงสุด 12 กิโลกรัม\r\n- ทำจากเอบีเอส', 'https://www.indexlivingmall.com/_next/image?url=https%3A%2F%2Fmedia.indexlivingmall.com%2Fmedia%2Fcatalog%2Fproduct%2F1%2F7%2F170100635_c_Cartera_SV.JPG&w=1920&q=75'),
(4005, 'Travel_Equipment', 'กระเป๋าล้อลาก  รุ่น มูนิค ขนาด 21 นิ้ว', 1500, NULL, NULL, NULL, NULL, '- ขนาด 21 นิ้ว \r\n- ผลิตมาจากผ้าโพลีเอสเตอร์คุณภาพ 100%\r\n- กระเป๋าล้อลากแบบ Cabin size ความจุ 36 ลิตร\r\n- มาพร้อม 4 ล้อ ระบบคันชักปรับระดับพร้อมปุ่มกดอย่างดี\r\n- Cabin size สามารถนำขึ้นเครื่องได้ น้ำหนักเบา\r\n- ด้านหน้ามีช่องสำหรับเก็บของ มีซิปรูดอย่างดี\r\n- ใ', 'https://www.indexlivingmall.com/_next/image?url=https%3A%2F%2Fmedia.indexlivingmall.com%2Fmedia%2Fcatalog%2Fproduct%2F1%2F7%2F170111488_1562920020085AVcg_1.jpg&w=1920&q=75'),
(5001, 'office', 'ชุดโต๊ะประชุม รุ่นแอคทีฟ พร้อมเก้าอี้สำนักงาน รุ่นท๊อปเปอร์ 6 ที่นั่ง', 15900, NULL, NULL, NULL, NULL, NULL, 'https://media.indexlivingmall.com/media/catalog/product/cache/29b3f741dcafc528943c644b5c704259/1/1/110041522_1680768671999DRuc.jpg'),
(5002, 'office', 'ชุดโต๊ะทำงานขาเหล็ก 4 ที่นั่ง พร้อมแผ่นกั้น รุ่นแอคทีฟ', 11590, NULL, NULL, NULL, NULL, '- แอคทีฟ ชุดโต๊ะทำงาน ขนาด 240 ซม. ขาเหล็ก 4 ที่นั่ง พร้อมแผ่นสกรีนไม้กั้น ขนาด 100 ซม.\r\n- โต๊ะทำงานไม้ ออกแบบดีไซน์เพื่อรองรับการทำงานที่เรียบง่าย \r\n- แข็งแรง ทนทาน รองรับทุกการใช้งานในแบบที่เป็นคุณ\r\n- ดีไซน์แบบขาเหล็ก พร้อมแผ่นบังโป๊และรูร้อยสายไฟฝาครอบ', 'https://www.indexlivingmall.com/_next/image?url=https%3A%2F%2Fmedia.indexlivingmall.com%2Fmedia%2Fcatalog%2Fproduct%2Fcache%2F29b3f741dcafc528943c644b5c704259%2F1%2F1%2F110041512_1679285164958LOft.jpg&w=1920&q=75'),
(5003, 'office', 'ชุดโต๊ะทำงานขาไม้ 4 ที่นั่ง พร้อมแผ่นกั้น รุ่นแอคทีฟ', 11900, NULL, NULL, NULL, NULL, '- แอคทีฟ ชุดโต๊ะทำงาน ขนาด 240 ซม. ขาไม้ 4 ที่นั่ง มาพร้อมแผ่นสกรีนไม้กั้น ขนาด 100 ซม.\r\n- โต๊ะทำงานไม้ ออกแบบดีไซน์เพื่อรองรับการทำงานที่เรียบง่าย\r\n- แข็งแรง ทนทาน รองรับทุกการใช้งานในแบบที่เป็นคุณ\r\n- ดีไซน์แบบขาไม้ พร้อมแผ่นบังโป๊และรูร้อยสายไฟฝาครอบพลา', 'https://www.indexlivingmall.com/_next/image?url=https%3A%2F%2Fmedia.indexlivingmall.com%2Fmedia%2Fcatalog%2Fproduct%2Fcache%2F29b3f741dcafc528943c644b5c704259%2F1%2F1%2F110041510_1679282471677edhZ.jpg&w=1920&q=75');

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
