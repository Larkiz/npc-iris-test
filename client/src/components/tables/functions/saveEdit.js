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
