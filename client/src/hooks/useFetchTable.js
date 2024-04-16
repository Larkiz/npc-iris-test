import { useEffect, useState } from "react";

export const useFetchTable = (tableName) => {
  const [tableData, setTableData] = useState({ offset: 0, data: [] });

  useEffect(() => {
    fetchMore();
  }, []);

  const fetchMore = () => {
    fetch(`http://localhost:5000/api/${tableName}?offset=${tableData.offset}`)
      .then((res) => res.json())
      .then((resData) => {
        if (resData.message) throw resData.message;
        setTableData((prev) => {
          return {
            offset: prev.offset + 30,
            data: [...prev.data, ...resData],
          };
        });
      })
      .catch(console.log);
  };

  return [tableData.data, fetchMore];
};
