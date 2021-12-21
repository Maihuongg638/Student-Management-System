import mysql from "mysql2";

export const configDB = {
  host: "localhost",
  user: "root",
  password: "",
  database: "studentdb",
  port: 3306,
};

export const db = mysql.createConnection(configDB);
