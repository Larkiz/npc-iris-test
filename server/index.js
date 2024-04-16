import express from "express";

import { shopsRouter } from "./routes/shops.routes.js";
import { employeesRouter } from "./routes/employees.routes.js";

const app = express();

app.use(express.json());

app.use("/api", shopsRouter);
app.use("/api", employeesRouter);

app.listen(5000, () => console.log(`Example app listening on port 5000!`));
