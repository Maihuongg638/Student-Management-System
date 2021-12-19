import express from "express";
import { db } from "../../config/connectDB";

const route = express.Router();

route.delete("/api/deleteStudent", async (req, res) => {
  const { MA_SV } = req.query;

  let sql = `DELETE FROM sinh_vien WHERE sinh_vien.Ma_SV="${MA_SV}"`;
  try {
    db.query(sql, function (err, result) {
      res.send({ message: "oke" });
    });
  } catch (error) {
    res.send({ message: "failed" });
  }
});

export { route as deleteStudent };
