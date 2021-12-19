import bodyParser from "body-parser";
import express from "express";
import { db } from "./config/connectDB";
import { getClass } from "./routes/class/getClass";
import { getClasses } from "./routes/class/getClasses";
import { getDepartment } from "./routes/department/getDepartment";
import { getDepartmentInfo } from "./routes/department/getDepartmentInfo";
import { getDepartments } from "./routes/department/getDepartments";
import { getFamilyByMaSV } from "./routes/family/getFamilyByMaSV";
import { getMajors } from "./routes/major/getMajors";
import { addMark } from "./routes/others/addMark";
import { getMarkOfStudent } from "./routes/others/getMarkOfStudent";
import { getSelectClass } from "./routes/others/getSelectClass";
import { getStudentAndOther } from "./routes/others/getStudentDate";
import { getStudentInClass } from "./routes/others/getStudentInClass";
import { getTeacherAndDepartments } from "./routes/others/getTeacherAndDepartment";
import { deleteStudent } from "./routes/student/deleteStudent";
import { getStudent } from "./routes/student/getStudent";
import { getStudents } from "./routes/student/getStudents";
import { insertStudent } from "./routes/student/insertStudent";
import { updateStudent } from "./routes/student/onUpdateTeacher";
import { getSubject } from "./routes/subject/getSubject";
import { getSubjects } from "./routes/subject/getSubjects";
import { deleteTeacher } from "./routes/teacher/deleteTeacher";
import { getTeacher } from "./routes/teacher/getTeacher";
import { getTeachers } from "./routes/teacher/getTeachers";
import { updateTeacher } from "./routes/teacher/onUpdateTeacher";
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
app.use(getTeachers);
app.use(getTeacher);
app.use(getStudents);
app.use(getStudent);
app.use(getFamilyByMaSV);
app.use(getSubjects);
app.use(getSubject);
app.use(getClasses);
app.use(getClass);
app.use(getDepartment);
app.use(getDepartments);
app.use(getTeacherAndDepartments);
app.use(deleteTeacher);
app.use(updateTeacher);
app.use(getStudentAndOther);
app.use(deleteStudent);
app.use(updateStudent);
app.use(getSelectClass);
app.use(insertStudent);
app.use(getDepartmentInfo);
app.use(getMajors);
app.use(getStudentInClass);
app.use(getMarkOfStudent);
app.use(addMark);

app.listen(port, () => {
  console.log("Node server started running at " + port);
  db.connect(function (err) {
    if (err) throw err;
    console.log("Connected!");
  });
});
