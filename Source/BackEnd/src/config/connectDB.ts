import mysql from "mysql2";

export const configDB = {
  host: "localhost",
  user: "root",
  password: "",
  database: "fat9sol8vw",
};

export const db = mysql.createConnection(configDB);
