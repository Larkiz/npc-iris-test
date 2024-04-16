import { DefaultModel } from "./DefaultModel.js";

export class ShopsModel extends DefaultModel {
  constructor() {
    super();
    super.createTable("shops", [
      "address",
      "budget",
      "employees_number",
      "opening_date",
    ]);
  }
}
