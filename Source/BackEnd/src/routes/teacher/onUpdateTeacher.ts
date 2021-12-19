import express from "express";
import { db } from "../../config/connectDB";
import { Teacher } from "./../../constants/types";

const route = express.Router();

route.put("/api/updateTeacher", async (req, res) => {
  let { MA_GV } = req.query;
  let body = req.body as Teacher;
  let sql = `UPDATE giang_vien SET Ten_GV='${body.Ten_GV}',Ngay_Sinh='${body.Ngay_Sinh}',Gioi_Tinh='${body.Gioi_Tinh}',Bang_Cap='${body.Bang_Cap}',SDT='${body.SDT}',Dia_Chi='${body.Dia_Chi}',Email='${body.Email}',Mat_Khau='${body.Mat_Khau}' WHERE giang_vien.Ma_GV = "${MA_GV}"`;
  try {
    db.query(sql, function (err, result) {
      res.send({ message: "oke" });
    });
  } catch (error) {
    res.send({ message: "failed" });
  }
});

export { route as updateTeacher };
