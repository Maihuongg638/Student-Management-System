import { Teacher } from "../constants/types";
import { Student } from "./../../BackEnd/src/constants/types";
import { MarkSubjectAdd } from "./../constants/types";

const host = "http://localhost:9009";

export const getListTeacher = () => {
  return fetch(`${host}/api/getTeachers`);
};

export const getDepartmentByID = (id: string) => {
  return fetch(`${host}/api/getDepartment?Ma_Khoa=${id}`);
};

export const getTeacherAndDepartments = () => {
  return fetch(`${host}/api/getTeacherAndDepartments`);
};

export const deleteTeacher = (id: string) => {
  return fetch(`${host}/api/deleteTeacher?MA_GV=${id}`, { method: "DELETE" });
};

export const updateTeacher = (item: Teacher, id: string) => {
  var myHeaders = new Headers();
  myHeaders.append("Content-Type", "application/json");

  var raw = JSON.stringify(item);

  var requestOptions = {
    method: "PUT",
    headers: myHeaders,
    body: raw,
  };

  return fetch(`${host}/api/updateTeacher?MA_GV=${id}`, requestOptions);
};

export const getStudentAndOther = () => {
  return fetch(`${host}/api/getStudentAndOther`);
};

export const deleteStudent = (id: string) => {
  return fetch(`${host}/api/deleteStudent?MA_SV=${id}`, { method: "DELETE" });
};

export const updateStudent = (item: Student, id: string) => {
  var myHeaders = new Headers();
  myHeaders.append("Content-Type", "application/json");

  var raw = JSON.stringify(item);

  var requestOptions = {
    method: "PUT",
    headers: myHeaders,
    body: raw,
  };

  return fetch(`${host}/api/updateStudent?MA_SV=${id}`, requestOptions);
};

export const getSelectClass = () => {
  return fetch(`${host}/api/getSelectClass`);
};

export const InsertStudent = (item: Student) => {
  var myHeaders = new Headers();
  myHeaders.append("Content-Type", "application/json");

  var raw = JSON.stringify(item);

  var requestOptions = {
    method: "POST",
    headers: myHeaders,
    body: raw,
  };

  return fetch(`${host}/api/insertStudent`, requestOptions);
};

export const getDeparmentInfo = () => {
  return fetch(`${host}/api/getDepartmentInfo`);
};

export const getMajor = () => {
  return fetch(`${host}/api/getMajors`);
};

export const getSujects = () => {
  return fetch(`${host}/api/getSubjects`);
};

export const getClass = () => {
  return fetch(`${host}/api/getClasses`);
};

export const getStudentInClass = (id: string) => {
  return fetch(`${host}/api/getStudentInClass?Ma_LH=${id}`);
};

export const getMarkOfStudent = (id: string) => {
  return fetch(`${host}/api/getMarkOfStudent?Ma_SV=${id}`);
};

export const addMark = (item: MarkSubjectAdd) => {
  var myHeaders = new Headers();
  myHeaders.append("Content-Type", "application/json");

  var raw = JSON.stringify(item);

  var requestOptions = {
    method: "POST",
    headers: myHeaders,
    body: raw,
  };

  return fetch(`${host}/api/addMark`, requestOptions);
};
