import express from "express";
import { MarkSubjectAdd } from "../../constants/types";
import { db } from "./../../config/connectDB";

const route = express.Router();

route.post("/api/addMark", async (req, res) => {
  let body = req.body as MarkSubjectAdd;
  let sql = `
  INSERT INTO dang_ky(Ma_SV, Ma_MH, Hoc_Ky, Diem_QT, Diem_GK, Diem_CK, Trang_Thai) 
  VALUES ('${body.Ma_SV}','${body.Ma_MH}','1','${body.Diem_QT}','${body.Diem_GK}','${body.Diem_CK}','1')
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

export { route as addMark };
