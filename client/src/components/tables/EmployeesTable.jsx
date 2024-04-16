import { AgGridReact } from "ag-grid-react";
import { useCallback, useRef, useState } from "react";
import { getDataForInfinite } from "./functions/getInfiniteData";
import { useForm } from "react-hook-form";

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

  const [editData, setEdit] = useState({ status: false, data: {} });

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

  function deleteRow() {
    const selectedRows = gridRef.current.api.getSelectedRows()[0];
    if (selectedRows) {
      fetch(`http://localhost:5000/api/employees/${selectedRows.id}`, {
        method: "DELETE",
      })
        .then((res) => res.json())
        .then((data) => {
          getDataForInfinite(gridRef);
          console.log(data);
        })
        .catch(alert);
    }
  }
  function startEdit(e) {
    const selectedRows = gridRef.current.api.getSelectedNodes()[0];
    if (selectedRows) {
      setEdit({ status: true, data: selectedRows.data });
      gridRef.current.api.startEditingCell({
        rowIndex: selectedRows.rowIndex,
        colKey: "id",
      });
    }
  }
  function saveEdit(action) {
    const selectedRows = gridRef.current.api.getSelectedNodes()[0];
    setEdit({ status: false, data: {} });
    gridRef.current.api.stopEditing();
    if (action !== "cancel") {
      fetch(`http://localhost:5000/api/employees/${selectedRows.data.id}`, {
        method: "PUT",
        headers: {
          "Content-type": "application/json",
        },
        body: JSON.stringify(selectedRows.data),
      })
        .then((res) => res.json())
        .then((data) => {
          if (data.message) throw data.message;
          alert(data.updatedId + " Обновлен");
        })
        .catch(alert);
    }
    setTimeout(() => getDataForInfinite(gridRef));
  }

  function addNew(value) {
    fetch(`http://localhost:5000/api/employees`, {
      method: "post",
      headers: {
        "Content-type": "application/json",
      },
      body: JSON.stringify(value),
    })
      .then((res) => res.json())
      .then((data) => {
        if (data.message) throw data.message;
        alert("Добавлен под id " + data.insertedId);

        getDataForInfinite(gridRef);
      })
      .catch(alert);
  }

  return (
    <>
      <div>
        {!editData.status ? (
          <button className="btn-grid-control" onClick={startEdit}>
            Изменить
          </button>
        ) : (
          <>
            <button
              className="btn-grid-control"
              onClick={() => {
                saveEdit();
              }}
            >
              Сохранить
            </button>
            <button
              className="btn-grid-control"
              onClick={() => {
                saveEdit("cancel");
              }}
            >
              Отменить
            </button>
          </>
        )}

        <button className="btn-grid-control" onClick={deleteRow}>
          Удалить
        </button>
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
          <button
            className="btn-grid-control"
            onClick={handleSubmit((value) => addNew(value))}
          >
            Добавить
          </button>
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
        onRowValueChanging={console.log}
        suppressRowClickSelection={!editData.action ? false : true}
        stopEditingWhenCellsLoseFocus
        onRowEditingStopped={() => {
          saveEdit("cancel");
        }}
        suppressClickEdit
      />
    </>
  );
};
