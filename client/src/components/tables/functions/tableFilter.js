export const filterData = (filterModel, data) => {
  const filterPresent = filterModel && Object.keys(filterModel).length > 0;

  if (!filterPresent) {
    return data;
  }
  const resultOfFilter = [];
  for (let i = 0; i < data.length; i++) {
    const item = data[i];
    if (filterModel.shop_id) {
      const shopId = item.shop_id;
      const allowedShopId = parseInt(filterModel.shop_id.filter);

      if (filterModel.shop_id.type === "equals") {
        if (shopId !== allowedShopId) {
          continue;
        }
      } else if (filterModel.shop_id.type === "lessThan") {
        if (shopId >= allowedShopId) {
          continue;
        }
      } else {
        if (shopId <= allowedShopId) {
          continue;
        }
      }
    }
    if (filterModel.salary) {
      const salary = item.salary;
      const allowedSalary = parseInt(filterModel.salary.filter);

      if (filterModel.salary.type === "equals") {
        if (salary !== allowedSalary) {
          continue;
        }
      } else if (filterModel.salary.type === "lessThan") {
        if (salary >= allowedSalary) {
          continue;
        }
      } else {
        if (salary <= allowedSalary) {
          continue;
        }
      }
    }
    if (filterModel.name) {
      const allowedName = new RegExp(filterModel.name.filter.toLowerCase());
      const name = item.name.toLowerCase();

      if (!allowedName.test(name)) {
        // year didn't match, so skip this record
        continue;
      }
    }
    if (filterModel.id) {
      const allowedId = String(filterModel.id.filter);
      const id = String(item.id);

      if (!id.startsWith(allowedId)) {
        // year didn't match, so skip this record
        continue;
      }
    }

    resultOfFilter.push(item);
  }
  return resultOfFilter;
};
