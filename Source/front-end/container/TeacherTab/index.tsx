/* eslint-disable react/no-children-prop */
import {
  Box,
  Button,
  Flex,
  HStack,
  Table,
  Tbody,
  Td,
  Th,
  Thead,
  Tr,
  useDisclosure,
} from "@chakra-ui/react";
import _ from "lodash";
import * as React from "react";
import { EditModalTeacher } from "../../components/EditModalTeacher";
import { MakeSure } from "../../components/MakeSure";
import { Search } from "../../components/Search";
import { TeacherData } from "../../constants/types";
import { getTeacherAndDepartments } from "../../services/api";

const Row = ({
  data,
  onSelect,
  onOpen,
}: {
  data: TeacherData;
  onSelect: () => void;
  onOpen: () => void;
}) => {
  return (
    <>
      <Tr>
        <Td>{data.Ma_GV}</Td>
        <Td>{data.Ten_GV}</Td>
        <Td>{data.Ten_Khoa}</Td>
        <Td>
          <HStack spacing="20px">
            <Button
              _focus={{ outline: "none" }}
              colorScheme="green"
              onClick={() => {
                onSelect();
                onOpen();
              }}>
              Chi tiết
            </Button>
          </HStack>
        </Td>
      </Tr>
    </>
  );
};

function TeacherTab() {
  const [aleart, setAleart] = React.useState(false);
  const [data, setData] = React.useState<TeacherData[] | null>(null);
  const [textSearch, setTextSearch] = React.useState("");
  const [type, setType] = React.useState("1");
  const [select, setSelect] = React.useState("");
  const { isOpen, onOpen, onClose } = useDisclosure();

  const filterData = (text: string, type: string) => {
    if (type == "1") {
      //theo ma giao vien
      return data?.filter((ele) => ele.Ma_GV.search(text) >= 0);
    }
    if (type == "2") {
      //theo ten
      return data?.filter((ele) => ele.Ten_GV.search(text) >= 0);
    }
    if (type == "3") {
      //theo Khoa
      return data?.filter((ele) => ele.Ten_Khoa.search(text) >= 0);
    }
  };

  const onDeleteItem = (id: string) => {
    const temp = _.cloneDeep(data?.filter((ele) => ele.Ma_GV != id));
    temp && setData(temp);
  };

  React.useEffect(() => {
    const temp = getTeacherAndDepartments();
    temp
      .then((res) => {
        return res.json();
      })
      .then((result) => {
        let listTemp = result as TeacherData[];
        setData((d) => (d = listTemp));
      });
  }, []);

  const handleUpdateData = (item: TeacherData) => {
    const idx = data?.findIndex((ele) => ele.Ma_GV === item.Ma_GV);
    if (idx != undefined && idx >= 0) {
      if (data != null) {
        const temp = _.cloneDeep(data);
        temp[idx] = { ...item };
        setData(temp);
      }
    }
  };

  const handelOnCloseAlert = () => {
    setAleart(false);
  };

  const handleChangeText = (value: string) => {
    setTextSearch(value);
  };

  const handleChangeType = (value: string) => {
    setType(value);
  };

  const changeSelect = (id: string) => {
    setSelect(id);
  };

  return (
    <Flex justifyContent="space-between">
      <Box w="100%" border="1px solid #89898b" p="20px" borderRadius="10px">
        <Search onGetText={handleChangeText} onChangeType={handleChangeType} />
        <Table>
          <Thead>
            <Tr>
              <Th>Mã số</Th>
              <Th>Họ và tên</Th>
              <Th>Khoa</Th>
              <Th>Thao tác</Th>
            </Tr>
          </Thead>
          <Tbody>
            {filterData(textSearch, type)?.map((item, index) => {
              return (
                <Row
                  key={index}
                  data={item}
                  onSelect={() => {
                    changeSelect(item.Ma_GV);
                  }}
                  onOpen={onOpen}
                />
              );
            })}
          </Tbody>
        </Table>
        <MakeSure
          isOpen={aleart}
          onClose={handelOnCloseAlert}
          select={select}
          onDelete={onDeleteItem}
          type="teacher"
        />
        <EditModalTeacher
          data={
            data?.findIndex((ele) => ele.Ma_GV === select) != -1
              ? data?.at(data?.findIndex((ele) => ele.Ma_GV == select))
              : undefined
          }
          isOpen={isOpen}
          onClose={onClose}
          onUpdate={handleUpdateData}
        />
      </Box>
    </Flex>
  );
}

export { TeacherTab };
