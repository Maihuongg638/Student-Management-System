import express from "express";
import { db } from "../../config/connectDB";
import { Family } from "../../constants/types";

const route = express.Router();

// lấy danh sách người thân của sinh viên thông qua MA_SV
route.get("/api/getFamilyByMaSV", async (req, res) => {
  const { Ma_SV } = req.query;

  let sql = `SELECT * FROM nguoi_than WHERE nguoi_than.Ma_SV = "${Ma_SV}"`;
  try {
    db.query(sql, function (err, result) {
      res.send(result as unknown as Family[]);
    });
  } catch (error) {
    res.send(error);
  }
});

export { route as getFamilyByMaSV };
