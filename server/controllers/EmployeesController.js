import { EmployeesModel } from "../models/EmployeesModel.js";

export const EmployeesController = {
  get: async (req, res) => {
    const offset = req.query.offset || null;

    const data = await new EmployeesModel().get(offset);
    return res.json(data);
  },
  post: async (req, res) => {
    const newEmployee = new EmployeesModel();

    const { name, salary, employment_date, shop_id } = req.body;
    newEmployee.data.name = name;
    newEmployee.data.salary = salary;
    newEmployee.data.employment_date = employment_date;
    newEmployee.data.shop_id = shop_id;
    try {
      const id = await newEmployee.insert();
      return res.json({ insertedId: id });
    } catch (error) {
      return res.status(422).send({ message: error });
    }
  },
  put: async (req, res) => {
    const newData = req.body;

    try {
      const data = await new EmployeesModel().update(req.params.id, newData);
      return res.json({ updatedId: data });
    } catch (error) {
      return res.status(422).send({ message: error });
    }
  },
  delete: async (req, res) => {
    try {
      const data = await new EmployeesModel().delete(req.params.id);
      return res.json({ deleted: data });
    } catch (error) {
      return res.status(400).send({ message: error });
    }
  },
};
