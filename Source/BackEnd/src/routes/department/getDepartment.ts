import express from "express";
import { db } from "../../config/connectDB";

const route = express.Router();

// lấy thông tin của một lớp học thông qua MA_LH
route.get("/api/getDepartment", async (req, res) => {
  const { Ma_Khoa } = req.query;

  let sql = `SELECT * FROM khoa WHERE khoa.Ma_Khoa = "${Ma_Khoa}"`;
  try {
    db.query(sql, function (err, result) {
      res.send(result);
    });
  } catch (error) {
    res.send(error);
  }
});

export { route as getDepartment };
