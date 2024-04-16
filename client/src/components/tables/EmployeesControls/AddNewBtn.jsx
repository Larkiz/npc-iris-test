export const AddNewBtn = ({ addToast, handleSubmit, refreshTable }) => {
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
        addToast(`Успешно добавлено под Id${data.insertedId}`, {
          appearance: "success",
        });

        refreshTable();
      })
      .catch((error) => {
        addToast(error, { appearance: "error" });
      });
  }

  return (
    <button
      className="btn-grid-control"
      onClick={handleSubmit((value) => addNew(value))}
    >
      Добавить
    </button>
  );
};
