export function startEdit({ gridRef, editStarted }) {
  const selectedRows = gridRef.current.api.getSelectedNodes()[0];
  if (selectedRows) {
    editStarted();
    gridRef.current.api.startEditingCell({
      rowIndex: selectedRows.rowIndex,
      colKey: "id",
    });
  }
}

export function getSelectedRow(gridRef) {
  return gridRef.current.api.getSelectedRows()[0];
}

export function stopEdit(gridRef, setEdit, type = false) {
  setEdit(false);

  gridRef.current.api.stopEditing(type);
}

export function deleteRow({ refreshTable, addToast, gridRef }) {
  const selectedRow = getSelectedRow(gridRef);
  if (selectedRow) {
    fetch(`http://localhost:5000/api/employees/${selectedRow.id}`, {
      method: "DELETE",
    })
      .then((res) => res.json())
      .then((data) => {
        refreshTable();
        addToast("Успешно удалено", { appearance: "success" });
      })
      .catch((error) => {
        addToast(error, { appearance: "error" });
      });
  }
}

export function addNew({ value, addToast, refreshTable }) {
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
      addToast(`Успешно добавлено под Id ${data.insertedId}`, {
        appearance: "success",
      });

      refreshTable();
    })
    .catch((error) => {
      addToast(error, { appearance: "error" });
    });
}

export function saveEdit(addToast, selectedRow, stopEdit) {
  const selectedRows =
    typeof selectedRow === "function" ? selectedRow() : selectedRow;

  fetch(`http://localhost:5000/api/employees/${selectedRows.id}`, {
    method: "PUT",
    headers: {
      "Content-type": "application/json",
    },
    body: JSON.stringify(selectedRows),
  })
    .then((res) => res.json())
    .then((data) => {
      if (data.message) throw data.message;

      addToast("Успешно обновлено", { appearance: "success" });
      stopEdit();
    })
    .catch((error) => {
      addToast(error, { appearance: "error" });
    });
}
