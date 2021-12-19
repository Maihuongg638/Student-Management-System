import express from "express";
import { db } from "../../config/connectDB";
import { Class } from "./../../constants/types";

const route = express.Router();

// lấy thông tin toàn bộ lớp học
route.get("/api/getClasses", async (req, res) => {
  let sql = `SELECT * FROM lop_hoc WHERE 1`;
  try {
    db.query(sql, function (err, result) {
      res.send(result as unknown as Class[]);
    });
  } catch (error) {
    res.send(error);
  }
});

export { route as getClasses };
