import { AgGridReact } from "ag-grid-react";
import { useFetchTable } from "hooks/useFetchTable";
import { useRef } from "react";
const defaultColDef = {
  filter: "agTextColumnFilter",
  floatingFilter: true,
};

const colDef = [
  { field: "id" },
  { field: "address", flex: 2 },
  { field: "budget" },
  { field: "employees_number" },
  { field: "opening_date" },
];
export const ShopsTable = () => {
  const [tableData, fetchMoreShops] = useFetchTable("shops");
  const gridRef = useRef();

  const onBtNext = () => {
    gridRef.current.api.paginationGoToNextPage();
    fetchMoreShops(tableData);
  };

  const onBtPrevious = () => {
    gridRef.current.api.paginationGoToPreviousPage();
  };

  return (
    <>
      <div>
        <button className="btn-grid-control" onClick={onBtPrevious}>
          Назад
        </button>
        <button className="btn-grid-control" onClick={onBtNext}>
          Далее
        </button>
      </div>
      <AgGridReact
        ref={gridRef}
        defaultColDef={defaultColDef}
        suppressPaginationPanel
        pagination
        paginationPageSize={20}
        paginationPageSizeSelector={false}
        rowData={tableData}
        columnDefs={colDef}
      />
    </>
  );
};
