import { addNew } from "../functions/tableControls";

export const AddNewBtn = (props) => {
  return (
    <button
      className="btn-grid-control"
      onClick={props.handleSubmit((value) => addNew({ value, ...props }))}
    >
      Добавить
    </button>
  );
};
