/*!

=========================================================
* Paper Dashboard React - v1.3.2
=========================================================

* Product Page: https://www.creative-tim.com/product/paper-dashboard-react
* Copyright 2023 Creative Tim (https://www.creative-tim.com)

* Licensed under MIT (https://github.com/creativetimofficial/paper-dashboard-react/blob/main/LICENSE.md)

* Coded by Creative Tim

=========================================================

* The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

*/
import React from "react";

import "ag-grid-community/styles/ag-grid.css"; // Mandatory CSS required by the grid
import "ag-grid-community/styles/ag-theme-quartz.css"; // Optional Theme applied to the grid

import { ShopsTable } from "components/tables/ShopsTable";
import { EmployeesTable } from "components/tables/EmployeesTable";
import { ToastProvider } from "react-toast-notifications";

function Tables() {
  return (
    <ToastProvider>
      <div className="content ">
        <div className="tables">
          <div
            className="ag-theme-quartz" // applying the grid theme
            style={{ height: 500 }} // the grid will fill the size of the parent container
          >
            <h1>Таблица Shops</h1>
            <ShopsTable />
          </div>

          <div
            className="ag-theme-quartz" // applying the grid theme
            style={{ height: 500 }} // the grid will fill the size of the parent container
          >
            <h1>Таблица Employees</h1>

            <EmployeesTable />
          </div>
        </div>
      </div>
    </ToastProvider>
  );
}

export default Tables;
