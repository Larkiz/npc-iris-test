import { dataValidator } from "../functions/validator.js";
import { EmployeesModel } from "../models/EmployeesModel.js";

const employeesModel = new EmployeesModel();

export const EmployeesController = {
  get: async (req, res) => {
    const offset = req.query.offset || null;

    const data = await employeesModel.get(offset);
    return res.json(data);
  },
  post: async (req, res) => {
    const data = req.body;

    try {
      const validator = dataValidator(employeesModel.columns, data);

      if (validator === true) {
        const id = await employeesModel.insert(data);
        return res.json({ insertedId: id });
      } else {
        throw validator;
      }
    } catch (error) {
      return res.status(422).send({ message: error });
    }
  },
  put: async (req, res) => {
    const data = req.body;
    const id = req.params.id;

    try {
      const updatedId = await employeesModel.update(id, data);
      return res.json({ updatedId: updatedId });
    } catch (error) {
      return res.status(422).send({ message: error });
    }
  },
  delete: async (req, res) => {
    try {
      const data = await employeesModel.delete(req.params.id);
      return res.json({ deleted: data });
    } catch (error) {
      return res.status(400).send({ message: error });
    }
  },
};
