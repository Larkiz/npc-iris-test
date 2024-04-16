export const DeleteRowBtn = ({ addToast, refreshTable, getSelectedRow }) => {
  function deleteRow() {
    const selectedRow = getSelectedRow();
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

  return (
    <button className="btn-grid-control" onClick={deleteRow}>
      Удалить
    </button>
  );
};
