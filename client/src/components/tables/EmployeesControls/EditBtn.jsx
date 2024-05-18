import { forwardRef } from "react";
import { startEdit, stopEdit } from "../functions/tableControls.js";

export const EditBtn = forwardRef(({ gridRef, setEdit, edit }) => {
  if (!edit) {
    return (
      <button
        className="btn-grid-control"
        onClick={() => startEdit({ gridRef, setEdit })}
      >
        Изменить
      </button>
    );
  } else {
    return (
      <>
        <button
          className="btn-grid-control"
          onClick={() => {
            stopEdit(gridRef, setEdit);
          }}
        >
          Сохранить
        </button>
        <button
          className="btn-grid-control"
          onClick={() => {
            stopEdit(gridRef, setEdit, true);
          }}
        >
          Отменить
        </button>
      </>
    );
  }
});
