export const formatDate = (date: string) => {
  if (date.indexOf("-") < 0) {
    let temp = date.split("/");
    if (temp.length === 3) {
      if (temp[0].length === 1) {
        temp[0] = "0" + temp[0];
      }
      if (temp[1].length === 1) {
        temp[1] = "0" + temp[1];
      }
      return temp.reverse().join("-");
    }
  }
  return date;
};
