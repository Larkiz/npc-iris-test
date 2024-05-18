export function dataValidator(columns, insertData) {
  const errors = {};

  for (let i = 0; i < columns.length; i++) {
    const column = columns[i];
    if (!insertData.hasOwnProperty(column)) {
      errors[column] = `Missing ${column}`;
    }
  }
  if (Object.keys(errors).length === 0) {
    return true;
  }

  return errors;
}
