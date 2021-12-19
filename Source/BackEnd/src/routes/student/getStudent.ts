import express from "express";
import { db } from "../../config/connectDB";
import { Student } from "../../constants/types";

const route = express.Router();

// lấy thông tin của một sinh viên thông qua MA_SV
route.get("/api/getStudent", async (req, res) => {
  const { Ma_SV } = req.query;

  let sql = `SELECT * FROM sinh_vien WHERE sinh_vien.Ma_SV = "${Ma_SV}"`;
  try {
    db.query(sql, function (err, result) {
      res.send(result as unknown as Student);
    });
  } catch (error) {
    res.send(error);
  }
});

export { route as getStudent };
