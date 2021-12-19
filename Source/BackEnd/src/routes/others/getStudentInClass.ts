import express from "express";
import { db } from "../../config/connectDB";

const route = express.Router();

route.get("/api/getStudentInClass", async (req, res) => {
  const { Ma_LH } = req.query;

  let sql = `
  SELECT * FROM sinh_vien WHERE sinh_vien.Ma_LH = "${Ma_LH}"`;
  try {
    db.query(sql, function (err, result) {
      res.send(result);
    });
  } catch (error) {
    res.send(error);
  }
});

export { route as getStudentInClass };
