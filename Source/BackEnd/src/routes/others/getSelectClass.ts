import express from "express";
import { db } from "../../config/connectDB";

const route = express.Router();

route.get("/api/getSelectClass", async (req, res) => {
  let sql = `
  SELECT Ma_LH, Ten_LH, Ten_Khoa, Ten_Nganh FROM lop_hoc
  INNER JOIN chuyen_nganh ON chuyen_nganh.Ma_Nganh = lop_hoc.Ma_Nganh
  INNER JOIN khoa ON khoa.Ma_Khoa = chuyen_nganh.Ma_Khoa
  WHERE 1`;
  try {
    db.query(sql, function (err, result) {
      res.send(result);
    });
  } catch (error) {
    res.send(error);
  }
});

export { route as getSelectClass };
