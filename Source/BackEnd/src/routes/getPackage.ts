import express from "express";
import { db } from "../config/connectDB";

const route = express.Router();

route.get("/api/getPackage", async (req, res) => {
  let depID = req.query.depID;
  let sql = depID
    ? `SELECT * FROM serve_package WHERE serve_package.HealthDepID = "${depID}"`
    : "SELECT * FROM serve_package WHERE 1";
  try {
    db.query(sql, function (err, results) {
      res.send(results);
    });
  } catch (error) {
    console.log("Failed!");
  }
});

export { route as getPackage };
