/* eslint-disable react/no-children-prop */
import {
  Box,
  Button,
  Input,
  InputGroup,
  InputLeftAddon,
  Radio,
  RadioGroup,
  Slide,
  Stack,
  useDisclosure,
} from "@chakra-ui/react";
import * as React from "react";

interface Props {}

export function AddModalTeacher({}: Props) {
  const { isOpen, onToggle } = useDisclosure();
  return (
    <Box my="20px">
      <Button w="100%" colorScheme="green" onClick={onToggle}>
        Thêm giáo viên
      </Button>
      <Slide direction="top" in={isOpen} style={{ zIndex: 10 }}>
        <Box p="40px" mx="30%" bg="white" rounded="md" shadow="md">
          <InputGroup>
            <InputLeftAddon w="25%" children="Mã số" />
            <Input
              background="white"
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
          <Button mt="20px" colorScheme="green" onClick={onToggle}>
            Quay lại
          </Button>
        </Box>
      </Slide>
    </Box>
  );
}
