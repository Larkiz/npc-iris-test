import { ShopsModel } from "../models/ShopsModel.js";

export const ShopsController = {
  get: async (req, res) => {
    const offset = req.query.offset || null;

    const data = await new ShopsModel().get(offset);
    return res.json(data);
  },
  post: async (req, res) => {
    const newShop = new ShopsModel();

    const { opening_date, address, budget, employees_number } = req.body;
    newShop.data.opening_date = opening_date;
    newShop.data.address = address;
    newShop.data.budget = budget;
    newShop.data.employees_number = employees_number;
    try {
      const id = await newShop.insert();
      return res.json({ insertedId: id });
    } catch (error) {
      return res.status(422).send({ message: error });
    }
  },
  put: async (req, res) => {
    const newData = req.body;

    try {
      const data = await new ShopsModel().update(req.params.id, newData);
      return res.json({ updatedId: data });
    } catch (error) {
      return res.status(422).send({ message: error });
    }
  },
  delete: async (req, res) => {
    try {
      const data = await new ShopsModel().delete(req.params.id);
      return res.json({ deleted: data });
    } catch (error) {
      return res.status(400).send({ message: error });
    }
  },
};
