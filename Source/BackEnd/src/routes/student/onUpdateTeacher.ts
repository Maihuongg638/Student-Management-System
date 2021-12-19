import express from "express";
import { db } from "../../config/connectDB";
import { Student } from "./../../constants/types";

const route = express.Router();

route.put("/api/updateStudent", async (req, res) => {
  let { MA_SV } = req.query;
  let body = req.body as Student;
  let sql = `UPDATE sinh_vien 
  SET Ho='${body.Ho}',
  Ten='${body.Ten}',
  Ten_Dem='${body.Ten_Dem}',
  Ngay_Sinh='${body.Ngay_Sinh}',
  Que_Quan='${body.Que_Quan}',
  CMND='${body.CMND}',
  Gioi_Tinh='${body.Gioi_Tinh}',
  Mat_Khau='${body.Mat_Khau}',
  Email='${body.Email}',
  SDT='${body.SDT}' 
  WHERE sinh_vien.Ma_SV = "${MA_SV}"`;
  try {
    db.query(sql, function (err, result) {
      res.send({ message: "oke" });
    });
  } catch (error) {
    res.send({ message: "failed" });
  }
});

export { route as updateStudent };
