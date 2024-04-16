export const EditBtn = ({
  addToast,
  getSelectedRow,
  stopEdit,
  edit,
  startEdit,
}) => {
  function saveEdit(action) {
    const selectedRows = getSelectedRow();
    stopEdit();
    console.log(selectedRows.id);
    if (action !== "cancel") {
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
        })
        .catch((error) => {
          addToast(error, { appearance: "error" });
        });
    }
  }

  if (!edit) {
    return (
      <button className="btn-grid-control" onClick={() => startEdit()}>
        Изменить
      </button>
    );
  } else {
    return (
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
            stopEdit(true);
          }}
        >
          Отменить
        </button>
      </>
    );
  }
};
