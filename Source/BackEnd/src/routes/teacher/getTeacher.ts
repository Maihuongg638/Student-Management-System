import express from "express";
import { db } from "../../config/connectDB";
import { Teacher } from "../../constants/types";

const route = express.Router();

// lấy thông tin của 1 giảng viên thông quá MA_GV
route.get("/api/getTeacher", async (req, res) => {
  const { MA_GV } = req.query;

  let sql = `SELECT * FROM giang_vien WHERE giang_vien.Ma_GV = "${MA_GV}"`;
  try {
    db.query(sql, function (err, result) {
      res.send(result as unknown as Teacher);
    });
  } catch (error) {
    res.send(error);
  }
});

export { route as getTeacher };
