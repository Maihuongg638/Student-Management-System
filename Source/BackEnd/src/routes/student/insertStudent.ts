import express from "express";
import { Student } from "../../constants/types";
import { db } from "./../../config/connectDB";

const route = express.Router();

route.post("/api/insertStudent", async (req, res) => {
  let body = req.body as Student;
  let sql = `
  INSERT INTO sinh_vien(Ma_SV, Ho, Ten, Ten_Dem, Ngay_Sinh, Que_Quan, CMND, Gioi_Tinh, Mat_Khau, Email, SDT, Ma_LH) VALUES 
  ('${body.Ma_SV}','${body.Ho}','${body.Ten}','${body.Ten_Dem}','${body.Ngay_Sinh}','${body.Que_Quan}','${body.CMND}','${body.Gioi_Tinh}','${body.Mat_Khau}','${body.Email}','${body.SDT}','${body.Ma_LH}')
  `;

  try {
    db.query(sql, function (err, result) {
      res.send({
        message: "oke",
      });
    });
  } catch (error) {
    res.send({
      message: "failed",
    });
  }
});

export { route as insertStudent };
