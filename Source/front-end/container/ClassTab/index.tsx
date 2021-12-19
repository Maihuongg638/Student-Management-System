import {
  Box,
  Button,
  HStack,
  Modal,
  ModalBody,
  ModalCloseButton,
  ModalContent,
  ModalFooter,
  ModalHeader,
  ModalOverlay,
  Select,
  Table,
  Tbody,
  Td,
  Text,
  Th,
  Thead,
  Tr,
  useDisclosure,
} from "@chakra-ui/react";
import * as React from "react";
import { AddMarkModal } from "../../components/AddMarkModal";
import { Class, MarkSubject, Student } from "../../constants/types";
import {
  getClass,
  getMarkOfStudent,
  getStudentInClass,
} from "../../services/api";

const Item = ({
  data,
  onOpen,
  onChangeSelect,
  onOpenAdd,
}: {
  data: Student;
  onOpen: () => void;
  onOpenAdd: () => void;
  onChangeSelect: (value: string) => void;
}) => {
  return (
    <Tr>
      <Td>{data.Ma_SV}</Td>
      <Td>{[data.Ho, data.Ten_Dem, data.Ten].join(" ")}</Td>
      <Td>{data.Gioi_Tinh}</Td>
      <Td>{data.Email}</Td>
      <Td>{data.SDT}</Td>
      <Td>
        <HStack spacing="10px">
          <Button
            colorScheme="green"
            onClick={() => {
              onOpen();
              onChangeSelect(data.Ma_SV);
            }}>
            Xem điểm
          </Button>
          <Button
            colorScheme="blue"
            onClick={() => {
              onOpenAdd();
              onChangeSelect(data.Ma_SV);
            }}>
            Thêm điểm
          </Button>
        </HStack>
      </Td>
    </Tr>
  );
};

const ItemSubject = ({ data }: { data: MarkSubject }) => {
  const calcFinal = () => {
    return (
      Math.floor(((data.Diem_QT + data.Diem_GK + data.Diem_CK * 2) / 4) * 10) /
      10
    );
  };

  return (
    <Tr>
      <Td>{data.Ma_MH}</Td>
      <Td>{data.Ten_MH}</Td>
      <Td>{data.Diem_QT}</Td>
      <Td>{data.Diem_GK}</Td>
      <Td>{data.Diem_CK}</Td>
      <Td>{calcFinal()}</Td>
    </Tr>
  );
};

export function ClassTab() {
  const [select, setSelect] = React.useState("");
  const [option, setOption] = React.useState<Class[]>();
  const [listStudent, setListStudent] = React.useState<Student[]>();
  const { isOpen, onOpen, onClose } = useDisclosure();
  const [markTable, setMarkTable] = React.useState<MarkSubject[]>();
  const [selectStudent, setSelectStudent] = React.useState("");

  const {
    isOpen: isOpenAdd,
    onOpen: onOpenAdd,
    onClose: onCloseAdd,
  } = useDisclosure();

  const getName = () => {
    const temp = listStudent?.find((ele) => ele.Ma_SV === selectStudent);
    return [temp?.Ho, temp?.Ten_Dem, temp?.Ten].join(" ");
  };

  const onChangeMarkTable = (item: MarkSubject) => {
    let temp = markTable && [...markTable];
    if (temp != undefined) {
      temp.push(item);
      setMarkTable(temp);
    }
  };

  React.useEffect(() => {
    const fetch = getClass();

    fetch
      .then((res) => res.json())
      .then((data) => {
        const temp = data as Class[];
        setOption((d) => (d = temp));
      });
  }, []);

  React.useEffect(() => {
    const fetch = getStudentInClass(select);

    fetch
      .then((res) => res.json())
      .then((data) => {
        const temp = data as Student[];
        setListStudent((d) => (d = temp));
      });
  }, [select]);

  React.useEffect(() => {
    const fetch = getMarkOfStudent(selectStudent);

    fetch
      .then((res) => res.json())
      .then((data) => {
        const temp = data as MarkSubject[];
        setMarkTable((d) => (d = temp));
      });
  }, [selectStudent]);

  const onChangeSelect = (value: string) => {
    setSelect(value);
  };
  const onChangeSelectStudent = (value: string) => {
    setSelectStudent(value);
  };

  return (
    <Box>
      <HStack spacing="20px" my="20px">
        <Text>Lớp: </Text>
        <Select
          defaultValue="none"
          w="300px"
          onChange={(event) => {
            onChangeSelect(event.target.value);
          }}>
          <option value="none">Chọn lớp</option>
          {option?.map((ele, index) => {
            return (
              <option key={index} value={ele.Ma_LH}>
                {ele.Ten_LH}
              </option>
            );
          })}
        </Select>
      </HStack>
      <Box>
        <Table variant="simple">
          <Thead>
            <Tr>
              <Th>Mã sinh viên</Th>
              <Th>Họ và Tên</Th>
              <Th>Giới tính</Th>
              <Th>Email</Th>
              <Th>Số điện thoại</Th>
              <Th>Thao tác</Th>
            </Tr>
          </Thead>
          <Tbody>
            {listStudent?.map((ele, index) => {
              return (
                <Item
                  key={index}
                  data={ele}
                  onOpen={onOpen}
                  onChangeSelect={onChangeSelectStudent}
                  onOpenAdd={onOpenAdd}
                />
              );
            })}
          </Tbody>
        </Table>
      </Box>
      <Modal isOpen={isOpen} onClose={onClose} size="full">
        <ModalOverlay />
        <ModalContent>
          <ModalHeader>
            <Text>Điểm các môn học</Text>
            <Text>Sinh viên: {getName()}</Text>
            <Text>Điểm tổng kết = (điểm QT + điểm GK + điểm CK*2)/4</Text>
          </ModalHeader>
          <ModalCloseButton />
          <ModalBody>
            <Table variant="simple">
              <Thead>
                <Tr>
                  <Th>Mã môn học</Th>
                  <Th>Tên môn học</Th>
                  <Th>Điểm quá trình</Th>
                  <Th>Điểm giữa kỳ</Th>
                  <Th>Điểm cuối kỳ</Th>
                  <Th>Tổng kết</Th>
                </Tr>
              </Thead>
              <Tbody>
                {markTable?.map((ele, index) => {
                  return <ItemSubject key={index} data={ele} />;
                })}
              </Tbody>
            </Table>
          </ModalBody>

          <ModalFooter>
            <Button
              colorScheme="blue"
              mr={3}
              onClick={onClose}
              onChangeSelect={onChangeSelect}>
              Quay lại
            </Button>
          </ModalFooter>
        </ModalContent>
      </Modal>
      <AddMarkModal
        isOpen={isOpenAdd}
        onClose={onCloseAdd}
        id={selectStudent}
        onChangeMarkTable={onChangeMarkTable}
      />
    </Box>
  );
}
