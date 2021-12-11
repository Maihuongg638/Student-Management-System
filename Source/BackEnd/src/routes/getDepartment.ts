import express from "express";
import { db } from "../config/connectDB";

const route = express.Router();

route.get("/api/getDepartment", async (req, res) => {
  let depID = req.query.depID;

  let sql = depID
    ? `SELECT * FROM health_department WHERE DepID = "${depID}"`
    : "SELECT * FROM health_department WHERE 1";

  try {
    db.query(sql, function (err, results) {
      res.send(results);
    });
  } catch (error) {
    res.send("Error!");
  }
});

export { route as getDepartment };
