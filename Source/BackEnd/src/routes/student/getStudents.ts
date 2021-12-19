import express from "express";
import { db } from "../../config/connectDB";
import { Student } from "../../constants/types";

const route = express.Router();

// lấy toàn bộ sinh viên
route.get("/api/getStudents", async (req, res) => {
  let sql = `SELECT * FROM sinh_vien WHERE 1`;
  try {
    db.query(sql, function (err, result) {
      res.send(result as unknown as Student[]);
    });
  } catch (error) {
    res.send(error);
  }
});

export { route as getStudents };
