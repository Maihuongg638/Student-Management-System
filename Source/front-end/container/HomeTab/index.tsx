import { Box, BoxProps } from "@chakra-ui/react";
import * as React from "react";
import { NewCell } from "../../components/NewCell";

interface Props {}

export function HomeTab({ ...boxProps }: Props & BoxProps) {
  return (
    <Box {...boxProps}>
      <NewCell
        url="img/newx.PNG"
        title="TTDVCNTT - HƯỚNG DẪN KIỂM TRA ĐẠO VĂN TRỰC TUYẾN SỬ DỤNG MICROSOFT WORD TRONG BỘ OFFICE 365"
        content="Kính gửi quý Thầy/cô và Sinh viên trường,Microsoft Word trong bộ Office 365 đã tích hợp công cụ kiểm tra đạo văn nằm trong mục “Editor”. Thầy/cô nhà trường ngoài sử dụng công cụ kiểm tra đạo văn chuyên nghiệp Turnitin, SafeAssign trên Blackboard cũng có thể sử dụng thêm tính năng Similarity trong  Editor của MS Word để kiểm tra đạo văn (chỉ sử dụng được với phiên bản MS Word trực tuyến chạy trên trình duyệt web)"
      />
      <NewCell
        url="img/notice.PNG"
        title="Thông báo về: Khảo sát Đánh giá môn học Online, học kỳ 2, NH 2020-2021"
        content="Thân gửi các bạn Sinh viên,
        Phòng Bảo đảm chất lượng – Khảo thí thông báo đến Sinh viên thông tin liên quan đến Khảo sát trực tuyến Đánh giá môn học, học kỳ 2, năm học 2020-2021:
        Hình thức khảo sát: Trực tuyến trên Edusoftweb
        Thời gian khảo sát:
        Các bạn SV vui lòng đăng nhập vào Edusoftweb để biết thời gian khảo sát trực tuyến cho từng môn học.
        "
      />
      <NewCell
        url="img/3.PNG"
        title="Thông tin tuyển sinh Đại học 2021"
        content="Năm 2021, trường Đại học Tây Bắc sử dụng 4 phương thức xét tuyển sau dành cho thí sinh toàn quốc bao gồm: Xét tuyển học bạ lớp 12, xét tuyển học bạ bằng kết quả 5 học kỳ (2 học kỳ lớp 10, 2 học kỳ lớp 11 và học kỳ I lớp 12), xét tuyển kết quả kỳ thi THPT 2021, xét tuyển kết quả kỳ thi đánh giá năng lực của Đại học Quốc gia Hà Nội 2021.
        "
      />
    </Box>
  );
}
