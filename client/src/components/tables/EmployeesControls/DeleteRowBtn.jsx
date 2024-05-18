import { deleteRow } from "../functions/tableControls";

export const DeleteRowBtn = (props) => {
  return (
    <button className="btn-grid-control" onClick={() => deleteRow(props)}>
      Удалить
    </button>
  );
};
