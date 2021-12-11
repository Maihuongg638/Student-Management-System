import bodyParser from "body-parser";
import express from "express";
import { deleteDepartment } from "./routes/deleteDepartment";
import { getDepartment } from "./routes/getDepartment";
import { getDoctor } from "./routes/getDoctor";
import { getPackage } from "./routes/getPackage";
import { insertDepartment } from "./routes/insertDepartment";
import { updateDepartment } from "./routes/updateDepartment";
const app = express();
const port = 9009;
const cors = require("cors");
app.use(
  cors({
    origin: "*",
    methods: ["GET", "POST", "DELETE", "UPDATE", "PUT", "PATCH"],
  }),
);
app.use(bodyParser.json());
app.use(getDepartment);
app.use(getPackage);
app.use(getDoctor);
app.use(insertDepartment);
app.use(deleteDepartment);
app.use(updateDepartment);

app.listen(port, () => {
  console.log("Node server started running at " + port);
});
