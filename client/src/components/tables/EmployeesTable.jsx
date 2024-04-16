import { AgGridReact } from "ag-grid-react";
import { useCallback, useRef, useState } from "react";
import { getDataForInfinite } from "./functions/getInfiniteData";
import { useForm } from "react-hook-form";
import { useToasts } from "react-toast-notifications";
import { AddNewBtn, addNew } from "./EmployeesControls/AddNewBtn.jsx";
import { DeleteRowBtn } from "./EmployeesControls/DeleteRowBtn";
import { EditBtn } from "./EmployeesControls/EditBtn";

export const EmployeesTable = () => {
  const [colDef, setColDef] = useState([
    {
      field: "id",
      maxWidth: 100,
      editable: false,
      filter: "agNumberColumnFilter",
    },
    { field: "name", flex: 2 },
    {
      field: "salary",

      filter: "agNumberColumnFilter",
    },
    {
      field: "employment_date",
      filter: "agSetColumnFilter",
      editable: false,
    },
    {
      field: "shop_id",
      filter: "agNumberColumnFilter",
    },
  ]);
  const { addToast } = useToasts();
  const [edit, setEdit] = useState(false);

  const gridRef = useRef();

  const { register, handleSubmit } = useForm();

  const onGridReady = useCallback(() => {
    getDataForInfinite(gridRef);
  }, []);

  const defaultColDef = {
    filter: "agTextColumnFilter",
    floatingFilter: true,
    editable: true,
  };

  function startEdit() {
    const selectedRows = gridRef.current.api.getSelectedNodes()[0];
    if (selectedRows) {
      setEdit(true);
      gridRef.current.api.startEditingCell({
        rowIndex: selectedRows.rowIndex,
        colKey: "id",
      });
    }
  }

  function stopEdit(refresh) {
    setEdit(false);
    gridRef.current.api.stopEditing();
    if (refresh) {
      refreshTable();
    }
  }

  function refreshTable() {
    getDataForInfinite(gridRef);
  }

  function getSelectedRow() {
    return gridRef.current.api.getSelectedRows()[0];
  }

  return (
    <>
      <div>
        <EditBtn
          addToast={addToast}
          getSelectedRow={getSelectedRow}
          startEdit={startEdit}
          stopEdit={stopEdit}
          edit={edit}
        />
        <DeleteRowBtn
          addToast={addToast}
          refreshTable={refreshTable}
          getSelectedRow={getSelectedRow}
        />

        <div className="grid-add-new">
          <input {...register("name")} placeholder="Имя" type="text" />
          <input {...register("salary")} placeholder="Зарплата" type="text" />
          <input
            {...register("employment_date")}
            placeholder="Дата устройства dd/mm/year"
            type="date"
          />
          <input
            {...register("shop_id")}
            placeholder="Id магазина"
            type="text"
          />
          <AddNewBtn
            addToast={addToast}
            refreshTable={refreshTable}
            handleSubmit={handleSubmit}
          />
        </div>
      </div>
      <AgGridReact
        ref={gridRef}
        columnDefs={colDef}
        defaultColDef={defaultColDef}
        rowBuffer={0}
        rowSelection={"single"}
        rowModelType={"infinite"}
        cacheBlockSize={100}
        cacheOverflowSize={2}
        editType={"fullRow"}
        maxConcurrentDatasourceRequests={1}
        maxBlocksInCache={10}
        onGridReady={onGridReady}
        // stopEditingWhenCellsLoseFocus
        onRowEditingStopped={() => {
          stopEdit(true);
        }}
        suppressClickEdit
      />
    </>
  );
};
