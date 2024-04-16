import { Router } from "express";
import { EmployeesController } from "../controllers/EmployeesController.js";
const employeesRouter = new Router();

employeesRouter.get("/employees", EmployeesController.get);
employeesRouter.post("/employees", EmployeesController.post);
employeesRouter.put("/employees/:id", EmployeesController.put);
employeesRouter.delete("/employees/:id", EmployeesController.delete);

export { employeesRouter };
