import express from "express";
import { db } from "../config/connectDB";

const route = express.Router();

interface Department {
  depID: string;
  depName: string;
  depContact: string;
  depCity: string;
  depDistrict: string;
  depStreet: string;
  depLocate: string;
}

route.post("/api/insertDepartment", async (req, res) => {
  let body = req.body;
  let data: Department = {
    depID: body.DepID ? body.DepID : "nan",
    depName: body.DepName ? body.DepName : "nan",
    depContact: body.DepContact ? body.DepContact : "nan",
    depCity: body.DepCity ? body.DepCity : "nan",
    depDistrict: body.DepDistrict ? body.DepDistrict : "nan",
    depStreet: body.DepStreet ? body.DepStreet : "nan",
    depLocate: body.Dep_LocateNum ? body.Dep_LocateNum : "nan",
  };
  let sql = `INSERT INTO health_department(DepID, DepName, DepContact, DepCity, DepDistrict, DepStreet, Dep_LocateNum) VALUES ("${data.depID}","${data.depName}","${data.depContact}","${data.depCity}","${data.depDistrict}","${data.depStreet}","${data.depLocate}")`;
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

export { route as insertDepartment };
