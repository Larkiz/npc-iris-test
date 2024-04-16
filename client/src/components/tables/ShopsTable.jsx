import { AgGridReact } from "ag-grid-react";
import { useFetchTable } from "hooks/useFetchTable";
import { useMemo, useRef, useState } from "react";

export const ShopsTable = () => {
  const [colDef, setColDef] = useState([
    { field: "id" },
    { field: "address", flex: 2 },
    { field: "budget" },
    { field: "employees_number" },
    { field: "opening_date" },
  ]);

  const [tableData, fetchMoreShops] = useFetchTable("shops");
  const gridRef = useRef();

  const onBtNext = () => {
    gridRef.current.api.paginationGoToNextPage();
    fetchMoreShops(tableData);
  };

  const onBtPrevious = () => {
    gridRef.current.api.paginationGoToPreviousPage();
  };

  const defaultColDef = useMemo(() => {
    return {
      filter: "agTextColumnFilter",
      floatingFilter: true,
    };
  }, []);

  return (
    <>
      <div>
        <button className="btn-grid-control" onClick={onBtPrevious}>
          To Previous
        </button>
        <button className="btn-grid-control" onClick={onBtNext}>
          To Next
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
