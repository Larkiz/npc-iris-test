import { Router } from "express";
import { ShopsController } from "../controllers/ShopsController.js";

const shopsRouter = new Router();

shopsRouter.get("/shops", ShopsController.get);
shopsRouter.post("/shops", ShopsController.post);
shopsRouter.put("/shops/:id", ShopsController.put);
shopsRouter.delete("/shops/:id", ShopsController.delete);

export { shopsRouter };
