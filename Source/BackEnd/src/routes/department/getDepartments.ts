import express from "express";
import { db } from "../../config/connectDB";

const route = express.Router();

route.get("/api/getDepartments", async (req, res) => {
  let sql = `SELECT * FROM khoa WHERE 1`;
  try {
    db.query(sql, function (err, result) {
      res.send(result);
    });
  } catch (error) {
    res.send(error);
  }
});

export { route as getDepartments };
