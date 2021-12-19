import express from "express";
import { db } from "../../config/connectDB";

const route = express.Router();

route.get("/api/getDepartmentInfo", async (req, res) => {
  let sql = `
  SELECT Ten_Khoa, So_Phong, Link_Page,SDT_Khoa ,COUNT(Ma_Nganh)
  As So_Nganh FROM khoa,
  chuyen_nganh WHERE khoa.Ma_Khoa = chuyen_nganh.Ma_Khoa
  GROUP By khoa.Ma_Khoa`;
  try {
    db.query(sql, function (err, result) {
      res.send(result);
    });
  } catch (error) {
    res.send(error);
  }
});

export { route as getDepartmentInfo };
