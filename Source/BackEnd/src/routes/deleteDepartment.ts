import express from "express";
import { db } from "../config/connectDB";

const route = express.Router();

route.delete("/api/deleteDepartment", async (req, res) => {
  let depID = req.query.depID;

  let sql = `DELETE FROM health_department WHERE DepID = "${depID}"`;
  try {
    db.query(sql, function (err, result) {
      res.send({
        message: "successed",
      });
    });
  } catch (error) {
    res.send({
      message: "failed",
    });
  }
});

export { route as deleteDepartment };
