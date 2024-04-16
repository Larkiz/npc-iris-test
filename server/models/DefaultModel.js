import { db } from "../connection/connect.js";

export class DefaultModel {
  constructor() {
    this.tableName = null;
    this.columns = null;
    this.data = {};
    this.pgConn = db;
  }

  createTable(tableName, columns) {
    this.tableName = tableName;
    this.columns = columns;
    for (let index = 0; index < columns.length; index++) {
      this.data[columns[index]] = null;
    }
  }

  async getById(id) {
    try {
      const data = await this.pgConn.query(
        `SELECT * FROM ${this.tableName} where id = ${id}`
      );
      return data;
    } catch (error) {
      console.error(error);
    }
  }

  async get(offset) {
    try {
      const data = await this.pgConn.query(
        `SELECT * FROM ${this.tableName} offset ${offset} limit 30`
      );
      return data;
    } catch (error) {
      console.error(error);
    }
  }
  async insert() {
    const values = Object.values(this.data)
      .map((name) => `'${name}'`)
      .join(",");

    try {
      const data = await this.pgConn.one(
        `INSERT INTO ${this.tableName}(
          ${this.columns})
          VALUES (${values}) RETURNING id;`
      );

      return data.id;
    } catch (error) {
      throw error.message;
    }
  }
  async update(id, newData) {
    try {
      const values = Object.values(newData)
        .map((name) => `'${name}'`)
        .join(",");

      const data = await this.pgConn.one(
        `UPDATE ${this.tableName} SET (${Object.keys(newData)}) = ROW(${values})
        WHERE id = ${id} RETURNING id;`
      );

      return data.id;
    } catch (error) {
      throw error.message;
    }
  }
  async delete(id) {
    try {
      const data = await this.pgConn.one(
        `delete from ${this.tableName} WHERE id = ${id} RETURNING *;`
      );

      return data;
    } catch (error) {
      throw error.message;
    }
  }
}
