import express from "express";
import { db } from "../../config/connectDB";

const route = express.Router();

// lấy danh sách người thân của sinh viên thông qua MA_SV
route.get("/api/getTeacherAndDepartments", async (req, res) => {
  let sql = `SELECT * FROM giang_vien, khoa WHERE giang_vien.Ma_Khoa = khoa.Ma_Khoa`;
  try {
    db.query(sql, function (err, result) {
      res.send(result);
    });
  } catch (error) {
    res.send(error);
  }
});

export { route as getTeacherAndDepartments };
