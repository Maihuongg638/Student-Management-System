import { Box, BoxProps, Img, Link, Text } from "@chakra-ui/react";
import * as React from "react";
import { DepartmentInfo } from "../../constants/types";
import { CellSwapper } from "../CellSwapper";

interface Props {
  data?: DepartmentInfo;
}

function DepartmentCell({ data, ...boxProps }: Props & BoxProps) {
  return (
    <CellSwapper
      m="10px"
      p="20px"
      display="flex"
      flexDirection="column"
      justifyContent="center"
      alignItems="center"
      w="400px"
      h="400px"
      _hover={{
        boxShadow: "rgba(0, 0, 0, 0.35) 0px 5px 15px;",
        cursor: "pointer",
      }}
      {...boxProps}>
      <Img src="img/department.png" w="100px" h="100px" />
      <Text fontWeight="bold" fontSize="26px">
        {data?.Ten_Khoa}
      </Text>
      <Box textAlign="left">
        <Text fontWeight="medium" fontSize="20px">
          Số chuyên ngành: {data?.So_Nganh}
        </Text>
        <Text fontWeight="medium" fontSize="20px">
          Phòng: {data?.So_Phong}
        </Text>
        <Text fontWeight="medium" fontSize="20px">
          Link fanpage: <Link>{data?.Link_Page}</Link>
        </Text>
        <Text fontWeight="medium" fontSize="20px">
          Số điện thoại: {data?.SDT_Khoa}
        </Text>
      </Box>
    </CellSwapper>
  );
}

export { DepartmentCell };
