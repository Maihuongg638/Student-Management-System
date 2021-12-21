-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 19, 2021 lúc 07:04 AM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `test`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chuyen_nganh`
--

CREATE TABLE `chuyen_nganh` (
  `Ma_Nganh` varchar(10) NOT NULL,
  `Ten_Nganh` varchar(100) NOT NULL,
  `Mo_Ta` text NOT NULL,
  `Ma_Khoa` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `chuyen_nganh`
--

INSERT INTO `chuyen_nganh` (`Ma_Nganh`, `Ten_Nganh`, `Mo_Ta`, `Ma_Khoa`) VALUES
('7140209', 'Sưu phạm toán học', 'Ngành Sư phạm Toán học (tiếng Anh là Mathematics Teacher Education) là ngành đào tạo giáo viên chất lượng cao bậc Phổ thông và bậc Đại học có kiến thức về khoa học cơ bản, khoa học giáo dục, có năng lực sư phạm đáp ứng được yêu cầu của sự nghiệp đổi mới giáo dục, đào tạo hiện nay ở nước ta; đồng thời có thể học tiếp lên bậc cao hơn và tự học để hoàn thiện và nâng cao năng lực làm việc.', 'SP001'),
('7140211', 'Sưu phạm Vật lý', 'Ngành Sư phạm Vật lý (tiếng Anh là Physics Teacher Education) là ngành đào tạo các Cử nhân Sư phạm Vật lý có trình độ chuyên môn, nghiệp vụ, phẩm chất đạo đức nghề nghiệp để giảng dạy tại các trường phổ thông, cao đẳng, đại học và các cơ sở nghiên cứu khoa học trong cả nước.', 'SP001'),
('7140212', 'Sưu phạm hóa học', 'Ngành Sư phạm Hóa học (tiếng Anh là Chemistry Teacher Education) là ngành đào tạo cử nhân Sư phạm Hóa học có đủ phẩm chất và năng lực để tham gia hoạt động giáo dục và giảng dạy hóa học bậc phổ thông trung học, các trường trung cấp chuyên nghiệp và dạy nghề; tham gia công tác nghiên cứu khoa học giáo dục và khoa học cơ bản tại các viện, các trung tâm nghiên cứu.', 'SP001'),
('7140217', 'Sưu phạm ngữ văn', 'Ngành Sư phạm Ngữ văn (tiếng Anh là Literature and Linguistics Teacher Education) là ngành đào tạo giáo viên có khả năng giảng dạy môn Ngữ văn tại các trường phổ thông đại trà, trường chuyên, trường chất lượng cao và các cơ sở giáo dục chuyên nghiệp; có năng lực chuyên môn, có sức khỏe tốt phục vụ cho việc đổi mới chương trình giáo dục phổ thông nhằm nâng cao chất lượng giáo dục toàn diện thế hệ trẻ, đáp ứng yêu cầu phát triển nguồn nhân lực cho sự nghiệp công nghiệp hóa, hiện đại hóa đất nước.', 'SP001'),
('7140219', 'Sưu phạm tiếng anh', 'Sư phạm Tiếng Anh (tiếng Anh là English Language Teacher Education) là ngành đào tạo cử nhân Sư phạm Tiếng Anh có trình độ chuyên môn, nghiệp vụ, phẩm chất đạo đức nghề nghiệp để giảng dạy tiếng Anh ở các cấp học phổ thông, các trường sư phạm, các khoa sư phạm tiếng Anh của các trường cao đẳng, đại học ở Việt Nam; có khả năng học ở các trình độ cao hơn.', 'SP001'),
('7340101', 'Quản trị kinh doanh', 'Quản trị kinh doanh là ngành học luôn xếp vào hàng TOP các ngành được thí sinh đặc biệt ưu ái, đăng ký lựa chọn trong các kỳ tuyển sinh đại học. Lý do chọn cũng khá nhiều nhưng đa số là vì ngành học hot, cơ hội việc làm đa dạng… ra trường có thể làm sếp người ta.', 'KT001'),
('7340201', 'Tài chính - Ngân hàng', 'Tài chính Ngân hàng là ngành gì? Đây là ngành học rộng, cốt lõi là liên quan đến các dịch vụ giao dịch tài chính, lưu thông và vận hành tiền tệ. Cụ thể hơn, Tài chính Ngân hàng là kinh doanh về lĩnh vực tiền tệ thông qua ngân hàng và các công cụ tài chính được ngân hàng phát hành nhằm bảo lãnh, thanh toán, chi trả trong nội địa và quốc tế.', 'KT001'),
('7340301', 'Kế toán', 'Kế toán (tiếng Anh là Accountant) là công việc ghi chép, thu nhận, xử lý và cung cấp các thông tin về tình hình hoạt động tài chính của một tổ chức, một doanh nghiệp, một cơ quan nhà nước, một cơ sở kinh doanh tư nhân... Đối tượng của Kế toán chính là sự hình thành, biến động của tài sản mà kế toán cần phản ánh, được thể hiện ở hai mặt là tài sản và nguồn vốn trong quá trình hoạt động của đơn vị.', 'KT001'),
('7480201', 'Mạng máy tính', 'Mạng máy tính và truyền thông dữ liệu bao gồm việc thiết kế, xây dựng, vận hành toàn bộ hạ tầng truyền tải thông tin và thiết kế, xây dựng, quản trị toàn bộ hệ thống và mạng máy tính, quản trị người sử dụng, giám sát và điều phối các hoạt động khác liên quan đến toàn bộ hệ thống, mạng máy tính. ', 'CN001'),
('7480202', 'Trí tuệ nhân tạo', 'Trí tuệ nhân tạo (AI) là ngành tạo ra máy móc và hệ thống thông minh thông qua việc sử dụng mô hình máy tính, kỹ thuật và công nghệ liên quan, giúp thực hiện các công việc yêu cầu trí thông minh của con người. Nhìn chung, đây là một ngành học rất rộng, bao gồm các yếu tố tâm lý học, khoa học máy tính và kỹ thuật. Một số ví dụ phổ biến về AI có thể kể đến ô tô tự lái, phần mềm dịch thuật tự động, trợ lý ảo trên điện thoại hay đối thủ ảo khi chơi trò chơi trên điện thoại. ', 'CN001'),
('7504101', 'Dược sĩ', 'Xuất phát từ nhu cầu được chăm sóc sức khỏe ngày càng tăng cao trong thời đại mới, chuyên ngành Dược sĩ Đại học hiện đang là một trong những ngành thu hút sự quan tâm của đông đảo các thí sinh và phụ huynh vào mỗi mùa tuyển sinh. Là một ngành thuộc khối Khoa học Sức khỏe hỗ trợ bệnh nhân trong việc sử dụng thuốc và bào chế thuốc,  sinh viên theo học ngành Dược sĩ Đại học sẽ được trang bị kiến thức và kỹ năng về dược phẩm như nghiên cứu, sản xuất, lưu thông phân phối, đảm bảo chất lượng, quản lý dược, hướng dẫn sử dụng thuốc cho mọi người,... Dược học dựa trên nhiều ngành khoa học khác nhau, nhưng chủ yếu và cơ bản nhất là Hoá học và Sinh học. ', 'YH001'),
('7504102', 'Nha sĩ', 'Nha sĩ là nghề nghiệp đáng mơ ước nhưng việc học và thi vào ngành này không phải dễ dàng. Dù vậy, một nha sĩ giàu kinh nghiệm cho rằng, chỉ cần đủ khát khao bạn có thể học và trở thành nha sĩ.', 'YH001'),
('7504103', 'Cơ Xương khướp', 'Cơ Xương khướp là một phân ngành y khoa thuộc khối lâm sàng, giữ chức năng khám chữa và khắc phục những tổn thương và rối loạn bệnh lý hệ vận động cơ, xương, khớp.\r\n\r\nKhoa Cơ Xương Khớp thông thường được phân biệt thành 2 chuyên khoa nhỏ: Nội Cơ Xương Khớp và Ngoại Cơ Xương Khớp.', 'YH001'),
('7620105', 'Chăn nuôi', 'Sự gia tăng về số lượng, quy mô của doanh nghiệp chăn nuôi cùng với xu hướng sản xuất theo chuỗi khép kín từ thức ăn chăn nuôi đến trang trại và thực phẩm đã tạo ra nhu cầu lớn về nhân lực ngành Chăn nuôi với mức lương hấp dẫn và chế độ đãi ngộ tốt. Mức lương phổ biến của nhân viên ngành này dao động từ 10 đến 15 triệu/ tháng, với những người tham gia hoạt động kinh doanh về chăn nuôi, mức lương có thể lên tới 20-25 triệu/ tháng. Đặc biệt, với các nhân viên làm việc tại các cơ sở chăn nuôi của những nước phát triển như: Nhật Bản, Đan Mạch, Israel … mức lương từ 40-50 triệu/tháng.', 'MT001'),
('7620109', 'Nông học', 'Nông học là một ngành khoa học và kỹ nghệ nghiên cứu ứng dụng các loại thực vật thành thực phẩm, nhiên liệu, thức ăn gia súc và lấy chất xơ. Nông học bao gồm các ngành di truyền học về thực vật, sinh lý thực vật, khí tượng học và khoa học về đất trồng trọt.', 'MT001'),
('7620112', 'Bảo vệ thực vật', 'Ngành Bảo vệ thực vật luôn đóng vai trò quan trọng sản xuất nông nghiệp nói chung và trồng trọt nói riêng. Bên cạnh sứ mệnh bảo vệ sản xuất cây trồng nông nghiệp, ngành này đã mang lại giá trị hiệu quả thiết thực cho người dân là nâng cao sản lượng và giá trị hàng hóa, tăng thu nhập trên cùng đơn vị diện tích cây trồng. Đặc biệt, ngành còn đóng góp quan trọng cho việc cải thiện rõ rệt công tác bảo vệ môi trường và sức khỏe cộng đồng.', 'MT001'),
('7620205', 'Lâm sinh', 'Ngành Lâm sinh (Silviculture) là ngành đào tạo các cán bộ Lâm sinh có trình độ chuyên môn trong lĩnh vực nghiên cứu, quản lý, bảo tồn và sử dụng hệ sinh thái rừng đặc biệt ở vùng đồng bằng, có kiến thức cơ bản và thực tế về hệ sinh thái rừng.', 'MT001'),
('7810103', 'Quản trị dịch vụ du lịch và lữ hành', 'Ngành Quản trị dịch vụ du lịch và lữ hành (tiếng Anh là Tourism and Hospitality Management) là ngành học bao gồm các hoạt động liên quan đến quá trình quản lý và điều hành du lịch. Bên cạnh phụ trách phân công công việc và quản lý công việc nhóm hướng dẫn viên du lịch, sinh viên tốt nghiệp ngành học này còn chịu trách nhiệm thiết kế, quản lý và điều hành công việc của nhiều bộ phận, phòng ban khác để phát triển các sản phẩm du lịch.', 'KT001');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dang_ky`
--

CREATE TABLE `dang_ky` (
  `Ma_SV` varchar(10) NOT NULL,
  `Ma_MH` varchar(10) NOT NULL,
  `Hoc_Ky` int(11) NOT NULL,
  `Diem_QT` double NOT NULL,
  `Diem_GK` double NOT NULL,
  `Diem_CK` double NOT NULL,
  `Trang_Thai` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `dang_ky`
--

INSERT INTO `dang_ky` (`Ma_SV`, `Ma_MH`, `Hoc_Ky`, `Diem_QT`, `Diem_GK`, `Diem_CK`, `Trang_Thai`) VALUES
('SV002', 'MH009', 1, 9.8, 10, 9.3, '1'),
('SV002', 'MH010', 1, 7, 8, 8.5, '1'),
('SV003', 'MH011', 1, 4.7, 6.2, 9.8, '1'),
('SV003', 'MH012', 1, 7.3, 5.9, 6.7, '1'),
('SV003', 'MH013', 1, 9.6, 8.7, 9.2, '1'),
('SV003', 'MH014', 1, 6.4, 7.2, 8.9, '1'),
('SV003', 'MH015', 1, 6.7, 8.2, 9.5, '1'),
('SV004', 'MH016', 1, 9.8, 6.4, 7.4, '1'),
('SV004', 'MH017', 1, 6.5, 8.7, 8.3, '0'),
('SV004', 'MH018', 1, 8, 8, 8, '1'),
('SV004', 'MH019', 1, 7, 8, 8.5, '1'),
('SV004', 'MH020', 1, 4.7, 6.2, 9.8, '1'),
('SV005', 'MH021', 1, 7.3, 5.9, 6.7, '1'),
('SV005', 'MH022', 1, 6.4, 7.2, 8.9, '1'),
('SV005', 'MH023', 1, 6.7, 8.2, 9.5, '0'),
('SV005', 'MH024', 1, 9.8, 6.4, 7.4, '1'),
('SV005', 'MH025', 1, 6.5, 8.7, 8.3, '1'),
('SV006', 'MH026', 1, 7.9, 6.8, 9.4, '1'),
('SV006', 'MH027', 1, 7.3, 8.7, 5.1, '1'),
('SV006', 'MH028', 1, 10, 6.5, 8.4, '1'),
('SV006', 'MH029', 1, 7.9, 8.1, 5.76, '1'),
('SV006', 'MH030', 1, 7, 8, 8.5, '1'),
('SV007', 'MH031', 1, 4.7, 6.2, 9.8, '1'),
('SV007', 'MH032', 1, 7.3, 5.9, 6.7, '1'),
('SV007', 'MH033', 1, 6.4, 7.2, 8.9, '1'),
('SV007', 'MH034', 1, 7.3, 5.9, 6.7, '1'),
('SV007', 'MH035', 1, 9.6, 8.7, 9.2, '1'),
('SV008', 'MH036', 1, 7.8, 6.75, 7.8, '1'),
('SV008', 'MH037', 1, 9, 7.8, 6.9, '1'),
('SV008', 'MH038', 1, 9.8, 10, 9.3, '1'),
('SV008', 'MH039', 1, 7, 8, 8.5, '1'),
('SV008', 'MH040', 1, 6.9, 8.3, 7.4, '1'),
('SV009', 'MH041', 1, 8.6, 6.7, 8.4, '1'),
('SV009', 'MH042', 1, 9.6, 8.7, 9.2, '1'),
('SV009', 'MH043', 1, 6.4, 7.2, 8.9, '1'),
('SV009', 'MH044', 1, 6.5, 8.7, 8.3, '1'),
('SV009', 'MH045', 1, 8, 8, 8, '1'),
('SV010', 'MH046', 1, 7, 8, 8.5, '1'),
('SV010', 'MH047', 1, 4.7, 6.2, 9.8, '1'),
('SV010', 'MH048', 1, 7.3, 5.9, 6.7, '1'),
('SV010', 'MH049', 1, 7, 8, 8.5, '1'),
('SV010', 'MH050', 1, 4.7, 6.2, 9.8, '1'),
('SV011', 'MH051', 1, 7.3, 5.9, 6.7, '0'),
('SV011', 'MH052', 1, 6.4, 7.2, 8.9, '0'),
('SV011', 'MH053', 1, 7.3, 5.9, 6.7, '1'),
('SV011', 'MH054', 1, 9.6, 8.7, 9.2, '1'),
('SV011', 'MH055', 1, 7.8, 6.75, 7.8, '1'),
('SV012', 'MH056', 1, 9, 7.8, 6.9, '1'),
('SV012', 'MH057', 1, 9.8, 10, 9.3, '1'),
('SV012', 'MH058', 1, 7, 8, 8.5, '1'),
('SV015', 'MH009', 1, 7.8, 6.75, 7.8, '1'),
('SV015', 'MH010', 1, 9, 7.8, 6.9, '1'),
('SV015', 'MH011', 1, 9.8, 10, 9.3, '1'),
('SV016', 'MH012', 1, 7, 8, 8.5, '1'),
('SV016', 'MH013', 1, 6.7, 8.2, 9.5, '1'),
('SV016', 'MH014', 1, 9.8, 6.4, 7.4, '1'),
('SV016', 'MH015', 1, 6.5, 8.7, 8.3, '1'),
('SV016', 'MH016', 1, 9.6, 8.7, 9.2, '1'),
('SV017', 'MH017', 1, 6.4, 7.2, 8.9, '1'),
('SV017', 'MH018', 1, 6.5, 8.7, 8.3, '1'),
('SV017', 'MH019', 1, 8, 8, 8, '1'),
('SV017', 'MH020', 1, 7, 8, 8.5, '1'),
('SV017', 'MH021', 1, 4.7, 6.2, 9.8, '1'),
('SV018', 'MH022', 1, 7.3, 5.9, 6.7, '1'),
('SV018', 'MH023', 1, 5.6, 7.4, 6.9, '1'),
('SV018', 'MH024', 1, 9.4, 7.9, 8.5, '1'),
('SV018', 'MH025', 1, 6.8, 8.7, 7.3, '1'),
('SV018', 'MH026', 1, 8, 2.7, 6.3, '1'),
('SV022', 'MH042', 1, 9.8, 10, 9.3, '1'),
('SV022', 'MH043', 1, 7, 8, 8.5, '1'),
('SV022', 'MH044', 1, 9.6, 8.7, 9.2, '1'),
('SV022', 'MH045', 1, 6.4, 7.2, 8.9, '1'),
('SV022', 'MH046', 1, 8.7, 4.8, 6.7, '1'),
('SV023', 'MH047', 1, 7, 8, 8.5, '1'),
('SV023', 'MH048', 1, 4.7, 6.2, 9.8, '1'),
('SV023', 'MH049', 1, 7.3, 5.9, 6.7, '1'),
('SV023', 'MH050', 1, 6.4, 7.2, 8.9, '1'),
('SV023', 'MH051', 1, 7.3, 5.9, 6.7, '1'),
('SV024', 'MH052', 1, 9.6, 8.7, 9.2, '1'),
('SV024', 'MH053', 1, 7.8, 6.75, 7.8, '1'),
('SV024', 'MH054', 1, 9, 7.8, 6.9, '1'),
('SV024', 'MH055', 1, 9.8, 10, 9.3, '1'),
('SV024', 'MH056', 1, 7, 8, 8.5, '1'),
('SV025', 'MH057', 1, 9.6, 8.7, 9.2, '1'),
('SV025', 'MH058', 1, 6.4, 7.2, 8.9, '1'),
('SV033', 'MH033', 1, 7, 8, 8.5, '1'),
('SV033', 'MH034', 1, 4.7, 6.2, 9.8, '1'),
('SV033', 'MH035', 1, 7.3, 5.9, 6.7, '1'),
('SV033', 'MH036', 1, 9.6, 8.7, 9.2, '1'),
('SV033', 'MH037', 1, 7.6, 9.3, 8.7, '1'),
('SV034', 'MH038', 1, 9.3, 4.8, 6.5, '1'),
('SV034', 'MH039', 1, 7.3, 5.9, 6.7, '1'),
('SV034', 'MH040', 1, 9.6, 8.7, 9.2, '1'),
('SV034', 'MH041', 1, 7.8, 6.75, 7.8, '1'),
('SV034', 'MH042', 1, 9, 7.8, 6.9, '1'),
('SV035', 'MH043', 1, 9.8, 10, 9.3, '1'),
('SV035', 'MH044', 1, 7, 8, 8.5, '1'),
('SV035', 'MH045', 1, 6.4, 7.2, 8.9, '1'),
('SV035', 'MH046', 1, 7.3, 5.9, 6.7, '1'),
('SV035', 'MH047', 1, 6.5, 8.7, 8.3, '1'),
('SV036', 'MH048', 1, 8, 8, 8, '1'),
('SV036', 'MH049', 1, 7.8, 6.75, 7.8, '1'),
('SV036', 'MH050', 1, 9, 7.8, 6.9, '1'),
('SV036', 'MH051', 1, 9.8, 10, 9.3, '1'),
('SV036', 'MH052', 1, 7, 8, 8.5, '1'),
('SV037', 'MH053', 1, 6.5, 8.7, 8.3, '1'),
('SV037', 'MH054', 1, 7.9, 5.6, 7.1, '1'),
('SV037', 'MH055', 1, 7.3, 5.9, 6.7, '1'),
('SV037', 'MH056', 1, 9.6, 8.7, 9.2, '1'),
('SV037', 'MH057', 1, 7.8, 6.75, 7.8, '1'),
('SV038', 'MH058', 1, 9, 7.8, 6.9, '1'),
('SV041', 'MH009', 1, 8, 2.7, 6.3, '0'),
('SV041', 'MH010', 1, 6.4, 7.2, 8.9, '0'),
('SV041', 'MH011', 1, 6.5, 8.7, 8.3, '0'),
('SV041', 'MH012', 1, 8.4, 7.8, 8, '1'),
('SV041', 'MH013', 1, 7, 8, 8.5, '1'),
('SV050', 'MH052', 1, 8.1, 5.7, 6.3, '1'),
('SV050', 'MH053', 1, 9.8, 10, 9.3, '1'),
('SV050', 'MH054', 1, 7, 8, 8.5, '1'),
('SV050', 'MH055', 1, 6.4, 7.2, 8.9, '1'),
('SV051', 'MH056', 1, 7.3, 5.9, 6.7, '1'),
('SV051', 'MH057', 1, 6.5, 8.7, 8.3, '1'),
('SV051', 'MH058', 1, 7.9, 9.2, 8.6, '1'),
('SV054', 'MH009', 1, 8, 2.7, 6.3, '1'),
('SV055', 'MH010', 1, 6.4, 7.2, 8.9, '1'),
('SV055', 'MH011', 1, 6.5, 8.7, 8.3, '1'),
('SV055', 'MH012', 1, 8, 7.3, 8, '1'),
('SV055', 'MH013', 1, 9.6, 8.7, 9.2, '1'),
('SV055', 'MH014', 1, 7.8, 6.75, 7.8, '1'),
('SV056', 'MH015', 1, 9, 7.8, 6.9, '1'),
('SV056', 'MH016', 1, 9.8, 10, 9.3, '1'),
('SV056', 'MH017', 1, 7, 8, 8.5, '1'),
('SV056', 'MH018', 1, 6.4, 7.2, 8.9, '1'),
('SV056', 'MH019', 1, 7.3, 5.9, 6.7, '1'),
('SV057', 'MH020', 1, 6.5, 8.7, 8.3, '1'),
('SV057', 'MH021', 1, 6.9, 8, 8.3, '1'),
('SV057', 'MH022', 1, 7.8, 6.75, 7.8, '1'),
('SV057', 'MH023', 1, 9, 7.8, 6.9, '1'),
('SV057', 'MH024', 1, 9.8, 10, 9.3, '1'),
('SV058', 'MH025', 1, 7, 8, 8.5, '1'),
('SV058', 'MH026', 1, 6.5, 8.7, 8.3, '1'),
('SV058', 'MH027', 1, 7.9, 5.6, 7.1, '1'),
('SV058', 'MH028', 1, 7.3, 5.9, 6.7, '1'),
('SV058', 'MH029', 1, 9.6, 8.7, 9.2, '1'),
('SV059', 'MH030', 1, 7.8, 6.75, 7.8, '1'),
('SV059', 'MH031', 1, 9, 7.8, 6.9, '1'),
('SV059', 'MH032', 1, 9.8, 10, 9.3, '1'),
('SV059', 'MH033', 1, 7, 8, 8.5, '1'),
('SV059', 'MH034', 1, 7.3, 5.9, 6.7, '0'),
('SV060', 'MH035', 1, 5.6, 7.4, 6.9, '0'),
('SV060', 'MH036', 1, 9.4, 7.9, 8.5, '1'),
('SV060', 'MH037', 1, 6.8, 8.7, 7.3, '1'),
('SV060', 'MH038', 1, 8, 2.7, 6.3, '1'),
('SV060', 'MH039', 1, 6.4, 7.2, 8.9, '1'),
('SV061', 'MH040', 1, 6.5, 8.7, 8.3, '1'),
('SV061', 'MH041', 1, 7.8, 6.75, 7.8, '1'),
('SV061', 'MH042', 1, 9, 7.8, 6.9, '1'),
('SV061', 'MH043', 1, 9.8, 10, 9.3, '1'),
('SV061', 'MH044', 1, 7, 8, 8.5, '1'),
('SV062', 'MH045', 1, 4.7, 6.2, 9.8, '1'),
('SV062', 'MH046', 1, 7.3, 5.9, 6.7, '1'),
('SV062', 'MH047', 1, 9.6, 8.7, 9.2, '1'),
('SV062', 'MH048', 1, 6.4, 7.2, 8.9, '1'),
('SV062', 'MH049', 1, 6.7, 8.2, 9.5, '1'),
('SV063', 'MH050', 1, 9.8, 6.4, 7.4, '1'),
('SV063', 'MH051', 1, 9.8, 10, 9.3, '1'),
('SV063', 'MH052', 1, 7, 8, 8.5, '1'),
('SV063', 'MH053', 1, 7.3, 5.9, 6.7, '1'),
('SV063', 'MH054', 1, 5.6, 7.4, 6.9, '1'),
('SV064', 'MH055', 1, 9.4, 7.9, 8.5, '1'),
('SV064', 'MH056', 1, 6.8, 8.7, 7.3, '1'),
('SV064', 'MH057', 1, 6.8, 6.3, 5.4, '1'),
('SV064', 'MH058', 1, 7, 8, 8.5, '1'),
('SV068', 'MH009', 1, 6.8, 8.7, 7.3, '1'),
('SV068', 'MH010', 1, 8, 2.7, 6.3, '1'),
('SV068', 'MH011', 1, 6.4, 7.2, 8.9, '1'),
('SV068', 'MH012', 1, 7, 8, 8.5, '1'),
('SV069', 'MH013', 1, 4.7, 6.2, 9.8, '1'),
('SV069', 'MH014', 1, 7.3, 5.9, 6.7, '1'),
('SV069', 'MH015', 1, 6.4, 7.2, 8.9, '1'),
('SV069', 'MH016', 1, 7.3, 5.9, 6.7, '1'),
('SV069', 'MH017', 1, 6.5, 8.7, 8.3, '1'),
('SV070', 'MH018', 1, 8, 8, 8, '1'),
('SV070', 'MH019', 1, 7, 8, 8.5, '1'),
('SV070', 'MH020', 1, 4.7, 6.2, 9.8, '1'),
('SV070', 'MH021', 1, 7.3, 5.9, 6.7, '1'),
('SV071', 'MH022', 1, 9.6, 8.7, 9.2, '1'),
('SV071', 'MH023', 1, 7.8, 6.75, 7.8, '1'),
('SV071', 'MH024', 1, 9, 7.8, 6.9, '1'),
('SV071', 'MH025', 1, 4.7, 6.2, 9.8, '1'),
('SV072', 'MH026', 1, 7.3, 5.9, 6.7, '1'),
('SV072', 'MH027', 1, 6.4, 7.2, 8.9, '1'),
('SV072', 'MH028', 1, 7.3, 5.9, 6.7, '1'),
('SV072', 'MH029', 1, 6.5, 8.7, 8.3, '1'),
('SV072', 'MH030', 1, 8, 8, 8, '1'),
('SV073', 'MH031', 1, 7, 8, 8.5, '1'),
('SV073', 'MH032', 1, 4.7, 6.2, 9.8, '0'),
('SV073', 'MH033', 1, 7.3, 5.9, 6.7, '0'),
('SV073', 'MH034', 1, 9.6, 8.7, 9.2, '0'),
('SV073', 'MH035', 1, 7.8, 6.75, 7.8, '1'),
('SV074', 'MH036', 1, 9, 7.8, 6.9, '1'),
('SV074', 'MH037', 1, 6.4, 7.2, 8.9, '1'),
('SV074', 'MH038', 1, 7.3, 5.9, 6.7, '1'),
('SV074', 'MH039', 1, 6.5, 8.7, 8.3, '1'),
('SV075', 'MH040', 1, 5.7, 8, 7.6, '1'),
('SV075', 'MH041', 1, 7, 8, 8.5, '1'),
('SV075', 'MH042', 1, 4.7, 6.2, 9.8, '1'),
('SV075', 'MH043', 1, 7.3, 5.9, 6.7, '1'),
('SV076', 'MH044', 1, 6.5, 8.7, 8.3, '1'),
('SV076', 'MH045', 1, 8, 8, 8, '1'),
('SV076', 'MH046', 1, 7, 8, 8.5, '1'),
('SV076', 'MH047', 1, 4.7, 6.2, 9.8, '1'),
('SV076', 'MH048', 1, 7.3, 5.9, 6.7, '1'),
('SV077', 'MH049', 1, 9.6, 8.7, 9.2, '1'),
('SV077', 'MH050', 1, 7.8, 6.75, 7.8, '1'),
('SV077', 'MH051', 1, 9, 7.8, 6.9, '1'),
('SV077', 'MH052', 1, 9.8, 10, 9.3, '1'),
('SV077', 'MH053', 1, 7, 8, 8.5, '1'),
('SV078', 'MH054', 1, 4.7, 6.2, 9.8, '1'),
('SV078', 'MH055', 1, 7.3, 5.9, 6.7, '1'),
('SV078', 'MH056', 1, 9.6, 8.7, 9.2, '1'),
('SV078', 'MH057', 1, 6.4, 7.2, 8.9, '1'),
('SV078', 'MH058', 1, 6.7, 8.2, 9.5, '1'),
('SV082', 'MH009', 1, 6.8, 8.7, 7.3, '1'),
('SV082', 'MH010', 1, 8, 2.7, 6.3, '1'),
('SV082', 'MH011', 1, 6.4, 7.2, 8.9, '1'),
('SV082', 'MH012', 1, 6.5, 8.7, 8.3, '1'),
('SV083', 'MH013', 1, 7.8, 6.75, 7.8, '1'),
('SV083', 'MH014', 1, 9, 7.8, 6.9, '0'),
('SV083', 'MH015', 1, 9.8, 10, 9.3, '0'),
('SV083', 'MH016', 1, 7.6, 8.2, 8.5, '1'),
('SV084', 'MH017', 1, 4.7, 6.2, 9.8, '1'),
('SV084', 'MH018', 1, 7.3, 5.9, 6.7, '1'),
('SV084', 'MH019', 1, 9.6, 8.7, 9.2, '1'),
('SV084', 'MH020', 1, 7, 8, 8.5, '1'),
('SV084', 'MH021', 1, 4.7, 6.2, 9.8, '1'),
('SV085', 'MH022', 1, 7.3, 5.9, 6.7, '1'),
('SV085', 'MH023', 1, 6.4, 7.2, 8.9, '1'),
('SV085', 'MH024', 1, 9.7, 5.8, 7.4, '1'),
('SV085', 'MH025', 1, 5.6, 7.4, 6.9, '1'),
('SV085', 'MH026', 1, 7.3, 5.9, 6.7, '1'),
('SV086', 'MH027', 1, 9.6, 8.7, 9.2, '1'),
('SV086', 'MH028', 1, 7.8, 6.75, 7.8, '1'),
('SV086', 'MH029', 1, 9, 7.8, 6.9, '0'),
('SV087', 'MH030', 1, 4.7, 6.2, 9.8, '0'),
('SV087', 'MH031', 1, 7.3, 5.9, 6.7, '0'),
('SV087', 'MH032', 1, 6.4, 7.2, 8.9, '1'),
('SV087', 'MH033', 1, 9, 7.8, 6.9, '1'),
('SV087', 'MH034', 1, 6.4, 7.2, 8.9, '1'),
('SV088', 'MH035', 1, 7.3, 5.9, 6.7, '1'),
('SV088', 'MH036', 1, 6.5, 8.7, 8.3, '1'),
('SV088', 'MH037', 1, 5.7, 8, 7.6, '1'),
('SV088', 'MH038', 1, 7, 8, 8.5, '1'),
('SV089', 'MH039', 1, 4.7, 6.2, 9.8, '1'),
('SV089', 'MH040', 1, 6.7, 8.2, 9.5, '1'),
('SV089', 'MH041', 1, 9.8, 6.4, 7.4, '1'),
('SV089', 'MH042', 1, 7.3, 5.9, 6.7, '1'),
('SV089', 'MH043', 1, 5.6, 7.4, 6.9, '1'),
('SV089', 'MH044', 1, 9.4, 7.9, 8.5, '1'),
('SV090', 'MH045', 1, 6.8, 8.7, 7.3, '1'),
('SV090', 'MH046', 1, 8, 2.7, 6.3, '1'),
('SV090', 'MH047', 1, 6.4, 7.2, 8.9, '1'),
('SV090', 'MH048', 1, 7, 8, 8.5, '1'),
('SV090', 'MH049', 1, 4.7, 6.2, 9.8, '1'),
('SV091', 'MH050', 1, 7.3, 5.9, 6.7, '1'),
('SV091', 'MH051', 1, 6.4, 7.2, 8.9, '1'),
('SV091', 'MH052', 1, 9.7, 5.8, 7.4, '1'),
('SV091', 'MH053', 1, 5.6, 7.4, 6.9, '1'),
('SV092', 'MH054', 1, 9.4, 7.9, 8.5, '1'),
('SV092', 'MH055', 1, 6.8, 8.7, 7.3, '0'),
('SV092', 'MH056', 1, 8, 2.7, 6.3, '0'),
('SV092', 'MH057', 1, 6.4, 7.2, 8.9, '0'),
('SV092', 'MH058', 1, 9.6, 8.7, 9.2, '1'),
('SV095', 'MH009', 1, 10, 6.5, 8.4, '1'),
('SV095', 'MH010', 1, 7.9, 8.1, 5.76, '1'),
('SV096', 'MH011', 1, 7, 8, 8.5, '1'),
('SV096', 'MH012', 1, 4.7, 6.2, 9.8, '1'),
('SV096', 'MH013', 1, 7.3, 5.9, 6.7, '1'),
('SV096', 'MH014', 1, 6.4, 7.2, 8.9, '1'),
('SV097', 'MH015', 1, 7.3, 5.9, 6.7, '1'),
('SV097', 'MH016', 1, 9.6, 8.7, 9.2, '1'),
('SV097', 'MH017', 1, 6.4, 7.2, 8.9, '1'),
('SV097', 'MH018', 1, 6.7, 8.2, 9.5, '1'),
('SV097', 'MH019', 1, 9.8, 6.4, 7.4, '1'),
('SV098', 'MH020', 1, 6.5, 8.7, 8.3, '1'),
('SV098', 'MH021', 1, 6.4, 7.2, 8.9, '1'),
('SV098', 'MH022', 1, 7.3, 5.9, 6.7, '1'),
('SV098', 'MH023', 1, 4.7, 6.2, 9.8, '1'),
('SV098', 'MH024', 1, 7.3, 5.9, 6.7, '1'),
('SV099', 'MH025', 1, 6.4, 7.2, 8.9, '0'),
('SV099', 'MH026', 1, 6.7, 8.2, 9.5, '0'),
('SV099', 'MH027', 1, 9.8, 6.4, 7.4, '1'),
('SV099', 'MH028', 1, 6.5, 8.7, 8.3, '1'),
('SV099', 'MH029', 1, 7.9, 6.8, 9.4, '1'),
('SV100', 'MH030', 1, 7.3, 8.7, 5.1, '1'),
('SV100', 'MH031', 1, 10, 6.5, 8.4, '1'),
('SV100', 'MH032', 1, 7.9, 8.1, 5.76, '1'),
('SV100', 'MH033', 1, 7, 8, 8.5, '0'),
('SV100', 'MH034', 1, 4.7, 6.2, 9.8, '1'),
('SV100', 'MH035', 1, 7.3, 5.9, 6.7, '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giang_day`
--

CREATE TABLE `giang_day` (
  `Ma_GV` varchar(10) NOT NULL,
  `Ma_MH` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `giang_day`
--

INSERT INTO `giang_day` (`Ma_GV`, `Ma_MH`) VALUES
('GV003', 'MH009'),
('GV003', 'MH010'),
('GV003', 'MH011'),
('GV004', 'MH053'),
('GV004', 'MH054'),
('GV004', 'MH055'),
('GV005', 'MH009'),
('GV005', 'MH010'),
('GV005', 'MH011'),
('GV007', 'MH032'),
('GV007', 'MH033'),
('GV007', 'MH034'),
('GV007', 'MH035'),
('GV007', 'MH037'),
('GV007', 'MH038'),
('GV009', 'MH056'),
('GV009', 'MH057 '),
('GV009', 'MH058'),
('GV010', 'MH009'),
('GV010', 'MH010'),
('GV010', 'MH011'),
('GV010', 'MH012'),
('GV010', 'MH013'),
('GV010', 'MH014'),
('GV010', 'MH015'),
('GV010', 'MH016'),
('GV010', 'MH017'),
('GV011', 'MH009'),
('GV011', 'MH010'),
('GV011', 'MH011'),
('GV011', 'MH012'),
('GV011', 'MH013'),
('GV011', 'MH014'),
('GV011', 'MH015'),
('GV011', 'MH016'),
('GV011', 'MH017'),
('GV014', 'MH053'),
('GV014', 'MH054'),
('GV014', 'MH055'),
('GV017', 'MH009'),
('GV017', 'MH010'),
('GV017', 'MH011'),
('GV018 ', 'MH032'),
('GV018 ', 'MH033'),
('GV018 ', 'MH034'),
('GV018 ', 'MH035'),
('GV018 ', 'MH039'),
('GV018 ', 'MH040'),
('GV018 ', 'MH041'),
('GV019', 'MH012'),
('GV019', 'MH013'),
('GV019', 'MH014'),
('GV019', 'MH015'),
('GV020 ', 'MH022'),
('GV020 ', 'MH023'),
('GV020 ', 'MH024'),
('GV020 ', 'MH025'),
('GV020 ', 'MH026'),
('GV020 ', 'MH027'),
('GV020 ', 'MH028'),
('GV022', 'MH056'),
('GV022', 'MH057 '),
('GV022', 'MH058'),
('GV023', 'MH009'),
('GV023', 'MH010'),
('GV023', 'MH011'),
('GV023', 'MH012'),
('GV023', 'MH013'),
('GV023', 'MH014'),
('GV023', 'MH015'),
('GV023', 'MH016'),
('GV023', 'MH017'),
('GV024', 'MH042'),
('GV024', 'MH043'),
('GV024', 'MH044'),
('GV025', 'MH032'),
('GV025', 'MH033'),
('GV025', 'MH034'),
('GV025', 'MH035'),
('GV025', 'MH039'),
('GV025', 'MH040'),
('GV025', 'MH041'),
('GV026', 'MH032'),
('GV026', 'MH033'),
('GV026', 'MH034'),
('GV026', 'MH035'),
('GV026', 'MH045'),
('GV026', 'MH046'),
('GV026', 'MH047'),
('GV026', 'MH048'),
('GV028', 'MH053'),
('GV028', 'MH054'),
('GV028', 'MH055'),
('GV029', 'MH018'),
('GV029', 'MH019'),
('GV029', 'MH020'),
('GV030', 'MH049'),
('GV030', 'MH050'),
('GV030', 'MH051'),
('GV030', 'MH052'),
('GV031', 'MH053'),
('GV031', 'MH054'),
('GV031', 'MH055'),
('GV032', 'MH022'),
('GV032', 'MH023'),
('GV032', 'MH024'),
('GV032', 'MH025'),
('GV033', 'MH012'),
('GV033', 'MH013'),
('GV033', 'MH014'),
('GV033', 'MH015'),
('GV034', 'MH018'),
('GV034', 'MH019'),
('GV034', 'MH020'),
('GV036', 'MH026'),
('GV036', 'MH027'),
('GV036', 'MH028'),
('GV036', 'MH029'),
('GV036', 'MH030'),
('GV036', 'MH031'),
('GV038', 'MH012'),
('GV038', 'MH013'),
('GV038', 'MH014'),
('GV038', 'MH015'),
('GV039', 'MH032'),
('GV039', 'MH033'),
('GV039', 'MH034'),
('GV039', 'MH035'),
('GV039', 'MH045'),
('GV039', 'MH046');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giang_vien`
--

CREATE TABLE `giang_vien` (
  `Ma_GV` varchar(10) NOT NULL,
  `Ten_GV` varchar(100) NOT NULL,
  `Ngay_Sinh` text NOT NULL,
  `Gioi_Tinh` varchar(100) NOT NULL,
  `Bang_Cap` varchar(100) NOT NULL,
  `SDT` varchar(10) NOT NULL,
  `Dia_Chi` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Mat_Khau` varchar(100) NOT NULL,
  `Ma_Khoa` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `giang_vien`
--

INSERT INTO `giang_vien` (`Ma_GV`, `Ten_GV`, `Ngay_Sinh`, `Gioi_Tinh`, `Bang_Cap`, `SDT`, `Dia_Chi`, `Email`, `Mat_Khau`, `Ma_Khoa`) VALUES
('GV001', 'Phạm Võ Trường An', '22/03/1985', 'Nữ', 'Phó Giáo Sư', '123456789', 'Chu Văn An, Chiềng Ngần, Sơn La', 'pvtAn@teacher.utb.edu.vn', '123456789', 'SP001'),
('GV002', 'Nguyễn Kiều Anh', '11/6/1993', 'Nữ', 'Tiến Sĩ', '123456789', 'Chu Văn An, Chiềng Ngần, Sơn La', 'nkAnh@teacher.utb.edu.vn', '123456789', 'SP001'),
('GV003', 'Trịnh Quốc Anh', '2/6/1992', 'Nam', 'Thạc Sĩ', '123456789', 'Chu Văn An, Chiềng Ngần, Sơn La', 'tqAnh@teacher.utb.edu.vn', '123456789', 'SP001'),
('GV004', 'Nguyễn Đức Minh Châu', '22/8/1978', 'Nữ', 'Phó Giáo Sư', '123456789', 'Chu Văn An, Chiềng Ngần, Sơn La', 'ndmChau@teacher.utb.edu.vn', '123456789', 'SP001'),
('GV005', 'Vũ Thị Thùy Dương', '5/7/1994', 'Nữ', 'Cử Nhân', '123456789', 'Chu Văn An, Chiềng Ngần, Sơn La', 'vttDuong@teacher.utb.edu.vn', '123456789', 'SP001'),
('GV006', 'Trần Kim Điệp', '6/9/1980', 'Nam', 'Tiến Sĩ', '123456789', 'Chu Văn An, Chiềng Ngần, Sơn La', 'tkDiep@teacher.utb.edu.vn', '123456789', 'YH001'),
('GV007', 'Phạm Đông Đức', '2/3/1990', 'Nam', 'Tiến Sĩ', '123456789', 'Chu Văn An, Chiềng Ngần, Sơn La', 'pdDuc@teacher.utb.edu.vn', '123456789', 'YH001'),
('GV008', 'Lê Thị Lan Giao', '1/1/1900', 'Nữ', 'Thạc Sĩ', '123456789', 'Chu Văn An, Chiềng Ngần, Sơn La', 'ltlGiao@teacher.utb.edu.vn', '123456789', 'YH001'),
('GV009', 'Lê Thị Thúy Hằng', '5/5/1994', 'Nữ', 'Thạc Sĩ', '123456789', 'Chu Văn An, Chiềng Ngần, Sơn La', 'dtkHoan@teacher.utb.edu.vn', '123456789', 'YH001'),
('GV010', 'Dương Tấn Khải Hoàn', '1/2/1994', 'Nam', 'Thạc Sĩ', '123456789', 'Chu Văn An, Chiềng Ngần, Sơn La', 'ttHuy@teacher.utb.edu.vn', '123456789', 'YH001'),
('GV011', 'Trương Thái Huy', '9/8/1985', 'Nam', 'Phó Giáo Sư', '123456789', 'Chu Văn An, Chiềng Ngần, Sơn La', 'ttHuy@teacher.utb.edu.vn', '123456789', 'YH001'),
('GV012', 'Nguyễn Thị Mai Hương', '15/10/1994', 'Nữ', 'Tiến Sĩ', '123456789', 'Chu Văn An, Chiềng Ngần, Sơn La', 'ntmHuong@teacher.utb.edu.vn', '123456789', 'CN001'),
('GV013', 'Mai Hoàng Ngọc Khải', '2/9/1990', 'Nam', 'Thạc Sĩ', '123456789', 'Chu Văn An, Chiềng Ngần, Sơn La', 'mhnKhai@teacher.utb.edu.vn', '123456789', 'CN001'),
('GV014', 'Nguyễn Hoàng Lan', '5/7/1986', 'Nữ', 'Phó Giáo Sư', '123456789', 'Chu Văn An, Chiềng Ngần, Sơn La', 'nhLan@teacher.utb.edu.vn', '123456789', 'CN001'),
('GV015', 'Nguyễn Thị Thu Linh', '30/12/1989', 'Nữ', 'Cử Nhân', '123456789', 'Chu Văn An, Chiềng Ngần, Sơn La', 'nttLinh@teacher.utb.edu.vn', '123456789', 'CN001'),
('GV016', 'Nguyễn Thị Kim Loan', '22/4/1990', 'Nữ', 'Thạc Sĩ', '123456789', 'Chu Văn An, Chiềng Ngần, Sơn La', 'ntkLoan@teacher.utb.edu.vn', '123456789', 'CN001'),
('GV017', 'Đoàn Đức Minh', '26/4/1991', 'Nam', 'Cử Nhân', '123456789', 'Chu Văn An, Chiềng Ngần, Sơn La', 'dDMinh@teacher.utb.edu.vn', '123456789', 'CN001'),
('GV018 ', 'Đinh Trần Thảo Nhi', '26/4/1991', 'Nữ', 'Tiến Sĩ', '123456789', 'Chu Văn An, Chiềng Ngần, Sơn La', 'dttNhi@teacher.utb.edu.vn', '123456789', 'CN001'),
('GV019', 'Hoàng Phan Yến Nhi', '26/4/1991', 'Nữ', 'Thạc Sĩ', '123456789', 'Chu Văn An, Chiềng Ngần, Sơn La', 'hpyNhi@teacher.utb.edu.vn', '123456789', 'CN001'),
('GV020 ', 'Kim Hồng Nhung', '26/4/1991', 'Nữ', 'Tiến Sĩ', '123456789', 'Chu Văn An, Chiềng Ngần, Sơn La', 'khNhung@teacher.utb.edu.vn', '123456789', 'CN001'),
('GV021', 'Lê Thành Phúc', '26/4/1991', 'Nam', 'Cử Nhân', '123456789', 'Chu Văn An, Chiềng Ngần, Sơn La', 'ltPhuc@teacher.utb.edu.vn', '123456789', 'CN001'),
('GV022', 'Nguyễn Thị Diệu Phước', '26/4/1991', 'Nữ', 'Tiến Sĩ', '123456789', 'Chu Văn An, Chiềng Ngần, Sơn La', 'ntdPhuoc@teacher.utb.edu.vn', '123456789', 'KT001'),
('GV023', 'Nguyễn Thục Quyên', '26/4/1991', 'Nữ', 'Giáo Sư', '123456789', 'Chu Văn An, Chiềng Ngần, Sơn La', 'ntQuyen@teacher.utb.edu.vn', '123456789', 'KT001'),
('GV024', 'Trần Công Tâm', '26/4/1991', 'Nam', 'Tiến Sĩ', '123456789', 'Chu Văn An, Chiềng Ngần, Sơn La', 'tcTam@teacher.utb.edu.vn', '123456789', 'KT001'),
('GV025', 'Nguyễn Viết Thành', '26/4/1991', 'Nam', 'Tiến Sĩ', '123456789', 'Chu Văn An, Chiềng Ngần, Sơn La', 'ncThanh@teacher.utb.edu.vn', '123456789', 'KT001'),
('GV026', 'Lê Anh Thơ', '26/4/1991', 'Nữ', 'Tiến Sĩ', '123456789', 'Chu Văn An, Chiềng Ngần, Sơn La', 'laTho@teacher.utb.edu.vn', '123456789', 'KT001'),
('GV027', 'Nguyễn Linh Thư', '26/4/1991', 'Nữ', 'Tiến Sĩ', '123456789', 'Chu Văn An, Chiềng Ngần, Sơn La', 'nlThu@teacher.utb.edu.vn', '123456789', 'KT001'),
('GV028', 'Trần Vĩnh Bảo Trâm', '26/4/1991', 'Nữ', 'Giáo Sư', '123456789', 'Chu Văn An, Chiềng Ngần, Sơn La', 'tvbTram@teacher.utb.edu.vn', '123456789', 'KT001'),
('GV029', 'Từ Lê Bảo Trân', '26/4/1991', 'Nữ', 'Cử Nhân', '123456789', 'Chu Văn An, Chiềng Ngần, Sơn La', 'tlbTran@teacher.utb.edu.vn', '123456789', 'KT001'),
('GV030', 'Phạm Thị Ngọc Trinh', '26/4/1991', 'Nữ', 'Tiến Sĩ', '123456789', 'Chu Văn An, Chiềng Ngần, Sơn La', 'ptnTrinh@teacher.utb.edu.vn', '123456789', 'KT001'),
('GV031', 'Đinh Bá Trung', '26/4/1991', 'Nam', 'Thạc Sĩ', '123456789', 'Chu Văn An, Chiềng Ngần, Sơn La', 'dbTtrung@teacher.utb.edu.vn', '123456789', 'KT001'),
('GV032', 'Trương Công Trung', '26/4/1991', 'Nam', 'Tiến Sĩ', '123456789', 'Chu Văn An, Chiềng Ngần, Sơn La', 'tcTrung@teacher.utb.edu.vn', '123456789', 'KT001'),
('GV033', 'Trần Minh Tú', '26/4/1991', 'Nam', 'Cử Nhân', '123456789', 'Chu Văn An, Chiềng Ngần, Sơn La', 'tmTu@teacher.utb.edu.vn', '123456789', 'KT001'),
('GV034', 'Doãn Ngọc Tuyên', '26/4/1991', 'Nam', 'Tiến Sĩ', '123456789', 'Chu Văn An, Chiềng Ngần, Sơn La', 'dnQuyen@teacher.utb.edu.vn', '123456789', 'KT001'),
('GV035', 'Đoàn Tấn Lộc', '26/4/1991', 'Nam', 'Tiến Sĩ', '123456789', 'Chu Văn An, Chiềng Ngần, Sơn La', 'dtLoc@teacher.utb.edu.vn', '123456789', 'KT001'),
('GV036', 'Nguyễn Hoàng Thiên Băng', '26/4/1991', 'Nữ', 'Tiến Sĩ', '123456789', 'Chu Văn An, Chiềng Ngần, Sơn La', 'nhtBang@teacher.utb.edu.vn', '123456789', 'MT001'),
('GV037', 'Trần Khải Nguyên', '26/4/1991', 'Nam', 'Thạc Sĩ', '123456789', 'Chu Văn An, Chiềng Ngần, Sơn La', 'tkNguyen@teacher.utb.edu.vn', '123456789', 'MT001'),
('GV038', 'Hồ Thị Thu Hòa', '26/4/1991', 'Nữ', 'Cử Nhân', '123456789', 'Chu Văn An, Chiềng Ngần, Sơn La', 'httHoa@teacher.utb.edu.vn', '123456789', 'MT001'),
('GV039', 'Lường Đức Chung', '26/4/1991', 'Nam', 'Tiến Sĩ', '123456789', 'Chu Văn An, Chiềng Ngần, Sơn La', 'ldChung@teacher.utb.edu.vn', '123456789', 'MT001'),
('GV040', 'Phạm Ngọc Mai ', '26/4/1991', 'Nữ', 'Tiến Sĩ', '123456789', 'Chu Văn An, Chiềng Ngần, Sơn La', 'pnMai@teacher.utb.edu.vn', '123456789', 'MT001'),
('GV041', 'Phạm Nguyễn Ngọc Trang', '26/4/1991', 'Nữ', 'Thạc Sĩ', '123456789', 'Chu Văn An, Chiềng Ngần, Sơn La', 'pnnTrang@teacher.utb.edu.vn', '123456789', 'MT001');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khoa`
--

CREATE TABLE `khoa` (
  `Ma_Khoa` varchar(10) NOT NULL,
  `Ten_Khoa` varchar(100) NOT NULL,
  `So_Phong` varchar(100) NOT NULL,
  `Link_Page` varchar(100) NOT NULL,
  `SDT_Khoa` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `khoa`
--

INSERT INTO `khoa` (`Ma_Khoa`, `Ten_Khoa`, `So_Phong`, `Link_Page`, `SDT_Khoa`) VALUES
('CN001', 'Công nghệ thông tin', 'PK004', 'https://utb.edu.vn', '0966666666'),
('KT001', 'Kinh tế', 'PK001', 'https://utb.edu.vn', '0999999999'),
('MT001', 'Môi trường', 'PK002', 'https://utb.edu.vn', '0988888888'),
('SP001', 'Sưu phạm', 'PK003', 'https://utb.edu.vn', '0977777777'),
('YH001', 'Y học', 'PK005', 'https://utb.edu.vn', '0955555555');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `linh_vuc_nc`
--

CREATE TABLE `linh_vuc_nc` (
  `Ma_GV` varchar(10) NOT NULL,
  `Ma_LVNC` varchar(10) NOT NULL,
  `Ten_LVNC` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `linh_vuc_nc`
--

INSERT INTO `linh_vuc_nc` (`Ma_GV`, `Ma_LVNC`, `Ten_LVNC`) VALUES
('GV001', 'LV001', 'Xử Lý Ảnh, học máy, học sâu'),
('GV002', 'LV002', 'big data, các quy luật khai phá dữ liệu'),
('GV003', 'LV003', 'Quy luật cung cầu, toàn cầu hóa KT'),
('GV004', 'LV004', 'Răng hàm mặt'),
('GV005', 'LV003', 'Quy luật cung cầu, toàn cầu hóa KT'),
('GV006', 'LV006', 'mạng máy tính và truyền thông'),
('GV007', 'LV005', 'Phương pháp giảng dạy'),
('GV008', 'LV006', 'mạng máy tính và truyền thông'),
('GV009', 'LV007', 'Nghiên cứu về răng miệng và xương khớp con người'),
('GV010', 'LV008', 'Marketing, Thương hiệu, Năng lực học tập của tổ chức'),
('GV011', 'LV008', 'Marketing, Thương hiệu, Năng lực học tập của tổ chức'),
('GV012', 'LV001', 'Xử Lý Ảnh, học máy, học sâu'),
('GV013', 'LV002', 'big data, các quy luật khai phá dữ liệu'),
('GV014', 'LV004', 'Răng hàm mặt'),
('GV015', 'LV001', 'Xử Lý Ảnh, học máy, học sâu'),
('GV016', 'LV002', 'big data, các quy luật khai phá dữ liệu'),
('GV017', 'LV003', 'Quy luật cung cầu, toàn cầu hóa KT'),
('GV018 ', 'LV005', 'Phương pháp giảng dạy'),
('GV019', 'LV003', 'Quy luật cung cầu, toàn cầu hóa KT'),
('GV020 ', 'LV004', 'Răng hàm mặt'),
('GV021', 'LV006', 'mạng máy tính và truyền thông'),
('GV022', 'LV007', 'Nghiên cứu về răng miệng và xương khớp con người'),
('GV023', 'LV008', 'Marketing, Thương hiệu, Năng lực học tập của tổ chức'),
('GV024', 'LV001', 'Xử Lý Ảnh, học máy, học sâu'),
('GV025', 'LV010', 'Hệ thống thông tin không gian, Các phương pháp tối ưu'),
('GV026', 'LV005', 'Phương pháp giảng dạy'),
('GV027', 'LV002', 'big data, các quy luật khai phá dữ liệu'),
('GV028', 'LV007', 'Nghiên cứu về hô hấp và da liễu'),
('GV029', 'LV008', 'Marketing, Thương hiệu, Năng lực học tập của tổ chức'),
('GV030', 'LV010', 'Hệ thống thông tin không gian, Các phương pháp tối ưu'),
('GV031', 'LV010', 'Hệ thống thông tin không gian, Các phương pháp tối ưu'),
('GV032', 'LV010', 'Hệ thống thông tin không gian, Các phương pháp tối ưu'),
('GV033', 'LV003', 'Quy luật cung cầu, toàn cầu hóa KT'),
('GV034', 'LV008', 'Marketing, Thương hiệu, Năng lực học tập của tổ chức'),
('GV035', 'LV001', 'Xử Lý Ảnh, học máy, học sâu'),
('GV036', 'LV007', 'Nghiên cứu về răng miệng và xương khớp con người'),
('GV037', 'LV002', 'big data, các quy luật khai phá dữ liệu'),
('GV038', 'LV003', 'Quy luật cung cầu, toàn cầu hóa KT'),
('GV039', 'LV005', 'Phương pháp giảng dạy'),
('GV040', 'LV006', 'mạng máy tính và truyền thông'),
('GV041', 'LV001', 'Xử Lý Ảnh, học máy, học sâu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lop_hoc`
--

CREATE TABLE `lop_hoc` (
  `Ma_LH` varchar(10) NOT NULL,
  `Ten_LH` varchar(100) NOT NULL,
  `Khoa_Hoc` varchar(100) NOT NULL,
  `Nam_Nhap_Hoc` int(11) NOT NULL,
  `Ma_Nganh` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `lop_hoc`
--

INSERT INTO `lop_hoc` (`Ma_LH`, `Ten_LH`, `Khoa_Hoc`, `Nam_Nhap_Hoc`, `Ma_Nganh`) VALUES
('BVTVA', 'Bảo vệ thực vật A', 'K18-K20', 2018, '7620112'),
('BVTVB', 'Bảo vệ thực vật B', 'K18-K20', 2018, '7620112'),
('CNA', 'Chăn nuôi A', 'K18-K20', 2018, '7620105'),
('CNB', 'Chăn nuôi B', 'K18-K20', 2018, '7620105'),
('CXKA', ' Cơ Xương khướp A', 'K18-K20', 2018, '7504103'),
('CXKB', ' Cơ Xương khướp B', 'K18-K20', 2018, '7504103'),
('DSA', ' Dược sĩ A', 'K18-K20', 2018, '7504101'),
('DSB', ' Dược sĩ B', 'K18-K20', 2018, '7504101'),
('KTA', 'Kế toán A', 'K18-K20', 2018, '7340301'),
('KTB', 'Kế toán B', 'K18-K20', 2018, '7340301'),
('LSA', 'Lâm sinh A', 'K18-K20', 2018, '7620205'),
('LSB', 'Lâm sinh B', 'K18-K20', 2018, '7620205'),
('MMTA', 'Mạng máy tính A', 'K18-K20', 2018, '7480201'),
('MMTB', 'Mạng máy tính B', 'K18-K20', 2018, '7480201'),
('NHA', 'Nông học A', 'K18-K20', 2018, '7620109'),
('NHB', 'Nông học B', 'K18-K20', 2018, '7620109'),
('NSA', 'Nha sĩ A', 'K18-K20', 2018, '7504102'),
('NSB', 'Nha sĩ B', 'K18-K20', 2018, '7504102'),
('QTDVDLA', 'Quản trị dịch vụ du lịch và lữ hành A', 'K18-K20', 2018, '7810103'),
('QTDVDLB', 'Quản trị dịch vụ du lịch và lữ hành B', 'K18-K20', 2018, '7810103'),
('QTKDA', 'Quản trị kinh doanh A', 'K18-K20', 2018, '7340101'),
('QTKDB', 'Quản trị kinh doanh B', 'K18-K20', 2018, '7340101'),
('SPHHA', ' Sưu phạm hóa học A', 'K18-K20', 2018, '7140212'),
('SPHHB', ' Sưu phạm hóa học B', 'K18-K20', 2018, '7140212'),
('SPNVA', 'Sưu phạm ngữ văn A', 'K18-K20', 2018, '7140217'),
('SPNVB', 'Sưu phạm ngữ văn B', 'K18-K20', 2018, '7140217'),
('SPTAA', 'Sưu phạm tiếng anh A', 'K18-K20', 2018, '7140219'),
('SPTAB', 'Sưu phạm tiếng anh B', 'K18-K20', 2018, '7140219'),
('SPTHA', 'Sưu phạm toán học A', 'K18-K20', 2018, '7140209'),
('SPTHB', 'Sưu phạm toán học B', 'K18-K20', 2018, '7140209'),
('SPVLA', 'Sưu phạm Vật lý A', 'K18-K20', 2018, '7140211'),
('SPVLB', 'Sưu phạm Vật lý B', 'K18-K20', 2018, '7140211'),
('TCNHA', 'Tài Chính ngân hàng A', 'K18-K20', 2018, '7340201'),
('TCNHB', 'Tài Chính ngân hàng B', 'K18-K20', 2018, '7340201'),
('TTNTA', 'Trí tuệ nhân tạo A', 'K18-K20', 2018, '7480202'),
('TTNTB', 'Trí tuệ nhân tạo B', 'K18-K20', 2018, '7480202');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mon_hoc`
--

CREATE TABLE `mon_hoc` (
  `Ma_MH` varchar(10) NOT NULL,
  `Ten_MH` varchar(100) NOT NULL,
  `The_Loai` varchar(100) NOT NULL,
  `So_Tin_Chi` int(11) NOT NULL,
  `Mo_Ta` text NOT NULL,
  `Hoc_Phi` int(11) NOT NULL,
  `Ma_Nganh` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `mon_hoc`
--

INSERT INTO `mon_hoc` (`Ma_MH`, `Ten_MH`, `The_Loai`, `So_Tin_Chi`, `Mo_Ta`, `Hoc_Phi`, `Ma_Nganh`) VALUES
('MH009', 'Kinh tế vi mô', 'Chuyên ngành', 4, 'Kinh tế vi mô là môn khoa học nghiên cứu, phân tích, lựa chọn các vấn đề kinh tế cụ thể của các tế bào kinh tế trong một nền kinh tế', 2000000, '7340101'),
('MH010', 'Quản trị học', 'Chuyên ngành', 4, 'Quản trị học là một trong những môn học tiên quyết nhằm cung cấp kiến thức cơ bản về quản trị một tổ chức', 2000000, '7340101'),
('MH011', 'Quan hệ kinh tế quốc tế', 'Chuyên ngành', 4, 'Môn học cung cấp những kiến thức đại cương và nền tảng để giúp sinh viên có thể tiếp cận tốt những môn học thuộc khối kiến thức chuyên nghiệp của ngành luật thương mại quốc tế như Luật WTO, Pháp luật điều chỉnh thương mại hàng hóa quốc tế, pháp luật điều chỉnh thương mại dịch vụ quốc tế, luật đầu tư quốc tế. Tương tự, môn học này cũng nhằm cung cấp cho sinh viên những kiến thức cơ bản về quan hệ kinh tế quốc tế, làm nền tảng và bổ trợ cho việc nghiên cứu những môn học luật và lĩnh vực pháp luật có liên quan đến kinh tế quốc tế như công pháp quốc tế, tư pháp quốc tế, luật thương mại quốc tế… Trong chương trình đào tạo ngành luật. Ngoài ra, muốn học còn giúp cho sinh viên nâng cao khả năng phân tích, đánh giá để tìm hiểu những diễn biến kinh tế đang xảy ra ở phạm vi trong nước và quốc tế.', 2000000, '7340101'),
('MH012', 'Địa lý kinh tế thế giới', 'Đại cương', 4, 'Địa lý kinh tế thế giới trình bày một số vấn đề cơ bản của kinh tế học, địa lý học và địa lý kinh tế thế giới trong thời đại toàn cầu hóa, các tổ chức kinh tế khu vực và toàn cầu, thay đổi công nghệ và quá trình sản xuất, địa lý học về sản xuất, thương mại và đầu tư: các mạng lưới bên trong và bên ngoài TNCs, Nhà nước - Quốc gia, toàn cầu hóa & TNC', 2000000, '7340101'),
('MH013', 'Tư duy lý luận', 'Đại cương', 4, 'Cùng với việc học tập kiến thức chuyên môn, kỹ năng nghề nghiệp, sinh viên phải được trang bị hệ thống tri thức lý luận chính trị đúng đắn. Bởi kiến thức lý luận chính trị là kim chỉ nam chỉ phương hướng rèn luyện phẩm chất chính trị, đạo đức; hướng các em đến hành động thực tiễn nhân văn, tiến bộ, khoa học; hun đúc cho sinh viên lòng yêu nước chân chính; có tinh thần kiên định, vững vàng, không hoang mang, dao động trước những biến động phức tạp của cuộc sống và tình hình chính trị trên thế giới.', 2000000, '7340201'),
('MH014', 'Phương pháp định lượng trong tài chính', 'Chuyên ngành', 4, 'Cùng với việc học tập kiến thức chuyên môn, kỹ năng nghề nghiệp, sinh viên phải được trang bị hệ thống tri thức lý luận chính trị đúng đắn. Bởi kiến thức lý luận chính trị là kim chỉ nam chỉ phương hướng rèn luyện phẩm chất chính trị, đạo đức; hướng các em đến hành động thực tiễn nhân văn, tiến bộ, khoa học; hun đúc cho sinh viên lòng yêu nước chân chính; có tinh thần kiên định, vững vàng, không hoang mang, dao động trước những biến động phức tạp của cuộc sống và tình hình chính trị trên thế giới.', 2000000, '7340201'),
('MH015', 'Kế toán đại cương', 'Chuyên ngành', 4, 'Cùng với việc học tập kiến thức chuyên môn, kỹ năng nghề nghiệp, sinh viên phải được trang bị hệ thống tri thức lý luận chính trị đúng đắn. Bởi kiến thức lý luận chính trị là kim chỉ nam chỉ phương hướng rèn luyện phẩm chất chính trị, đạo đức; hướng các em đến hành động thực tiễn nhân văn, tiến bộ, khoa học; hun đúc cho sinh viên lòng yêu nước chân chính; có tinh thần kiên định, vững vàng, không hoang mang, dao động trước những biến động phức tạp của cuộc sống và tình hình chính trị trên thế giới.', 2000000, '7340201'),
('MH016', 'Kế toán tài chính', 'Chuyên ngành', 4, 'Cùng với việc học tập kiến thức chuyên môn, kỹ năng nghề nghiệp, sinh viên phải được trang bị hệ thống tri thức lý luận chính trị đúng đắn. Bởi kiến thức lý luận chính trị là kim chỉ nam chỉ phương hướng rèn luyện phẩm chất chính trị, đạo đức; hướng các em đến hành động thực tiễn nhân văn, tiến bộ, khoa học; hun đúc cho sinh viên lòng yêu nước chân chính; có tinh thần kiên định, vững vàng, không hoang mang, dao động trước những biến động phức tạp của cuộc sống và tình hình chính trị trên thế giới.', 2000000, '7340201'),
('MH017', 'Kế toán chi phí và kế toán quản trị', 'Chuyên ngành', 4, 'Cùng với việc học tập kiến thức chuyên môn, kỹ năng nghề nghiệp, sinh viên phải được trang bị hệ thống tri thức lý luận chính trị đúng đắn. Bởi kiến thức lý luận chính trị là kim chỉ nam chỉ phương hướng rèn luyện phẩm chất chính trị, đạo đức; hướng các em đến hành động thực tiễn nhân văn, tiến bộ, khoa học; hun đúc cho sinh viên lòng yêu nước chân chính; có tinh thần kiên định, vững vàng, không hoang mang, dao động trước những biến động phức tạp của cuộc sống và tình hình chính trị trên thế giới.', 2000000, '7340201'),
('MH018', 'Cơ sở văn hóa Việt Nam', 'Đại cương', 4, 'Cùng với việc học tập kiến thức chuyên môn, kỹ năng nghề nghiệp, sinh viên phải được trang bị hệ thống tri thức lý luận chính trị đúng đắn. Bởi kiến thức lý luận chính trị là kim chỉ nam chỉ phương hướng rèn luyện phẩm chất chính trị, đạo đức; hướng các em đến hành động thực tiễn nhân văn, tiến bộ, khoa học; hun đúc cho sinh viên lòng yêu nước chân chính; có tinh thần kiên định, vững vàng, không hoang mang, dao động trước những biến động phức tạp của cuộc sống và tình hình chính trị trên thế giới.', 2000000, '7810103'),
('MH019', 'Quản trị kinh doanh lữ hành', 'Chuyên ngành', 4, 'Cùng với việc học tập kiến thức chuyên môn, kỹ năng nghề nghiệp, sinh viên phải được trang bị hệ thống tri thức lý luận chính trị đúng đắn. Bởi kiến thức lý luận chính trị là kim chỉ nam chỉ phương hướng rèn luyện phẩm chất chính trị, đạo đức; hướng các em đến hành động thực tiễn nhân văn, tiến bộ, khoa học; hun đúc cho sinh viên lòng yêu nước chân chính; có tinh thần kiên định, vững vàng, không hoang mang, dao động trước những biến động phức tạp của cuộc sống và tình hình chính trị trên thế giới.', 2000000, '7810103'),
('MH020', 'Kinh tế du lịch', 'Chuyên ngành', 4, 'Cùng với việc học tập kiến thức chuyên môn, kỹ năng nghề nghiệp, sinh viên phải được trang bị hệ thống tri thức lý luận chính trị đúng đắn. Bởi kiến thức lý luận chính trị là kim chỉ nam chỉ phương hướng rèn luyện phẩm chất chính trị, đạo đức; hướng các em đến hành động thực tiễn nhân văn, tiến bộ, khoa học; hun đúc cho sinh viên lòng yêu nước chân chính; có tinh thần kiên định, vững vàng, không hoang mang, dao động trước những biến động phức tạp của cuộc sống và tình hình chính trị trên thế giới.', 2000000, '7810103'),
('MH021', 'Địa lý du lịch thế giới', 'Chuyên ngành', 4, 'Cùng với việc học tập kiến thức chuyên môn, kỹ năng nghề nghiệp, sinh viên phải được trang bị hệ thống tri thức lý luận chính trị đúng đắn. Bởi kiến thức lý luận chính trị là kim chỉ nam chỉ phương hướng rèn luyện phẩm chất chính trị, đạo đức; hướng các em đến hành động thực tiễn nhân văn, tiến bộ, khoa học; hun đúc cho sinh viên lòng yêu nước chân chính; có tinh thần kiên định, vững vàng, không hoang mang, dao động trước những biến động phức tạp của cuộc sống và tình hình chính trị trên thế giới.', 2000000, '7810103'),
('MH022', 'Hoá sinh đại cương', 'Đại cương', 4, 'Cùng với việc học tập kiến thức chuyên môn, kỹ năng nghề nghiệp, sinh viên phải được trang bị hệ thống tri thức lý luận chính trị đúng đắn. Bởi kiến thức lý luận chính trị là kim chỉ nam chỉ phương hướng rèn luyện phẩm chất chính trị, đạo đức; hướng các em đến hành động thực tiễn nhân văn, tiến bộ, khoa học; hun đúc cho sinh viên lòng yêu nước chân chính; có tinh thần kiên định, vững vàng, không hoang mang, dao động trước những biến động phức tạp của cuộc sống và tình hình chính trị trên thế giới.', 2000000, '7620105'),
('MH023', 'Động vật học', 'Chuyên ngành', 4, 'Cùng với việc học tập kiến thức chuyên môn, kỹ năng nghề nghiệp, sinh viên phải được trang bị hệ thống tri thức lý luận chính trị đúng đắn. Bởi kiến thức lý luận chính trị là kim chỉ nam chỉ phương hướng rèn luyện phẩm chất chính trị, đạo đức; hướng các em đến hành động thực tiễn nhân văn, tiến bộ, khoa học; hun đúc cho sinh viên lòng yêu nước chân chính; có tinh thần kiên định, vững vàng, không hoang mang, dao động trước những biến động phức tạp của cuộc sống và tình hình chính trị trên thế giới.', 2000000, '7620105'),
('MH024', 'Giải phẫu động vật I', 'Chuyên ngành', 4, 'Cùng với việc học tập kiến thức chuyên môn, kỹ năng nghề nghiệp, sinh viên phải được trang bị hệ thống tri thức lý luận chính trị đúng đắn. Bởi kiến thức lý luận chính trị là kim chỉ nam chỉ phương hướng rèn luyện phẩm chất chính trị, đạo đức; hướng các em đến hành động thực tiễn nhân văn, tiến bộ, khoa học; hun đúc cho sinh viên lòng yêu nước chân chính; có tinh thần kiên định, vững vàng, không hoang mang, dao động trước những biến động phức tạp của cuộc sống và tình hình chính trị trên thế giới.', 2000000, '7620105'),
('MH025', ' hoá chất hữu cơ, vô cơ', 'Chuyên ngành', 4, 'Cùng với việc học tập kiến thức chuyên môn, kỹ năng nghề nghiệp, sinh viên phải được trang bị hệ thống tri thức lý luận chính trị đúng đắn. Bởi kiến thức lý luận chính trị là kim chỉ nam chỉ phương hướng rèn luyện phẩm chất chính trị, đạo đức; hướng các em đến hành động thực tiễn nhân văn, tiến bộ, khoa học; hun đúc cho sinh viên lòng yêu nước chân chính; có tinh thần kiên định, vững vàng, không hoang mang, dao động trước những biến động phức tạp của cuộc sống và tình hình chính trị trên thế giới.', 2000000, '7620105'),
('MH026', 'Kinh tế Nông nghiệp', 'Chuyên ngành', 4, 'Cùng với việc học tập kiến thức chuyên môn, kỹ năng nghề nghiệp, sinh viên phải được trang bị hệ thống tri thức lý luận chính trị đúng đắn. Bởi kiến thức lý luận chính trị là kim chỉ nam chỉ phương hướng rèn luyện phẩm chất chính trị, đạo đức; hướng các em đến hành động thực tiễn nhân văn, tiến bộ, khoa học; hun đúc cho sinh viên lòng yêu nước chân chính; có tinh thần kiên định, vững vàng, không hoang mang, dao động trước những biến động phức tạp của cuộc sống và tình hình chính trị trên thế giới.', 2000000, '7620109'),
('MH027', 'Trồng trọt ươm mầm và bảo vệ thực vật', 'Chuyên ngành', 4, 'Cùng với việc học tập kiến thức chuyên môn, kỹ năng nghề nghiệp, sinh viên phải được trang bị hệ thống tri thức lý luận chính trị đúng đắn. Bởi kiến thức lý luận chính trị là kim chỉ nam chỉ phương hướng rèn luyện phẩm chất chính trị, đạo đức; hướng các em đến hành động thực tiễn nhân văn, tiến bộ, khoa học; hun đúc cho sinh viên lòng yêu nước chân chính; có tinh thần kiên định, vững vàng, không hoang mang, dao động trước những biến động phức tạp của cuộc sống và tình hình chính trị trên thế giới.', 2000000, '7620109'),
('MH028', 'Biến đổi khí hậu và phát triển bền vững', 'Chuyên ngành', 4, 'Cùng với việc học tập kiến thức chuyên môn, kỹ năng nghề nghiệp, sinh viên phải được trang bị hệ thống tri thức lý luận chính trị đúng đắn. Bởi kiến thức lý luận chính trị là kim chỉ nam chỉ phương hướng rèn luyện phẩm chất chính trị, đạo đức; hướng các em đến hành động thực tiễn nhân văn, tiến bộ, khoa học; hun đúc cho sinh viên lòng yêu nước chân chính; có tinh thần kiên định, vững vàng, không hoang mang, dao động trước những biến động phức tạp của cuộc sống và tình hình chính trị trên thế giới.', 2000000, '7620112'),
('MH029', 'CN SH môi trường', 'Chuyên ngành', 4, 'Cùng với việc học tập kiến thức chuyên môn, kỹ năng nghề nghiệp, sinh viên phải được trang bị hệ thống tri thức lý luận chính trị đúng đắn. Bởi kiến thức lý luận chính trị là kim chỉ nam chỉ phương hướng rèn luyện phẩm chất chính trị, đạo đức; hướng các em đến hành động thực tiễn nhân văn, tiến bộ, khoa học; hun đúc cho sinh viên lòng yêu nước chân chính; có tinh thần kiên định, vững vàng, không hoang mang, dao động trước những biến động phức tạp của cuộc sống và tình hình chính trị trên thế giới.', 2000000, '7620112'),
('MH030', 'Sinh học ứng dụng', 'Chuyên ngành', 4, 'Cùng với việc học tập kiến thức chuyên môn, kỹ năng nghề nghiệp, sinh viên phải được trang bị hệ thống tri thức lý luận chính trị đúng đắn. Bởi kiến thức lý luận chính trị là kim chỉ nam chỉ phương hướng rèn luyện phẩm chất chính trị, đạo đức; hướng các em đến hành động thực tiễn nhân văn, tiến bộ, khoa học; hun đúc cho sinh viên lòng yêu nước chân chính; có tinh thần kiên định, vững vàng, không hoang mang, dao động trước những biến động phức tạp của cuộc sống và tình hình chính trị trên thế giới.', 2000000, '7620205'),
('MH031', 'Công nghệ sinh học trồng trọt', 'Chuyên ngành', 4, 'Cùng với việc học tập kiến thức chuyên môn, kỹ năng nghề nghiệp, sinh viên phải được trang bị hệ thống tri thức lý luận chính trị đúng đắn. Bởi kiến thức lý luận chính trị là kim chỉ nam chỉ phương hướng rèn luyện phẩm chất chính trị, đạo đức; hướng các em đến hành động thực tiễn nhân văn, tiến bộ, khoa học; hun đúc cho sinh viên lòng yêu nước chân chính; có tinh thần kiên định, vững vàng, không hoang mang, dao động trước những biến động phức tạp của cuộc sống và tình hình chính trị trên thế giới.', 2000000, '7620205'),
('MH032', '	Tâm lý học', 'Đại cương', 4, 'Cùng với việc học tập kiến thức chuyên môn, kỹ năng nghề nghiệp, sinh viên phải được trang bị hệ thống tri thức lý luận chính trị đúng đắn. Bởi kiến thức lý luận chính trị là kim chỉ nam chỉ phương hướng rèn luyện phẩm chất chính trị, đạo đức; hướng các em đến hành động thực tiễn nhân văn, tiến bộ, khoa học; hun đúc cho sinh viên lòng yêu nước chân chính; có tinh thần kiên định, vững vàng, không hoang mang, dao động trước những biến động phức tạp của cuộc sống và tình hình chính trị trên thế giới.', 2000000, '7140209'),
('MH033', 'Lý thuyết số', 'Đại cương', 4, 'Cùng với việc học tập kiến thức chuyên môn, kỹ năng nghề nghiệp, sinh viên phải được trang bị hệ thống tri thức lý luận chính trị đúng đắn. Bởi kiến thức lý luận chính trị là kim chỉ nam chỉ phương hướng rèn luyện phẩm chất chính trị, đạo đức; hướng các em đến hành động thực tiễn nhân văn, tiến bộ, khoa học; hun đúc cho sinh viên lòng yêu nước chân chính; có tinh thần kiên định, vững vàng, không hoang mang, dao động trước những biến động phức tạp của cuộc sống và tình hình chính trị trên thế giới.', 2000000, '7140209'),
('MH034', 'Thực tập sư phạm 2', 'Chuyên ngành', 4, 'Cùng với việc học tập kiến thức chuyên môn, kỹ năng nghề nghiệp, sinh viên phải được trang bị hệ thống tri thức lý luận chính trị đúng đắn. Bởi kiến thức lý luận chính trị là kim chỉ nam chỉ phương hướng rèn luyện phẩm chất chính trị, đạo đức; hướng các em đến hành động thực tiễn nhân văn, tiến bộ, khoa học; hun đúc cho sinh viên lòng yêu nước chân chính; có tinh thần kiên định, vững vàng, không hoang mang, dao động trước những biến động phức tạp của cuộc sống và tình hình chính trị trên thế giới.', 2000000, '7140209'),
('MH035', 'Tin học đại cương', 'Đại cương', 4, 'Cùng với việc học tập kiến thức chuyên môn, kỹ năng nghề nghiệp, sinh viên phải được trang bị hệ thống tri thức lý luận chính trị đúng đắn. Bởi kiến thức lý luận chính trị là kim chỉ nam chỉ phương hướng rèn luyện phẩm chất chính trị, đạo đức; hướng các em đến hành động thực tiễn nhân văn, tiến bộ, khoa học; hun đúc cho sinh viên lòng yêu nước chân chính; có tinh thần kiên định, vững vàng, không hoang mang, dao động trước những biến động phức tạp của cuộc sống và tình hình chính trị trên thế giới.', 2000000, '7140209'),
('MH036', 'Vật lý lý thuyết', 'Đại cương', 4, 'Cùng với việc học tập kiến thức chuyên môn, kỹ năng nghề nghiệp, sinh viên phải được trang bị hệ thống tri thức lý luận chính trị đúng đắn. Bởi kiến thức lý luận chính trị là kim chỉ nam chỉ phương hướng rèn luyện phẩm chất chính trị, đạo đức; hướng các em đến hành động thực tiễn nhân văn, tiến bộ, khoa học; hun đúc cho sinh viên lòng yêu nước chân chính; có tinh thần kiên định, vững vàng, không hoang mang, dao động trước những biến động phức tạp của cuộc sống và tình hình chính trị trên thế giới.', 2000000, '7140211'),
('MH037', 'Vật lý thống kê và nhiệt động lực học', 'Chuyên ngành', 4, 'Cùng với việc học tập kiến thức chuyên môn, kỹ năng nghề nghiệp, sinh viên phải được trang bị hệ thống tri thức lý luận chính trị đúng đắn. Bởi kiến thức lý luận chính trị là kim chỉ nam chỉ phương hướng rèn luyện phẩm chất chính trị, đạo đức; hướng các em đến hành động thực tiễn nhân văn, tiến bộ, khoa học; hun đúc cho sinh viên lòng yêu nước chân chính; có tinh thần kiên định, vững vàng, không hoang mang, dao động trước những biến động phức tạp của cuộc sống và tình hình chính trị trên thế giới.', 2000000, '7140211'),
('MH038', 'Thí nghiệm Vật lí đại cương ', 'Chuyên ngành', 4, 'Cùng với việc học tập kiến thức chuyên môn, kỹ năng nghề nghiệp, sinh viên phải được trang bị hệ thống tri thức lý luận chính trị đúng đắn. Bởi kiến thức lý luận chính trị là kim chỉ nam chỉ phương hướng rèn luyện phẩm chất chính trị, đạo đức; hướng các em đến hành động thực tiễn nhân văn, tiến bộ, khoa học; hun đúc cho sinh viên lòng yêu nước chân chính; có tinh thần kiên định, vững vàng, không hoang mang, dao động trước những biến động phức tạp của cuộc sống và tình hình chính trị trên thế giới.', 2000000, '7140211'),
('MH039', 'Hóa kỹ thuật', 'Chuyên ngành', 4, 'Cùng với việc học tập kiến thức chuyên môn, kỹ năng nghề nghiệp, sinh viên phải được trang bị hệ thống tri thức lý luận chính trị đúng đắn. Bởi kiến thức lý luận chính trị là kim chỉ nam chỉ phương hướng rèn luyện phẩm chất chính trị, đạo đức; hướng các em đến hành động thực tiễn nhân văn, tiến bộ, khoa học; hun đúc cho sinh viên lòng yêu nước chân chính; có tinh thần kiên định, vững vàng, không hoang mang, dao động trước những biến động phức tạp của cuộc sống và tình hình chính trị trên thế giới.', 2000000, '7140212'),
('MH040', 'Thực hành lý luận dạy học hóa học', 'Chuyên ngành', 4, 'Cùng với việc học tập kiến thức chuyên môn, kỹ năng nghề nghiệp, sinh viên phải được trang bị hệ thống tri thức lý luận chính trị đúng đắn. Bởi kiến thức lý luận chính trị là kim chỉ nam chỉ phương hướng rèn luyện phẩm chất chính trị, đạo đức; hướng các em đến hành động thực tiễn nhân văn, tiến bộ, khoa học; hun đúc cho sinh viên lòng yêu nước chân chính; có tinh thần kiên định, vững vàng, không hoang mang, dao động trước những biến động phức tạp của cuộc sống và tình hình chính trị trên thế giới.', 2000000, '7140212'),
('MH041', 'Cơ sở lý thuyết Hóa hữu cơ', 'Chuyên ngành', 4, 'Cùng với việc học tập kiến thức chuyên môn, kỹ năng nghề nghiệp, sinh viên phải được trang bị hệ thống tri thức lý luận chính trị đúng đắn. Bởi kiến thức lý luận chính trị là kim chỉ nam chỉ phương hướng rèn luyện phẩm chất chính trị, đạo đức; hướng các em đến hành động thực tiễn nhân văn, tiến bộ, khoa học; hun đúc cho sinh viên lòng yêu nước chân chính; có tinh thần kiên định, vững vàng, không hoang mang, dao động trước những biến động phức tạp của cuộc sống và tình hình chính trị trên thế giới.', 2000000, '7140212'),
('MH042', 'Xã hội học nghệ thuật', 'Chuyên ngành', 4, 'Cùng với việc học tập kiến thức chuyên môn, kỹ năng nghề nghiệp, sinh viên phải được trang bị hệ thống tri thức lý luận chính trị đúng đắn. Bởi kiến thức lý luận chính trị là kim chỉ nam chỉ phương hướng rèn luyện phẩm chất chính trị, đạo đức; hướng các em đến hành động thực tiễn nhân văn, tiến bộ, khoa học; hun đúc cho sinh viên lòng yêu nước chân chính; có tinh thần kiên định, vững vàng, không hoang mang, dao động trước những biến động phức tạp của cuộc sống và tình hình chính trị trên thế giới.', 2000000, '7140217'),
('MH043', 'Lý luận dạy học ngữ văn', 'Chuyên ngành', 4, 'Cùng với việc học tập kiến thức chuyên môn, kỹ năng nghề nghiệp, sinh viên phải được trang bị hệ thống tri thức lý luận chính trị đúng đắn. Bởi kiến thức lý luận chính trị là kim chỉ nam chỉ phương hướng rèn luyện phẩm chất chính trị, đạo đức; hướng các em đến hành động thực tiễn nhân văn, tiến bộ, khoa học; hun đúc cho sinh viên lòng yêu nước chân chính; có tinh thần kiên định, vững vàng, không hoang mang, dao động trước những biến động phức tạp của cuộc sống và tình hình chính trị trên thế giới.', 2000000, '7140217'),
('MH044', 'Tiến trình văn học', 'Chuyên ngành', 4, 'Cùng với việc học tập kiến thức chuyên môn, kỹ năng nghề nghiệp, sinh viên phải được trang bị hệ thống tri thức lý luận chính trị đúng đắn. Bởi kiến thức lý luận chính trị là kim chỉ nam chỉ phương hướng rèn luyện phẩm chất chính trị, đạo đức; hướng các em đến hành động thực tiễn nhân văn, tiến bộ, khoa học; hun đúc cho sinh viên lòng yêu nước chân chính; có tinh thần kiên định, vững vàng, không hoang mang, dao động trước những biến động phức tạp của cuộc sống và tình hình chính trị trên thế giới.', 2000000, '7140217'),
('MH045', 'Phân tích diễn ngôn', 'Chuyên ngành', 4, 'Cùng với việc học tập kiến thức chuyên môn, kỹ năng nghề nghiệp, sinh viên phải được trang bị hệ thống tri thức lý luận chính trị đúng đắn. Bởi kiến thức lý luận chính trị là kim chỉ nam chỉ phương hướng rèn luyện phẩm chất chính trị, đạo đức; hướng các em đến hành động thực tiễn nhân văn, tiến bộ, khoa học; hun đúc cho sinh viên lòng yêu nước chân chính; có tinh thần kiên định, vững vàng, không hoang mang, dao động trước những biến động phức tạp của cuộc sống và tình hình chính trị trên thế giới.', 2000000, '7140219'),
('MH046', 'Ngữ dụng học', 'Chuyên ngành', 4, 'Cùng với việc học tập kiến thức chuyên môn, kỹ năng nghề nghiệp, sinh viên phải được trang bị hệ thống tri thức lý luận chính trị đúng đắn. Bởi kiến thức lý luận chính trị là kim chỉ nam chỉ phương hướng rèn luyện phẩm chất chính trị, đạo đức; hướng các em đến hành động thực tiễn nhân văn, tiến bộ, khoa học; hun đúc cho sinh viên lòng yêu nước chân chính; có tinh thần kiên định, vững vàng, không hoang mang, dao động trước những biến động phức tạp của cuộc sống và tình hình chính trị trên thế giới.', 2000000, '7140219'),
('MH047', 'Giao thoa văn hoá', 'Chuyên ngành', 4, 'Cùng với việc học tập kiến thức chuyên môn, kỹ năng nghề nghiệp, sinh viên phải được trang bị hệ thống tri thức lý luận chính trị đúng đắn. Bởi kiến thức lý luận chính trị là kim chỉ nam chỉ phương hướng rèn luyện phẩm chất chính trị, đạo đức; hướng các em đến hành động thực tiễn nhân văn, tiến bộ, khoa học; hun đúc cho sinh viên lòng yêu nước chân chính; có tinh thần kiên định, vững vàng, không hoang mang, dao động trước những biến động phức tạp của cuộc sống và tình hình chính trị trên thế giới.', 2000000, '7140219'),
('MH048', 'Ứng dụng CNTT trong dạy học ngoại ngữ', 'Chuyên ngành', 4, 'Cùng với việc học tập kiến thức chuyên môn, kỹ năng nghề nghiệp, sinh viên phải được trang bị hệ thống tri thức lý luận chính trị đúng đắn. Bởi kiến thức lý luận chính trị là kim chỉ nam chỉ phương hướng rèn luyện phẩm chất chính trị, đạo đức; hướng các em đến hành động thực tiễn nhân văn, tiến bộ, khoa học; hun đúc cho sinh viên lòng yêu nước chân chính; có tinh thần kiên định, vững vàng, không hoang mang, dao động trước những biến động phức tạp của cuộc sống và tình hình chính trị trên thế giới.', 2000000, '7140219'),
('MH049', 'Dược học cổ truyền', 'Chuyên ngành', 4, 'Cùng với việc học tập kiến thức chuyên môn, kỹ năng nghề nghiệp, sinh viên phải được trang bị hệ thống tri thức lý luận chính trị đúng đắn. Bởi kiến thức lý luận chính trị là kim chỉ nam chỉ phương hướng rèn luyện phẩm chất chính trị, đạo đức; hướng các em đến hành động thực tiễn nhân văn, tiến bộ, khoa học; hun đúc cho sinh viên lòng yêu nước chân chính; có tinh thần kiên định, vững vàng, không hoang mang, dao động trước những biến động phức tạp của cuộc sống và tình hình chính trị trên thế giới.', 2000000, '7504101'),
('MH050', 'Bào chế và Sinh dược học 1', 'Chuyên ngành', 4, 'Cùng với việc học tập kiến thức chuyên môn, kỹ năng nghề nghiệp, sinh viên phải được trang bị hệ thống tri thức lý luận chính trị đúng đắn. Bởi kiến thức lý luận chính trị là kim chỉ nam chỉ phương hướng rèn luyện phẩm chất chính trị, đạo đức; hướng các em đến hành động thực tiễn nhân văn, tiến bộ, khoa học; hun đúc cho sinh viên lòng yêu nước chân chính; có tinh thần kiên định, vững vàng, không hoang mang, dao động trước những biến động phức tạp của cuộc sống và tình hình chính trị trên thế giới.', 2000000, '7504101'),
('MH051', 'Quản lý chất lượng trong sản xuất thuốc', 'Chuyên ngành', 4, 'Cùng với việc học tập kiến thức chuyên môn, kỹ năng nghề nghiệp, sinh viên phải được trang bị hệ thống tri thức lý luận chính trị đúng đắn. Bởi kiến thức lý luận chính trị là kim chỉ nam chỉ phương hướng rèn luyện phẩm chất chính trị, đạo đức; hướng các em đến hành động thực tiễn nhân văn, tiến bộ, khoa học; hun đúc cho sinh viên lòng yêu nước chân chính; có tinh thần kiên định, vững vàng, không hoang mang, dao động trước những biến động phức tạp của cuộc sống và tình hình chính trị trên thế giới.', 2000000, '7504101'),
('MH052', 'Dược lâm sàng', 'Chuyên ngành', 4, 'Cùng với việc học tập kiến thức chuyên môn, kỹ năng nghề nghiệp, sinh viên phải được trang bị hệ thống tri thức lý luận chính trị đúng đắn. Bởi kiến thức lý luận chính trị là kim chỉ nam chỉ phương hướng rèn luyện phẩm chất chính trị, đạo đức; hướng các em đến hành động thực tiễn nhân văn, tiến bộ, khoa học; hun đúc cho sinh viên lòng yêu nước chân chính; có tinh thần kiên định, vững vàng, không hoang mang, dao động trước những biến động phức tạp của cuộc sống và tình hình chính trị trên thế giới.', 2000000, '7504101'),
('MH053', 'phẫu thuật tháo lắp răng', 'Chuyên ngành', 4, 'Cùng với việc học tập kiến thức chuyên môn, kỹ năng nghề nghiệp, sinh viên phải được trang bị hệ thống tri thức lý luận chính trị đúng đắn. Bởi kiến thức lý luận chính trị là kim chỉ nam chỉ phương hướng rèn luyện phẩm chất chính trị, đạo đức; hướng các em đến hành động thực tiễn nhân văn, tiến bộ, khoa học; hun đúc cho sinh viên lòng yêu nước chân chính; có tinh thần kiên định, vững vàng, không hoang mang, dao động trước những biến động phức tạp của cuộc sống và tình hình chính trị trên thế giới.', 2000000, '7504102'),
('MH054', 'chăm sóc nha khoa', 'Chuyên ngành', 4, 'Cùng với việc học tập kiến thức chuyên môn, kỹ năng nghề nghiệp, sinh viên phải được trang bị hệ thống tri thức lý luận chính trị đúng đắn. Bởi kiến thức lý luận chính trị là kim chỉ nam chỉ phương hướng rèn luyện phẩm chất chính trị, đạo đức; hướng các em đến hành động thực tiễn nhân văn, tiến bộ, khoa học; hun đúc cho sinh viên lòng yêu nước chân chính; có tinh thần kiên định, vững vàng, không hoang mang, dao động trước những biến động phức tạp của cuộc sống và tình hình chính trị trên thế giới.', 2000000, '7504102'),
('MH055', 'x-quang chỉnh hình miệng', 'Chuyên ngành', 4, 'Cùng với việc học tập kiến thức chuyên môn, kỹ năng nghề nghiệp, sinh viên phải được trang bị hệ thống tri thức lý luận chính trị đúng đắn. Bởi kiến thức lý luận chính trị là kim chỉ nam chỉ phương hướng rèn luyện phẩm chất chính trị, đạo đức; hướng các em đến hành động thực tiễn nhân văn, tiến bộ, khoa học; hun đúc cho sinh viên lòng yêu nước chân chính; có tinh thần kiên định, vững vàng, không hoang mang, dao động trước những biến động phức tạp của cuộc sống và tình hình chính trị trên thế giới.', 2000000, '7504102'),
('MH056', 'Nội soi khớp', 'Chuyên ngành', 4, 'Cùng với việc học tập kiến thức chuyên môn, kỹ năng nghề nghiệp, sinh viên phải được trang bị hệ thống tri thức lý luận chính trị đúng đắn. Bởi kiến thức lý luận chính trị là kim chỉ nam chỉ phương hướng rèn luyện phẩm chất chính trị, đạo đức; hướng các em đến hành động thực tiễn nhân văn, tiến bộ, khoa học; hun đúc cho sinh viên lòng yêu nước chân chính; có tinh thần kiên định, vững vàng, không hoang mang, dao động trước những biến động phức tạp của cuộc sống và tình hình chính trị trên thế giới.', 2000000, '7504103'),
('MH057', 'nghiên cứu bệnh lý về xương khớp', 'Chuyên ngành', 4, 'Cùng với việc học tập kiến thức chuyên môn, kỹ năng nghề nghiệp, sinh viên phải được trang bị hệ thống tri thức lý luận chính trị đúng đắn. Bởi kiến thức lý luận chính trị là kim chỉ nam chỉ phương hướng rèn luyện phẩm chất chính trị, đạo đức; hướng các em đến hành động thực tiễn nhân văn, tiến bộ, khoa học; hun đúc cho sinh viên lòng yêu nước chân chính; có tinh thần kiên định, vững vàng, không hoang mang, dao động trước những biến động phức tạp của cuộc sống và tình hình chính trị trên thế giới.', 2000000, '7504103'),
('MH058', 'Cơ Xương khớp trong nghiên cứu khoa học', 'Chuyên ngành', 4, 'Cùng với việc học tập kiến thức chuyên môn, kỹ năng nghề nghiệp, sinh viên phải được trang bị hệ thống tri thức lý luận chính trị đúng đắn. Bởi kiến thức lý luận chính trị là kim chỉ nam chỉ phương hướng rèn luyện phẩm chất chính trị, đạo đức; hướng các em đến hành động thực tiễn nhân văn, tiến bộ, khoa học; hun đúc cho sinh viên lòng yêu nước chân chính; có tinh thần kiên định, vững vàng, không hoang mang, dao động trước những biến động phức tạp của cuộc sống và tình hình chính trị trên thế giới.', 2000000, '7504103');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoi_than`
--

CREATE TABLE `nguoi_than` (
  `CMND` varchar(9) NOT NULL,
  `Ho_Ten` varchar(100) NOT NULL,
  `Cong_Viec` varchar(100) NOT NULL,
  `Quan_He` varchar(100) NOT NULL,
  `Ngay_Sinh` text NOT NULL,
  `SDT` varchar(10) NOT NULL,
  `Ma_SV` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `nguoi_than`
--

INSERT INTO `nguoi_than` (`CMND`, `Ho_Ten`, `Cong_Viec`, `Quan_He`, `Ngay_Sinh`, `SDT`, `Ma_SV`) VALUES
('51131793', 'Đõ Xuân Quỳnh', 'Bác Sĩ', 'mẹ', '23/11/1985', '123456789', 'SV001'),
('51131794', 'Nguyễn Phước Anh Tuệ', 'Y tá', 'mẹ', '23/11/1985', '123456790', 'SV002'),
('51131795', 'Đỗ Xuân Ngân', 'Tester', 'mẹ', '23/11/1985', '123456791', 'SV003'),
('51131796', 'Bùi Thị Hồng Hà', 'Kĩ sư phần mềm', 'mẹ', '23/11/1985', '123456792', 'SV004'),
('51131797', 'Cù Thị Nhật Lệ', 'Giáo viên mầm non', 'mẹ', '23/11/1985', '123456793', 'SV005'),
('51131798', 'Bùi Thị Kiều', 'Nông dân', 'mẹ', '23/11/1985', '123456794', 'SV006'),
('51131799', 'Bùi Thị Thùy Dung', 'Nhân viên văn phòng', 'mẹ', '23/11/1985', '123456795', 'SV007'),
('51131800', 'Bùi Văn Tuấn', 'Công An', 'bố', '23/11/1985', '123456796', 'SV008'),
('51131801', 'Cao Thị Phương Hoa', 'Tiếp viên hàng không', 'mẹ', '23/11/1985', '123456797', 'SV009'),
('51131802', 'Đặng Thanh Bích Ngọc', 'Doanh nhân', 'mẹ', '23/11/1985', '123456798', 'SV010'),
('51131803', 'Địch Gia Long', 'Doanh nhân', 'bố', '23/11/1985', '123456799', 'SV011'),
('51131804', 'Đoàn Nhật Minh', 'Giảng viên đại học', 'bố', '23/11/1985', '123456800', 'SV012'),
('51131805', 'Đặng Thị Diệu Hằng', 'Nhân viên văn phòng', 'mẹ', '23/11/1985', '123456801', 'SV013'),
('51131806', 'Đinh Thị Hằng Nga', 'Lập trình viên', 'mẹ', '23/11/1985', '123456802', 'SV014'),
('51131807', 'Đinh Thị Kim Chi', 'Bác sĩ', 'mẹ', '23/11/1985', '123456803', 'SV015'),
('51131808', 'Đào Văn Mạnh', 'Nhà văn', 'bố', '23/11/1985', '123456804', 'SV016'),
('51131809', 'Đặng Phương Nguyên', 'kiến trúc sư', 'bố', '23/11/1985', '123456805', 'SV017'),
('51131810', 'Đỗ Xuân Hưng', 'Công An', 'bố', '23/11/1985', '123456806', 'SV018'),
('51131814', 'Nguyễn Đinh Duy', 'Diễn Viên', 'bố', '23/11/1985', '123456810', 'SV022'),
('51131815', 'Hồ Thị Ái Diễm', 'Tiếp viên hàng không', 'mẹ', '23/11/1985', '123456811', 'SV023'),
('51131816', 'Trường Thị Thùy Nhung', 'Kế toán', 'mẹ', '23/11/1985', '123456812', 'SV024'),
('51131817', 'Nguyễn Xuân Kiều Anh', 'Lập trình viên', 'mẹ', '23/11/1985', '123456813', 'SV025'),
('51131818', 'Lê Thị Quý Hồng', 'doanh nhân', 'mẹ', '23/11/1985', '123456814', 'SV026'),
('51131819', 'Nguyễn Minh Đức', 'Nhân viên văn phòng', 'bố', '23/11/1985', '123456815', 'SV027'),
('51131825', 'Nguyễn Lữ Đức Đạt', 'Hướng Dẫn Viên Du Lịch', 'bố', '23/11/1985', '123456821', 'SV033'),
('51131826', 'Nguyễn Thúy Hiền', 'Tiếp viên hàng không', 'mẹ', '23/11/1985', '123456822', 'SV034'),
('51131827', 'Lê Ngọc Hoàng', ' Kỹ sư máy tính', 'bố', '23/11/1985', '123456823', 'SV035'),
('51131828', 'Nguyễn đăng Hoàng', 'Hướng Dẫn Viên Du Lịch', 'bố', '23/11/1985', '123456824', 'SV036'),
('51131829', 'Đoàn Anh Kiệt', 'Giáo viên', 'bố', '23/11/1985', '123456825', 'SV037'),
('51131830', 'Nguyễn Thùy Linh', 'doanh nhân', 'mẹ', '23/11/1985', '123456826', 'SV038'),
('51131831', 'Đõ Thị Hồng Minh', 'Giảng viên đại học', 'mẹ', '23/11/1985', '123456827', 'SV039'),
('51131832', 'Hồ Hải Nam', 'Công An', 'bố', '23/11/1985', '123456828', 'SV040'),
('51131833', 'Lê Thu Phương', 'kiến trúc sư', 'mẹ', '23/11/1985', '123456829', 'SV041'),
('51131842', 'Nguyễn Quang Trung', 'Kiến trúc sư', 'bố', '23/11/1985', '123456838', 'SV050'),
('51131843', 'Đinh Việt Tuấn', 'Giảng viên đại học', 'bố', '23/11/1985', '123456839', 'SV051'),
('51131844', 'Đỗ Anh Tuấn', 'Diễn Viên', 'bố', '23/11/1985', '123456840', 'SV052'),
('51131845', 'Nguyễn Văn Tuấn', 'Kế toán', 'bố', '23/11/1985', '123456841', 'SV053'),
('51131846', 'Nguyễn Quốc Việt', 'Doanh nhân', 'bố', '23/11/1985', '123456842', 'SV054'),
('51131847', 'Lê Thanh Tùng', 'Nhân Viên Kinh Doanh', 'bố', '23/11/1985', '123456843', 'SV055'),
('51131848', 'Nguyễn Quang Trung', 'Công An', 'bố', '23/11/1985', '123456844', 'SV056'),
('51131849', 'Trần Văn Vĩnh Toàn', 'Luật Sư', 'bố', '23/11/1985', '123456845', 'SV057'),
('51131850', 'Nguyễn Quý Vinh Quang', 'Giảng viên đại học', 'bố', '23/11/1985', '123456846', 'SV058'),
('51131851', 'Trần Toàn Thắng', 'Nhân Viên Kinh Doanh', 'bố', '23/11/1985', '123456847', 'SV059'),
('51131852', 'Nguyễn Quang Quyết ', 'kiến trúc sư', 'bố', '23/11/1985', '123456848', 'SV060'),
('51131853', 'Hoàng Văn Lâm', 'Nhân Viên Kinh Doanh', 'bố', '23/11/1985', '123456849', 'SV061'),
('51131854', 'Bùi Quang Hiếu', 'Giáo viên', 'bố', '23/11/1985', '123456850', 'SV062'),
('51131855', 'Tạ Thiên Thượng', 'Diễn Viên', 'bố', '23/11/1985', '123456851', 'SV063'),
('51131856', 'Nguyễn Đức Đại', 'Nhân viên văn phòng', 'bố', '23/11/1985', '123456852', 'SV064'),
('51131857', 'Nguyễn Tiếng Trung', 'HR', 'bố', '23/11/1985', '123456853', 'SV065'),
('51131858', 'Trần Đại Nam', 'Giảng viên đại học', 'bố', '23/11/1985', '123456854', 'SV066'),
('51131859', 'Nguyễn Bão Phong Ba', 'Diễn Viên', 'bố', '23/11/1985', '123456855', 'SV067'),
('51131860', 'Lê Thị Tuyết', 'Nhân viên Ngân Hàng', 'mẹ', '23/11/1985', '123456856', 'SV068'),
('51131861', 'Vũ Văn Quang', 'Phóng Viên', 'bố', '23/11/1985', '123456857', 'SV069'),
('51131862', 'Lường Thiên Trường', 'Hướng Dẫn Viên Du Lịch', 'bố', '23/11/1985', '123456858', 'SV070'),
('51131863', 'Nguyễn Ngọc Thiên Trang', 'Bác sĩ', 'mẹ', '23/11/1985', '123456859', 'SV071'),
('51131864', 'Nguyễn Thị Trà My', 'HR', 'mẹ', '23/11/1985', '123456860', 'SV072'),
('51131865', 'Vương Tuyết Như', 'Công An', 'mẹ', '23/11/1985', '123456861', 'SV073'),
('51131866', 'Hoàng Thị Thu Hà', 'Luật Sư', 'mẹ', '23/11/1985', '123456862', 'SV074'),
('51131867', 'Nguyễn Thị Minh Hòa', 'Nhà văn', 'mẹ', '23/11/1985', '123456863', 'SV075'),
('51131868', 'Đỗ Lạc  Tuấn', 'Phóng Viên', 'bố', '23/11/1985', '123456864', 'SV076'),
('51131869', 'Lê Nhật Duy', 'Nhân viên Ngân Hàng', 'bố', '23/11/1985', '123456865', 'SV077'),
('51131870', 'Phạm Hải Đăng', 'Phóng Viên', 'bố', '23/11/1985', '123456866', 'SV078'),
('51131871', 'Triệu Khánh Chi', 'Biên Tập Viên', 'mẹ', '23/11/1985', '123456867', 'SV079'),
('51131872', 'Nguyễn Phú Hưng', 'Biên Tập Viên', 'bố', '23/11/1985', '123456868', 'SV080'),
('51131873', 'Phạm Thanh Trà', 'HR', 'mẹ', '23/11/1985', '123456869', 'SV081'),
('51131874', 'Đinh Công Trung', 'Biên Tập Viên', 'bố', '23/11/1985', '123456870', 'SV082'),
('51131875', 'Chu Ngọc Trang', 'Nhân viên Ngân Hàng', 'mẹ', '23/11/1985', '123456871', 'SV083'),
('51131876', 'Đào Thiên Tài', 'Biên Tập Viên', 'bố', '23/11/1985', '123456872', 'SV084'),
('51131877', 'Lê Tuấn Thiện', 'Nhà văn', 'bố', '23/11/1985', '123456873', 'SV085'),
('51131878', 'Ngô Đức Sơn', 'Công An', 'bố', '23/11/1985', '123456874', 'SV086'),
('51131879', 'Trần Trọng Khôi', 'Hướng Dẫn Viên Du Lịch', 'bố', '23/11/1985', '123456875', 'SV087'),
('51131880', 'Đinh Văn Sửu', 'Nhân viên văn phòng', 'bố', '23/11/1985', '123456876', 'SV088'),
('51131881', 'Quách Hồng Nam', 'Bác sĩ', 'bố', '23/11/1985', '123456877', 'SV089'),
('51131882', 'Võ Ngọc Hải', 'Luật Sư', 'bố', '23/11/1985', '123456878', 'SV090'),
('51131883', 'Nguyễn Viết Tiến', 'Nhà Báo', 'bố', '23/11/1985', '123456879', 'SV091'),
('51131884', 'Đoàn Minh Đức', 'Nhân viên Ngân Hàng', 'bố', '23/11/1985', '123456880', 'SV092'),
('51131885', 'Trịnh  Thiên Quang', 'Nhà Báo', 'bố', '23/11/1985', '123456881', 'SV093'),
('51131886', 'Lương Thúy Hằng', 'Nhân viên văn phòng', 'mẹ', '23/11/1985', '123456882', 'SV094'),
('51131887', 'Trịnh Thị Mai Lan', 'Hướng Dẫn Viên Du Lịch', 'mẹ', '23/11/1985', '123456883', 'SV095'),
('51131888', 'Bùi Thanh Trí', 'Nhà văn', 'bố', '23/11/1985', '123456884', 'SV096'),
('51131889', 'Trương Hoàng Đạt', 'HR', 'bố', '23/11/1985', '123456885', 'SV097'),
('51131890', 'Dương Ngọc Khải', 'Nhà Báo', 'bố', '23/11/1985', '123456886', 'SV098'),
('51131891', 'Lê Hoàng Phú', 'Nhà văn', 'bố', '23/11/1985', '123456887', 'SV099'),
('51131892', 'Quách Trường Xuân Phương', 'Công An', 'mẹ', '23/11/1985', '123456888', 'SV100'),
('51131893', 'Tạ Duy Mạnh', 'Luật Sư', 'bố', '23/11/1985', '123456889', 'SV001'),
('51131894', 'Phạm Tùng Linh', 'Bác sĩ', 'bố', '23/11/1985', '123456890', 'SV013'),
('51131895', 'Đỗ Quang Đạo', 'Luật Sư', 'bố', '23/11/1985', '123456891', 'SV014'),
('51131896', 'Nguyễn Thành Nam', 'Nhân viên Ngân Hàng', 'bố', '23/11/1985', '123456892', 'SV005'),
('51131897', 'Vũ Tuấn Công', 'Bác Sĩ', 'bố', '23/11/1985', '123456893', 'SV006'),
('51131898', 'Tạ Văn Hà', 'Nhân viên văn phòng', 'bố', '23/11/1985', '123456894', 'SV007'),
('51131899', 'Trần Thiện Chiến ', 'Nhân viên Ngân Hàng', 'bố', '23/11/1985', '123456895', 'SV008'),
('51131900', 'Lê Đình Bách', 'Công An', 'bố', '23/11/1985', '123456896', 'SV009'),
('51131901', 'Đặng Duy Nam', 'Nhân viên văn phòng', 'bố', '23/11/1985', '123456897', 'SV010');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sinh_vien`
--

CREATE TABLE `sinh_vien` (
  `Ma_SV` varchar(10) NOT NULL,
  `Ho` varchar(100) NOT NULL,
  `Ten` varchar(100) NOT NULL,
  `Ten_Dem` varchar(100) NOT NULL,
  `Ngay_Sinh` text NOT NULL,
  `Que_Quan` varchar(100) NOT NULL,
  `CMND` varchar(10) NOT NULL,
  `Gioi_Tinh` varchar(100) NOT NULL,
  `Mat_Khau` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `SDT` varchar(10) NOT NULL,
  `Ma_LH` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `sinh_vien`
--

INSERT INTO `sinh_vien` (`Ma_SV`, `Ho`, `Ten`, `Ten_Dem`, `Ngay_Sinh`, `Que_Quan`, `CMND`, `Gioi_Tinh`, `Mat_Khau`, `Email`, `SDT`, `Ma_LH`) VALUES
('SV001', 'Vũ', 'Hưởng', 'Xuân', '25/08/2000', 'Tỉnh Thanh Hóa', '1251132520', 'Nam', '2508', 'example@gmail.com', '0999999999', 'BVTVA'),
('SV002', 'Vũ', 'Hưởng', 'Văn', '08/02/2000', 'Tỉnh Nam Định', '1351110124', 'Nam', '0802', 'example@gmail.com', '0999999999', 'BVTVA'),
('SV003', 'Vũ', 'Tiến', 'Văn', '27/02/2000', 'Thành phố Hà Nội', '1351112246', 'Nam', '2702', 'example@gmail.com', '0999999999', 'BVTVA'),
('SV004', 'Vũ', 'Duy', 'Văn', '28/10/2000', 'Tỉnh Ninh Bình', '1451083059', 'Nam', '2810', 'example@gmail.com', '0999999999', 'BVTVB'),
('SV005', 'Vũ', 'Sang', 'Trọng', '02/04/2000', 'Tỉnh Thanh Hóa', '1451012040', 'Nam', '0204', 'example@gmail.com', '0999999999', 'BVTVB'),
('SV006', 'Vũ', 'Diện', 'Tiến', '20/07/2000', 'Tỉnh Hải Dương', '1451012473', 'Nam', '2007', 'example@gmail.com', '0999999999', 'BVTVB'),
('SV007', 'Vũ', 'Đạt', 'Quốc', '20/08/2000', 'Tỉnh Hải Dương', '1451112429', 'Nam', '2008', 'example@gmail.com', '0999999999', 'CNA'),
('SV008', 'Vũ', 'Khởi', 'Minh', '21/02/2000', 'Tỉnh Quảng Ngãi', '1451012691', 'Nam', '2102', 'example@gmail.com', '0999999999', 'CNA'),
('SV009', 'Trần', 'Trường', 'Xuân', '25/02/2000', 'Tỉnh Nghệ An', '1451012464', 'Nam', '2502', 'example@gmail.com', '0999999999', 'CNA'),
('SV010', 'Trần', 'Thắng', 'Xuân', '02/01/2000', 'Tỉnh Nam Định', '1451012609', 'Nam', '0201', 'example@gmail.com', '0999999999', 'CNB'),
('SV011', 'Trần', 'Nghĩa', 'Xuân', '19/11/2000', 'Thành phố Hà Nội', '1451040064', 'Nam', '1911', 'example@gmail.com', '0999999999', 'CNB'),
('SV012', 'Trần', 'Nghĩa', 'Đại', '26/11/2000', 'Tỉnh Thái Bình', '1451012362', 'Nam', '2611', 'example@gmail.com', '0999999999', 'CNB'),
('SV013', 'Trần', 'Hinh', 'Xuân', '20/05/2000', 'Tỉnh Hải Dương', '1451040044', 'Nam', '2005', 'example@gmail.com', '0999999999', 'CXKA'),
('SV014', 'Trần', 'Duy', 'Văn', '29/07/2000', 'Tỉnh Điện Biên', '1451040139', 'Nam', '2907', 'example@gmail.com', '0999999999', 'CXKA'),
('SV015', 'Trần', 'Đoan', 'Văn', '12/08/2000', 'Tỉnh Cao Bằng', '1351131222', 'Nam', '1208', 'example@gmail.com', '0999999999', 'CXKA'),
('SV016', 'Trần', 'Cường', 'Văn', '17/11/2000', 'Thành phố Hà Nội', '1551081614', 'Nam', '1701', 'example@gmail.com', '0999999999', 'CXKB'),
('SV017', 'Trần', 'Linh', 'Thùy', '09/11/2000', 'Tỉnh Phú Yên', '1551081219', 'Nữ', '0911', 'example@gmail.com', '0999999999', 'CXKB'),
('SV018', 'Trần', 'Linh', 'Ngọc', '13/04/2000', 'Thành phố Hà Nội', '1551081334', 'Nữ', '1304', 'example@gmail.com', '0999999999', 'CXKB'),
('SV022', 'Trần', 'Ngọc Ninh', 'Thị', '22/05/1998', 'Tỉnh Hà Giang', '1551110474', 'Nữ', '2205', 'example@gmail.com', '0999999999', 'DSB'),
('SV023', 'Trần', 'Chiến', 'Minh', '02/09/2000', 'Tỉnh Thái Bình', '1551110424', 'Nam', '0209', 'example@gmail.com', '0999999999', 'DSB'),
('SV024', 'Trần', 'Việt', 'Đức', '24/05/2000', 'Tỉnh Ninh Bình', '1551110038', 'Nam', '2405', 'example@gmail.com', '0999999999', 'DSB'),
('SV025', 'Trần', 'Kiên', 'Đức', '05/07/2000', 'Tỉnh Hải Dương', '1551110329', 'Nam', '0507', 'example@gmail.com', '0999999999', 'KTA'),
('SV026', 'Trần', 'Dũng', 'Đức', '24/05/2000', 'Thành phố Hà Nội', '1551110134', 'Nam', '2405', 'example@gmail.com', '0999999999', 'KTA'),
('SV027', 'Trần', 'Minh', 'Đăng', '05/05/2000', 'Tỉnh Hà Nam', '1551110279', 'Nam', '0505', 'example@gmail.com', '0999999999', 'KTA'),
('SV033', 'Phạm', 'Hùng', 'Mai', '03/03/2000', 'Tỉnh Vĩnh Phúc', '1551010885', 'Nam', '0303', 'example@gmail.com', '0999999999', 'MMTA'),
('SV034', 'Phạm', 'Toàn', 'Văn', '25/05/2000', 'Tỉnh Hà Nam', '1551010528', 'Nam', '2505', 'example@gmail.com', '0999999999', 'MMTA'),
('SV035', 'Phạm', 'Dương', 'Thùy', '16/06/2000', 'Tỉnh Hoà Bình', '1551011010', 'Nam', '1606', 'example@gmail.com', '0999999999', 'MMTA'),
('SV036', 'Phạm', 'Tuyết Thi', 'Thị', '05/12/2000', 'Tỉnh Nghệ An', '1551011065', 'Nữ', '0512', 'example@gmail.com', '0999999999', 'MMTA'),
('SV037', 'Phạm', 'An', 'Thái', '21/02/2000', 'Tỉnh Nam Định', '1551010698', 'Nam', '2102', 'example@gmail.com', '0999999999', 'MMTA'),
('SV038', 'Phạm', 'Huy', 'Quang', '15/10/2000', 'Tỉnh Bắc Giang', '1551011062', 'Nam', '1510', 'example@gmail.com', '0999999999', 'MMTA'),
('SV039', 'Phạm', 'Huy', 'Bảo', '20/07/2000', 'Tỉnh Thanh Hóa', '1551010943', 'Nam', '2007', 'example@gmail.com', '0999999999', 'NHA'),
('SV040', 'Phạm', 'Hiếu', 'Minh', '21/02/2000', 'Tỉnh Bắc Ninh', '1551010904', 'Nam', '2102', 'example@gmail.com', '0999999999', 'NHA'),
('SV041', 'Phạm', 'Quang', 'Đức', '10/02/2000', 'Thành phố Hà Nội', '1551010888', 'Nam', '1002', 'example@gmail.com', '0999999999', 'NHA'),
('SV050', 'Nguyễn', 'Sơn', 'Ngọc', '15/10/2000', 'Tỉnh Bắc Giang', '1551040284', 'Nam', '1510', 'example@gmail.com', '0999999999', 'QTDVDLA'),
('SV051', 'Nguyễn', 'Ngọc Sơn', 'Trần', '20/07/2000', 'Tỉnh Thanh Hóa', '1551040126', 'Nam', '2007', 'example@gmail.com', '0999999999', 'QTDVDLA'),
('SV052', 'Nguyễn', 'Hà', 'Tôn', '21/02/2000', 'Tỉnh Bắc Ninh', '1551040093', 'Nam', '2102', 'example@gmail.com', '0999999999', 'QTDVDLA'),
('SV053', 'Nguyễn', 'Lộc', 'Tiến', '10/02/2000', 'Thành phố Hà Nội', '1551040183', 'Nam', '1002', 'example@gmail.com', '0999999999', 'QTDVDLA'),
('SV054', 'Nguyễn', 'Lộc', 'Tiến', '19/03/2000', 'Tỉnh Lạng Sơn', '1551040311', 'Nam', '1903', 'example@gmail.com', '0999999999', 'QTKDA'),
('SV055', 'Nguyễn', 'Linh', 'Thùy', '30/08/2000', 'Tỉnh Hải Dương', '1551040394', 'Nữ', '3008', 'example@gmail.com', '0999999999', 'QTKDA'),
('SV056', 'Nguyễn', 'Thông', 'Thiện', '01/08/2000', 'Tỉnh Vĩnh Phúc', '1551040387', 'Nam', '0108', 'example@gmail.com', '0999999999', 'QTKDA'),
('SV057', 'Nguyễn', 'Tâm', 'Minh', '01/10/2000', 'Thành phố Hà Nội', '155DC3592', 'Nam', '0110', 'example@gmail.com', '0999999999', 'QTKDA'),
('SV058', 'NguyễnThị', 'Tâm', 'Minh', '09/02/1999', 'Tỉnh Nam Định', '1551040442', 'Nữ', '0902', 'example@gmail.com', '0999999999', 'SPHHA'),
('SV059', 'Nguyễn', 'Đại', 'Thành', '06/05/2000', 'Tỉnh Quảng Ngãi', '1551130400', 'Nữ', '0605', 'example@gmail.com', '0999999999', 'SPHHA'),
('SV060', 'Nguyễn', 'Phúc', 'Quý', '19/07/2000', 'Tỉnh Phú Thọ', '1551130060', 'Nam', '1907', 'example@gmail.com', '0999999999', 'SPHHA'),
('SV061', 'Nguyễn', 'Phúc', 'Hồng', '14/08/2000', 'Tỉnh Yên Bái', '1551130341', 'Nam', '1408', 'example@gmail.com', '0999999999', 'SPHHA'),
('SV062', 'Nguyễn', 'Khánh', 'Nam', '11/10/2000', 'Tỉnh Thanh Hóa', '1551130054', 'Nam', '1110', 'example@gmail.com', '0999999999', 'SPHHA'),
('SV063', 'Nguyễn', 'Khánh', 'Nam', '08/07/2000', 'Thành phố Hải Phòng', '1551130492', 'Nam', '0807', 'example@gmail.com', '0999999999', 'SPHHA'),
('SV064', 'Nguyễn', 'Ngọc', 'Hồng', '12/09/2000', 'Tỉnh Tuyên Quang', '1551130176', 'Nữ', '1209', 'example@gmail.com', '0999999999', 'SPNVA'),
('SV065', 'Nguyễn', 'Ngọc', 'Bảo', '16/04/2000', 'Thành phố Hà Nội', '1551130242', 'Nữ', '1604', 'example@gmail.com', '0999999999', 'SPNVA'),
('SV066', 'Nguyễn', 'Cảnh', 'Đức', '13/11/2000', 'Thành phố Hà Nội', '1551130121', 'Nam', '1311', 'example@gmail.com', '0999999999', 'SPNVA'),
('SV067', 'Nguyễn', 'Chính', 'Công', '08/01/2000', 'Tỉnh Lạng Sơn', '145TB3541', 'Nam', '0801', 'example@gmail.com', '0999999999', 'SPNVA'),
('SV068', 'Ngô', 'Trường', 'Quang', '27/04/2000', 'Thành phố Hà Nội', '1551130200', 'Nam', '2704', 'example@gmail.com', '0999999999', 'SPNVA'),
('SV069', 'Ngô', 'Hoàng', 'Ngọc', '20/08/2000', 'Thành phố Hà Nội', '1551130118', 'Nam', '2008', 'example@gmail.com', '0999999999', 'SPTAA'),
('SV070', 'Ngô', 'Hoàng', 'Văn', '22/07/2000', 'Tỉnh Bắc Giang', '1651080122', 'Nam', '2207', 'example@gmail.com', '0999999999', 'SPTAA'),
('SV071', 'Ngô', 'Hùng', 'Đức', '05/07/2000', 'Tỉnh Ninh Bình', '1651080209', 'Nam', '0507', 'example@gmail.com', '0999999999', 'SPTAA'),
('SV072', 'Mai', 'Trường', 'Nhật', '06/01/2000', 'Tỉnh Phú Thọ', '1651010210', 'Nam', '0601', 'example@gmail.com', '0999999999', 'SPTAA'),
('SV073', 'Lưu', 'Hưng', 'Bảo', '23/01/2000', 'Tỉnh Hải Dương', '1651010582', 'Nam', '2301', 'example@gmail.com', '0999999999', 'SPTAA'),
('SV074', 'Lưu', 'Hưng', 'Quốc', '02/07/2000', 'Tỉnh Nghệ An', '1651012808', 'Nam', '0207', 'example@gmail.com', '0999999999', 'SPTHA'),
('SV075', 'Lương', 'Tuấn', 'Quốc', '01/08/2000', 'Tỉnh Hà Tĩnh', '1651110108', 'Nam', '0108', 'example@gmail.com', '0999999999', 'SPTHA'),
('SV076', 'Lê', 'Hoàng', 'Văn', '03/07/2000', 'Thành phố Hà Nội', '1651110051', 'Nam', '0307', 'example@gmail.com', '0999999999', 'SPTHA'),
('SV077', 'Lê', 'Thanh', 'Ngọc', '14/08/2000', 'Tỉnh Thái Bình', '1651110315', 'Nam', '1408', 'example@gmail.com', '0999999999', 'SPTHA'),
('SV078', 'Lê', 'Hùng', 'Duy', '01/12/2000', 'Tỉnh Nam Định', '1651110347', 'Nam', '0112', 'example@gmail.com', '0999999999', 'SPTHA'),
('SV079', 'Lê', 'Khoa', 'Đăng', '31/07/2000', 'Tỉnh Hoà Bình', '1651110212', 'Nam', '3107', 'example@gmail.com', '0999999999', 'SPTHA'),
('SV080', 'Lại', 'Hoàng Long', 'Nguyễn', '20/10/2000', 'Thành phố Hà Nội', '1651110262', 'Nam', '2010', 'example@gmail.com', '0999999999', 'SPVLA'),
('SV081', 'Lại', 'Bảo Long', 'Nguyễn', '11/08/2000', 'Tỉnh Hà Tĩnh', '1651110296', 'Nữ', '1108', 'example@gmail.com', '0999999999', 'SPVLA'),
('SV082', 'Lại', 'Hạnh', 'Đức', '03/05/2000', 'Thành phố Hà Nội', '1651110473', 'Nam', '0305', 'example@gmail.com', '0999999999', 'SPVLA'),
('SV083', 'Lã', 'Chiến', 'Văn', '23/07/2000', 'Thành phố Hà Nội', '1651110114', 'Nam', '2307', 'example@gmail.com', '0999999999', 'SPVLA'),
('SV084', 'Lã', 'Hương', 'Mai', '10/04/2000', 'Thành phố Hà Nội', '1651110276', 'Nữ', '1004', 'example@gmail.com', '0999999999', 'SPVLA'),
('SV085', 'Mai', 'Hương', 'Lệ', '11/12/2000', 'Thành phố Hà Nội', '1651110226', 'Nữ', '1112', 'example@gmail.com', '0999999999', 'SPVLA'),
('SV086', 'Lã', 'Hường', 'Thị', '17/10/2000', 'Thành phố Hà Nội', '1651110076', 'Nữ', '1710', 'example@gmail.com', '0999999999', 'TCNHA'),
('SV087', 'Hà', 'Tiến', 'Minh', '12/06/2000', 'Tỉnh Phú Thọ', '1651110032', 'Nam', '1206', 'example@gmail.com', '0999999999', 'TCNHA'),
('SV088', 'Dương', 'Thùy Dương', 'Thị', '01/06/2000', 'Tỉnh Nghệ An', '1651110489', 'Nam', '0106', 'example@gmail.com', '0999999999', 'TCNHA'),
('SV089', 'Dương', 'Đức', 'Minh', '28/11/2000', 'Tỉnh Phú Thọ', '1651110430', 'Nam', '2811', 'example@gmail.com', '0999999999', 'TCNHA'),
('SV090', 'Đoàn', 'Mạnh Dũng', 'Nguyễn', '17/04/2000', 'Thành phố Hà Nội', '1651110597', 'Nam', '1704', 'example@gmail.com', '0999999999', 'TCNHA'),
('SV091', 'Đỗ', 'Nguyên', 'Duy', '18/08/2000', 'Thành phố Hà Nội', '1651110044', 'Nam', '1808', 'example@gmail.com', '0999999999', 'TTNTA'),
('SV092', 'Đinh', 'Dương', 'Văn', '01/11/2000', 'Thành phố Hà Nội', '1651110511', 'Nam', '0111', 'example@gmail.com', '0999999999', 'TTNTA'),
('SV093', 'Đinh', 'Dinh', 'Công', '09/03/2000', 'Thành phố Hà Nội', '1651110589', 'Nam', '0901', 'example@gmail.com', '0999999999', 'TTNTA'),
('SV094', 'Đào', 'Chiến', 'Đình', '02/05/2000', 'Tỉnh Thái Bình', '1651110423', 'Nữ', '0105', 'example@gmail.com', '0999999999', 'TTNTA'),
('SV095', 'Đặng', 'Thắng', 'Xuân', '03/05/2000', 'Thành phố Hà Nội', '1651110084', 'Nam', '0105', 'example@gmail.com', '0999999999', 'TTNTA'),
('SV096', 'Đặng', 'Thắng', 'Văn', '12/04/2000', 'Tỉnh Hưng Yên', '1651110374', 'Nam', '1204', 'example@gmail.com', '0999999999', 'TTNTA'),
('SV097', 'Cao', 'Nhật', 'Xuân', '28/04/2000', 'Tỉnh Hà Tĩnh', '1651110237', 'Nam', '2804', 'example@gmail.com', '0999999999', 'TTNTA'),
('SV098', 'Cao', 'Tiến', 'Mạnh', '15/06/2000', 'Tỉnh Yên Bái', '1651110353', 'Nam', '1506', 'example@gmail.com', '0999999999', 'TTNTA'),
('SV099', 'Bùi', 'Thu Thúy', 'Thị', '08/02/2000', 'Tỉnh Phú Thọ', '1651110336', 'Nữ', '0802', 'example@gmail.com', '0999999999', 'TTNTA'),
('SV100', 'Bùi', 'Tuấn', 'Ngọc', '16/08/2000', 'Tỉnh Thái Bình', '1651110028', 'Nam', '1608', 'example@gmail.com', '0999999999', 'TTNTA');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chuyen_nganh`
--
ALTER TABLE `chuyen_nganh`
  ADD PRIMARY KEY (`Ma_Nganh`),
  ADD KEY `chuyen_nganh_khoa` (`Ma_Khoa`);

--
-- Chỉ mục cho bảng `dang_ky`
--
ALTER TABLE `dang_ky`
  ADD PRIMARY KEY (`Ma_SV`,`Ma_MH`),
  ADD KEY `dang_ky_mon_hoc` (`Ma_MH`);

--
-- Chỉ mục cho bảng `giang_day`
--
ALTER TABLE `giang_day`
  ADD PRIMARY KEY (`Ma_GV`,`Ma_MH`),
  ADD KEY `giang_day_mon_hoc` (`Ma_MH`);

--
-- Chỉ mục cho bảng `giang_vien`
--
ALTER TABLE `giang_vien`
  ADD PRIMARY KEY (`Ma_GV`),
  ADD KEY `giang_vien_khoa` (`Ma_Khoa`);

--
-- Chỉ mục cho bảng `khoa`
--
ALTER TABLE `khoa`
  ADD PRIMARY KEY (`Ma_Khoa`);

--
-- Chỉ mục cho bảng `linh_vuc_nc`
--
ALTER TABLE `linh_vuc_nc`
  ADD PRIMARY KEY (`Ma_GV`,`Ma_LVNC`);

--
-- Chỉ mục cho bảng `lop_hoc`
--
ALTER TABLE `lop_hoc`
  ADD PRIMARY KEY (`Ma_LH`),
  ADD KEY `lop_hoc_chuyen_nganh` (`Ma_Nganh`);

--
-- Chỉ mục cho bảng `mon_hoc`
--
ALTER TABLE `mon_hoc`
  ADD PRIMARY KEY (`Ma_MH`),
  ADD KEY `mon_hoc_khoa` (`Ma_Nganh`);

--
-- Chỉ mục cho bảng `nguoi_than`
--
ALTER TABLE `nguoi_than`
  ADD PRIMARY KEY (`CMND`),
  ADD KEY `nguoi_than_sinh_vien` (`Ma_SV`);

--
-- Chỉ mục cho bảng `sinh_vien`
--
ALTER TABLE `sinh_vien`
  ADD PRIMARY KEY (`Ma_SV`),
  ADD KEY `sinh_vien_lop_hoc` (`Ma_LH`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chuyen_nganh`
--
ALTER TABLE `chuyen_nganh`
  ADD CONSTRAINT `chuyen_nganh_khoa` FOREIGN KEY (`Ma_Khoa`) REFERENCES `khoa` (`Ma_Khoa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `dang_ky`
--
ALTER TABLE `dang_ky`
  ADD CONSTRAINT `dang_ky_mon_hoc` FOREIGN KEY (`Ma_MH`) REFERENCES `mon_hoc` (`Ma_MH`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `dang_ky_sinh_vien` FOREIGN KEY (`Ma_SV`) REFERENCES `sinh_vien` (`Ma_SV`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `giang_day`
--
ALTER TABLE `giang_day`
  ADD CONSTRAINT `giang_day_giang_vien` FOREIGN KEY (`Ma_GV`) REFERENCES `giang_vien` (`Ma_GV`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `giang_day_mon_hoc` FOREIGN KEY (`Ma_MH`) REFERENCES `mon_hoc` (`Ma_MH`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `giang_vien`
--
ALTER TABLE `giang_vien`
  ADD CONSTRAINT `giang_vien_khoa` FOREIGN KEY (`Ma_Khoa`) REFERENCES `khoa` (`Ma_Khoa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `linh_vuc_nc`
--
ALTER TABLE `linh_vuc_nc`
  ADD CONSTRAINT `linh_vuc_GV` FOREIGN KEY (`Ma_GV`) REFERENCES `giang_vien` (`Ma_GV`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `lop_hoc`
--
ALTER TABLE `lop_hoc`
  ADD CONSTRAINT `lop_hoc_chuyen_nganh` FOREIGN KEY (`Ma_Nganh`) REFERENCES `chuyen_nganh` (`Ma_Nganh`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `mon_hoc`
--
ALTER TABLE `mon_hoc`
  ADD CONSTRAINT `mon_hoc_khoa` FOREIGN KEY (`Ma_Nganh`) REFERENCES `chuyen_nganh` (`Ma_Nganh`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `nguoi_than`
--
ALTER TABLE `nguoi_than`
  ADD CONSTRAINT `nguoi_than_sinh_vien` FOREIGN KEY (`Ma_SV`) REFERENCES `sinh_vien` (`Ma_SV`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `sinh_vien`
--
ALTER TABLE `sinh_vien`
  ADD CONSTRAINT `sinh_vien_lop_hoc` FOREIGN KEY (`Ma_LH`) REFERENCES `lop_hoc` (`Ma_LH`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
