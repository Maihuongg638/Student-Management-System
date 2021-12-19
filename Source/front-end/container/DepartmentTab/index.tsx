import { Flex } from "@chakra-ui/react";
import * as React from "react";
import { DepartmentCell } from "../../components/DepartmentCell";
import { DepartmentInfo } from "../../constants/types";
import { getDeparmentInfo } from "../../services/api";

export function DepartmentTab() {
  const [data, setData] = React.useState<DepartmentInfo[]>();

  React.useEffect(() => {
    const fetch = getDeparmentInfo();

    fetch
      .then((res) => res.json())
      .then((data) => {
        const temp = data as DepartmentInfo[];
        setData((d) => (d = temp));
      });
  }, [getDeparmentInfo]);

  return (
    <Flex justifyContent="space-evenly" flexWrap="wrap">
      {data?.map((ele, index) => {
        return <DepartmentCell key={index} data={ele} />;
      })}
    </Flex>
  );
}
