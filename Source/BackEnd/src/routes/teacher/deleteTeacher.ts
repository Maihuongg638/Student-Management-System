import express from "express";
import { db } from "../../config/connectDB";

const route = express.Router();

route.delete("/api/deleteTeacher", async (req, res) => {
  const { MA_GV } = req.query;

  let sql = `DELETE FROM giang_vien WHERE giang_vien.Ma_GV="${MA_GV}"`;
  try {
    db.query(sql, function (err, result) {
      res.send({ message: "oke" });
    });
  } catch (error) {
    res.send({ message: "failed" });
  }
});

export { route as deleteTeacher };
