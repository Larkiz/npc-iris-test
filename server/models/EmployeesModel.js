import pgPromise from "pg-promise";
import { db } from "../connection/connect.js";

const pgHelpers = pgPromise().helpers;

export class EmployeesModel {
  constructor() {
    this.columns = ["name", "salary", "employment_date", "shop_id"];
  }
  async get(offset) {
    let selectQuery = `SELECT * FROM employees order by id asc`;
    if (offset !== null) {
      selectQuery += ` offset ${offset} limit 30`;
    }

    try {
      const data = await db.query(selectQuery);
      return data;
    } catch (error) {
      console.error(error);
    }
  }

  async insert(insertData) {
    const insert =
      pgHelpers.insert(insertData, null, "employees") + ` RETURNING id`;

    try {
      const data = await db.one(insert);

      return data.id;
    } catch (error) {
      throw error.message;
    }
  }

  async update(id, newData) {
    const update =
      pgHelpers.update(newData, null, "employees") +
      ` where id = ${id} RETURNING id`;
    try {
      const data = await db.one(update);

      return data.id;
    } catch (error) {
      throw error.message;
    }
  }

  async delete(id) {
    try {
      const data = await db.one(
        `delete from employees WHERE id = ${id} RETURNING *;`
      );

      return data;
    } catch (error) {
      throw error.message;
    }
  }
}
