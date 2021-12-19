import express from "express";
import { db } from "../../config/connectDB";
import { Subject } from "../../constants/types";

const route = express.Router();

// lấy thông tin của một môn học thông qua Ma_MH
route.get("/api/getSubject", async (req, res) => {
  const { Ma_MH } = req.query;

  let sql = `SELECT * FROM mon_hoc WHERE mon_hoc.Ma_MH = "${Ma_MH}"`;
  try {
    db.query(sql, function (err, result) {
      res.send(result as unknown as Subject);
    });
  } catch (error) {
    res.send(error);
  }
});

export { route as getSubject };
