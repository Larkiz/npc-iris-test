import { filterData } from "./tableFilter";

export function getDataForInfinite(gridRef) {
  fetch("http://localhost:5000/api/employees")
    .then((resp) => resp.json())
    .then((data) => {
      const dataSource = {
        rowCount: undefined,

        getRows: (params) => {
          const dataAfterSortingAndFiltering = filterData(
            params.filterModel,
            data
          );
          const rowsThisPage = dataAfterSortingAndFiltering.slice(
            params.startRow,
            params.endRow
          );

          let lastRow = -1;
          if (dataAfterSortingAndFiltering.length <= params.endRow) {
            lastRow = dataAfterSortingAndFiltering.length;
          }

          params.successCallback(rowsThisPage, lastRow);
        },
      };
      gridRef.current.api.setGridOption("datasource", dataSource);
    })
    .catch(console.log);
}
