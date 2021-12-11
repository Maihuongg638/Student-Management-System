import express from "express";
import { db } from "../config/connectDB";

const route = express.Router();

route.get("/api/getDoctor", async (req, res) => {
  let UID = req.query.UID;
  let sql = UID
    ? `SELECT FirstName, LastName, PhoneNumber, Sex,HealthDepID 	 FROM acc_doctor,sys_account WHERE acc_doctor.UID = sys_account.acc_ID AND acc_doctor.UID = "${UID}" `
    : "SELECT FirstName, LastName, PhoneNumber, Sex,HealthDepID 	 FROM acc_doctor,sys_account WHERE acc_doctor.UID = sys_account.acc_ID";
  try {
    db.query(sql, function (err, results) {
      res.send(results);
    });
  } catch (error) {
    console.log("Failed!");
  }
});

export { route as getDoctor };
