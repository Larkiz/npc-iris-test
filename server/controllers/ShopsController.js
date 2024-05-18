import { dataValidator } from "../functions/validator.js";

import { ShopsModel } from "../models/ShopsModel.js";

const shopsModel = new ShopsModel();

export const ShopsController = {
  get: async (req, res) => {
    const offset = req.query.offset || null;

    const data = await shopsModel.get(offset);
    return res.json(data);
  },
  post: async (req, res) => {
    const data = req.body;

    try {
      const validator = dataValidator(shopsModel.columns, data);

      if (validator === true) {
        const id = await shopsModel.insert(data);
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
      const updatedId = await shopsModel.update(id, data);
      return res.json({ updatedId: updatedId });
    } catch (error) {
      return res.status(422).send({ message: error });
    }
  },
  delete: async (req, res) => {
    try {
      const data = await shopsModel.delete(req.params.id);
      return res.json({ deleted: data });
    } catch (error) {
      return res.status(400).send({ message: error });
    }
  },
};
