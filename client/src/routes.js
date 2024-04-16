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

import { MainPage } from "components/MainPage";
import TableList from "views/Tables.js";

var routes = [
  {
    path: "/main",
    name: "Главная",
    icon: "nc-icon nc-tile-56",
    component: <MainPage />,
  },
  {
    path: "/tables",
    name: "Таблицы",
    icon: "nc-icon nc-tile-56",
    component: <TableList />,
  },
];
export default routes;
