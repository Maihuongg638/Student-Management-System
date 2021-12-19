import express from "express";
import { db } from "../../config/connectDB";
import { Class } from "../../constants/types";

const route = express.Router();

// lấy thông tin của một lớp học thông qua MA_LH
route.get("/api/getClass", async (req, res) => {
  const { Ma_LH } = req.query;

  let sql = `SELECT * FROM lop_hoc WHERE lop_hoc.Ma_LH = "${Ma_LH}"`;
  try {
    db.query(sql, function (err, result) {
      res.send(result as unknown as Class);
    });
  } catch (error) {
    res.send(error);
  }
});

export { route as getClass };
