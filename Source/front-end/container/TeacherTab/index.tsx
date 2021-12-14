/* eslint-disable react/no-children-prop */
import {
  Box,
  Button,
  Flex,
  HStack,
  Input,
  InputGroup,
  InputLeftAddon,
  Radio,
  RadioGroup,
  Stack,
  Table,
  Tbody,
  Td,
  Th,
  Thead,
  Tr,
  useDisclosure,
} from "@chakra-ui/react";
import * as React from "react";
import { EditModal } from "../../components/EditModal";
import { MakeSure } from "../../components/MakeSure";
import { Search } from "../../components/Search";

const dummyData = [
  {
    id: "A123",
    name: "Nguyen Van A",
    department: "May tinh",
  },
  {
    id: "A123",
    name: "Nguyen Van A",
    department: "May tinh",
  },
  {
    id: "A123",
    name: "Nguyen Van A",
    department: "May tinh",
  },
  {
    id: "A123",
    name: "Nguyen Van A",
    department: "May tinh",
  },
];

const Row = ({
  id,
  name,
  department,
  onOpen,
  onDelete,
}: {
  id: string;
  name: string;
  department: string;
  onOpen: () => void;
  onDelete: () => void;
}) => {
  return (
    <>
      <Tr>
        <Td>{id}</Td>
        <Td>{name}</Td>
        <Td>{department}</Td>
        <Td>
          <HStack spacing="10px">
            <Button
              _focus={{ outline: "none" }}
              colorScheme="green"
              onClick={onOpen}>
              Chi tiết
            </Button>
            <Button
              _focus={{ outline: "none" }}
              colorScheme="red"
              onClick={onDelete}>
              Xóa
            </Button>
          </HStack>
        </Td>
      </Tr>
    </>
  );
};

function TeacherTab() {
  const { isOpen, onOpen, onClose } = useDisclosure();
  const [aleart, setAleart] = React.useState(false);
  const [add, setAdd] = React.useState(false);

  const handelOnCloseAlert = () => {
    setAleart(false);
  };
  const handelOnOpenAlert = () => {
    setAleart(true);
  };

  const handelChangeAdd = () => {
    setAdd(!add);
  };

  return (
    <Flex justifyContent="space-between">
      <Box w="70%" border="1px solid #89898b" p="20px" borderRadius="10px">
        <Search />
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
            {dummyData.map((item, index) => {
              return (
                <Row
                  key={index}
                  {...item}
                  onOpen={onOpen}
                  onDelete={handelOnOpenAlert}
                />
              );
            })}
          </Tbody>
        </Table>
        <EditModal isOpen={isOpen} onClose={onClose} />
        <MakeSure isOpen={aleart} onClose={handelOnCloseAlert} />
      </Box>
      <Box w="30%" px="10px">
        <Button w="100%" colorScheme="green" onClick={handelChangeAdd}>
          Thêm giảng viên
        </Button>
        <Box mt="10px" display={add ? "block" : "none"}>
          <InputGroup>
            <InputLeftAddon w="25%" children="Mã số" />
            <Input
              _focus={{ outline: "none" }}
              type="text"
              defaultValue="A123"
            />
          </InputGroup>
          <InputGroup>
            <InputLeftAddon w="25%" children="Họ và tên" />
            <Input
              _focus={{ outline: "none" }}
              type="text"
              defaultValue="Nguyen Van A"
            />
          </InputGroup>
          <InputGroup>
            <InputLeftAddon w="25%" children="Ngày sinh" />
            <Input
              _focus={{ outline: "none" }}
              type="text"
              defaultValue="22/03/2000"
            />
          </InputGroup>
          <InputGroup alignItems="center">
            <InputLeftAddon w="25%" children="Giới tính" />
            <RadioGroup ml="15px" defaultValue="1">
              <Stack direction="row">
                <Radio colorScheme="green" value="1">
                  Name
                </Radio>
                <Radio colorScheme="green" value="2">
                  Nữ
                </Radio>
              </Stack>
            </RadioGroup>
          </InputGroup>
          <InputGroup>
            <InputLeftAddon w="25%" children="Bằng cấp" />
            <Input
              _focus={{ outline: "none" }}
              type="text"
              defaultValue="Giáo sư"
            />
          </InputGroup>
          <InputGroup>
            <InputLeftAddon w="25%" children="Số điện thoại" />
            <Input
              _focus={{ outline: "none" }}
              type="tel"
              defaultValue="091394281"
            />
          </InputGroup>
          <InputGroup>
            <InputLeftAddon w="25%" children="Địa chỉ" />
            <Input
              _focus={{ outline: "none" }}
              type="text"
              defaultValue="Thành phố HCM"
            />
          </InputGroup>
          <InputGroup>
            <InputLeftAddon w="25%" children="Email" />
            <Input
              _focus={{ outline: "none" }}
              type="email"
              defaultValue="example@gmail.com"
            />
          </InputGroup>
          <InputGroup>
            <InputLeftAddon w="25%" children="Mật khẩu" />
            <Input
              _focus={{ outline: "none" }}
              type="text"
              defaultValue="123456"
            />
          </InputGroup>
          <InputGroup>
            <InputLeftAddon w="25%" children="Khoa" />
            <Input
              _focus={{ outline: "none" }}
              type="text"
              defaultValue="Môi trường"
            />
          </InputGroup>
        </Box>
      </Box>
    </Flex>
  );
}

export { TeacherTab };
