import express from "express";
import { db } from "../../config/connectDB";

const route = express.Router();

route.get("/api/getStudentAndOther", async (req, res) => {
  let sql = `
  SELECT Ma_SV, Ho, Ten, Ten_Dem, Ngay_Sinh, Que_Quan, CMND, Gioi_Tinh,Mat_Khau, Email, SDT, Ten_LH, Ten_Nganh, Ten_Khoa 
  FROM sinh_vien
  INNER JOIN lop_hoc ON lop_hoc.Ma_LH = sinh_vien.Ma_LH
  INNER JOIN chuyen_nganh ON chuyen_nganh.Ma_Nganh = lop_hoc.Ma_Nganh
  INNER JOIN khoa ON khoa.Ma_Khoa = chuyen_nganh.Ma_Khoa`;
  try {
    db.query(sql, function (err, result) {
      res.send(result);
    });
  } catch (error) {
    res.send(error);
  }
});

export { route as getStudentAndOther };
