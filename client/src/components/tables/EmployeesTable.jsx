import { AgGridReact } from "ag-grid-react";
import { useCallback, useRef, useState } from "react";
import { getDataForInfinite } from "./functions/getInfiniteData";
import { useForm } from "react-hook-form";
import { useToasts } from "react-toast-notifications";
import { AddNewBtn } from "./EmployeesControls/AddNewBtn.jsx";
import { DeleteRowBtn } from "./EmployeesControls/DeleteRowBtn";
import { EditBtn } from "./EmployeesControls/EditBtn";
import { saveEdit } from "./functions/tableControls";

const defaultColDef = {
  filter: "agTextColumnFilter",
  floatingFilter: true,
  editable: true,
};
const colDef = [
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
];

export const EmployeesTable = () => {
  const { addToast } = useToasts();
  const [edit, setEdit] = useState(false);

  const gridRef = useRef();

  const { register, handleSubmit } = useForm();

  const onGridReady = useCallback(() => {
    getDataForInfinite(gridRef);
  }, []);

  function refreshTable() {
    getDataForInfinite(gridRef);
  }

  const editingRef = useRef(null);

  function stopEdit() {
    setEdit(false);
  }

  return (
    <>
      <div>
        <EditBtn
          addToast={addToast}
          gridRef={gridRef}
          editStarted={() => setEdit(true)}
          edit={edit}
        />
        <DeleteRowBtn
          gridRef={gridRef}
          addToast={addToast}
          refreshTable={refreshTable}
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
        onRowEditingStarted={(e) => {
          editingRef.current = e.data;
        }}
        onRowEditingStopped={() => {
          if (editingRef.current?.id) {
            saveEdit(addToast, editingRef.current, stopEdit);
          }
        }}
      />
    </>
  );
};
