import dotenv from "dotenv";
import pgPromise from "pg-promise";

dotenv.config();
const pg = pgPromise();

export const db = pg({
  user: process.env.user,
  password: process.env.password,
  host: process.env.host,
  port: process.env.port,
  database: process.env.database,
});
