import {
  Box,
  Button,
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
import { AddModalStudent } from "../../components/AddModalStudent";
import { EditModalStudent } from "../../components/EditModalStudent";
import { MakeSure } from "../../components/MakeSure";
import { Search } from "../../components/Search";
import { StudentData } from "../../constants/types";
import { getStudentAndOther } from "../../services/api";

const Row = ({
  data,
  onOpen,
  onDelete,
  onSelect,
}: {
  data: StudentData;
  onOpen: () => void;
  onDelete: () => void;
  onSelect: () => void;
}) => {
  return (
    <>
      <Tr>
        <Td>{data.Ma_SV}</Td>
        <Td>{[data.Ho, data.Ten_Dem, data.Ten].join(" ")}</Td>
        <Td>{data.Ten_LH}</Td>
        <Td>{data.Ten_Nganh}</Td>
        <Td>{data.Ten_Khoa}</Td>
        <Td>
          <HStack spacing="10px">
            <Button
              _focus={{ outline: "none" }}
              colorScheme="green"
              onClick={() => {
                onSelect();
                onOpen();
              }}>
              Chi tiết
            </Button>
            <Button
              _focus={{ outline: "none" }}
              colorScheme="red"
              onClick={() => {
                onDelete();
                onSelect();
              }}>
              Xóa
            </Button>
          </HStack>
        </Td>
      </Tr>
    </>
  );
};

export function StudentTab() {
  const { isOpen, onOpen, onClose } = useDisclosure();
  const [aleart, setAleart] = React.useState(false);
  const [data, setData] = React.useState<StudentData[] | null>(null);
  const [textSearch, setTextSearch] = React.useState("");
  const [type, setType] = React.useState("1");
  const [select, setSelect] = React.useState("");

  const generateID = () => {
    let temp = data && Number(data[0].Ma_SV.substring(2));
    data?.forEach((ele, index) => {
      if (temp != null) {
        if (Number(ele.Ma_SV.substring(2)) > temp) {
          temp = Number(ele.Ma_SV.substring(2));
        }
      }
    });
    if (temp != null) return "SV" + (temp + 1);
    return "SV!!!";
  };

  const filterData = (text: string, type: string) => {
    if (type == "1") {
      //theo ma giao vien
      return data?.filter((ele) => ele.Ma_SV.search(text) >= 0);
    }
    if (type == "2") {
      //theo ten
      return data?.filter(
        (ele) => [ele.Ho, ele.Ten_Dem, ele.Ten].join(" ").search(text) >= 0,
      );
    }
    if (type == "3") {
      //theo Khoa
      return data?.filter((ele) => ele.Ten_Khoa.search(text) >= 0);
    }
  };

  const onDeleteItem = (id: string) => {
    const temp = _.cloneDeep(data?.filter((ele) => ele.Ma_SV != id));
    temp && setData(temp);
  };

  const handleChangeText = (value: string) => {
    setTextSearch(value);
  };

  const handleChangeType = (value: string) => {
    setType(value);
  };

  const handelOnCloseAlert = () => {
    setAleart(false);
  };
  const handelOnOpenAlert = () => {
    setAleart(true);
  };

  const changeSelect = (id: string) => {
    setSelect(id);
  };

  const handleUpdateData = (item: StudentData) => {
    const idx = data?.findIndex((ele) => ele.Ma_SV === item.Ma_SV);
    if (idx != undefined && idx >= 0) {
      if (data != null) {
        const temp = _.cloneDeep(data);
        temp[idx] = { ...item };
        setData(temp);
      }
    }
  };

  const handleAddItem = (item: StudentData) => {
    const temp = _.cloneDeep(data);
    temp?.push(item);
    setData(temp);
  };

  React.useEffect(() => {
    const temp = getStudentAndOther();
    temp
      .then((res) => {
        return res.json();
      })
      .then((result) => {
        let listTemp = result as StudentData[];
        setData((d) => (d = listTemp));
      });
  }, [getStudentAndOther]);

  return (
    <Box w="100%" border="1px solid #89898b" p="20px" borderRadius="10px">
      <Search onGetText={handleChangeText} onChangeType={handleChangeType} />
      <AddModalStudent IDAuto={generateID()} onAdd={handleAddItem} />
      <Table>
        <Thead>
          <Tr>
            <Th>Mã số</Th>
            <Th>Họ và tên</Th>
            <Th>Lớp</Th>
            <Th>Chuyên ngành</Th>
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
                onOpen={onOpen}
                onDelete={handelOnOpenAlert}
                onSelect={() => {
                  changeSelect(item.Ma_SV);
                }}
              />
            );
          })}
        </Tbody>
      </Table>
      <EditModalStudent
        data={
          data?.findIndex((ele) => ele.Ma_SV === select) != -1
            ? data?.at(data?.findIndex((ele) => ele.Ma_SV == select))
            : undefined
        }
        isOpen={isOpen}
        onClose={onClose}
        onUpdate={handleUpdateData}
      />
      <MakeSure
        isOpen={aleart}
        onClose={handelOnCloseAlert}
        select={select}
        onDelete={onDeleteItem}
        type="student"
      />
    </Box>
  );
}
