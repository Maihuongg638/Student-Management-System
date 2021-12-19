import express from "express";
import { db } from "../../config/connectDB";

const route = express.Router();

route.get("/api/getMarkOfStudent", async (req, res) => {
  const { Ma_SV } = req.query;

  let sql = `
  SELECT dang_ky.Ma_MH, Ten_MH, Diem_QT, Diem_GK, Diem_CK FROM dang_ky
  INNER JOIN sinh_vien ON sinh_vien.Ma_SV = dang_ky.Ma_SV
  INNER JOIN mon_hoc ON mon_hoc.Ma_MH = dang_ky.Ma_MH
  WHERE dang_ky.Ma_SV = "${Ma_SV}"`;
  try {
    db.query(sql, function (err, result) {
      res.send(result);
    });
  } catch (error) {
    res.send(error);
  }
});

export { route as getMarkOfStudent };
