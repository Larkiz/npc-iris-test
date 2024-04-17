import { saveEdit } from "../functions/saveEdit";

export const EditBtn = ({
  addToast,
  getSelectedRow,
  stopEdit,
  edit,
  startEdit,
}) => {
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
            stopEdit();
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
