import express from "express";
import { db } from "../../config/connectDB";
import { Subject } from "../../constants/types";

const route = express.Router();

// lấy thông tin toàn bộ môn học
route.get("/api/getSubjects", async (req, res) => {
  let sql = `SELECT * FROM mon_hoc WHERE 1`;
  try {
    db.query(sql, function (err, result) {
      res.send(result as unknown as Subject[]);
    });
  } catch (error) {
    res.send(error);
  }
});

export { route as getSubjects };
