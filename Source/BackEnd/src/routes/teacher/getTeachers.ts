import express from "express";
import { db } from "../../config/connectDB";
import { Teacher } from "../../constants/types";
const route = express.Router();

// Lấy thông tin của toàn bộ giảng viên
route.get("/api/getTeachers", async (req, res) => {
  let sql = "SELECT * FROM giang_vien WHERE 1";
  try {
    db.query(sql, function (err, result) {
      res.send(result as unknown as Teacher[]);
    });
  } catch (error) {
    res.send(error);
  }
});

export { route as getTeachers };
