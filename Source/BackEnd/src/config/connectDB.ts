import mysql from "mysql2";

export const configDB = {
  host: "remotemysql.com",
  user: "fAT9sOl8vw",
  password: "t4SIUtwmrB",
  database: "fAT9sOl8vw",
  port: 3306,
};

export const db = mysql.createConnection(configDB);
