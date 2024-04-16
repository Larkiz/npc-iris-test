import { DefaultModel } from "./DefaultModel.js";

export class EmployeesModel extends DefaultModel {
  constructor() {
    super();
    super.createTable("employees", [
      "name",
      "salary",
      "employment_date",
      "shop_id",
    ]);
  }
}
