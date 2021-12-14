/* eslint-disable react/no-children-prop */
import {
  Button,
  FormControl,
  FormLabel,
  Input,
  InputGroup,
  InputLeftAddon,
  Modal,
  ModalBody,
  ModalCloseButton,
  ModalContent,
  ModalFooter,
  ModalHeader,
  ModalOverlay,
  Radio,
  RadioGroup,
  Stack,
  Switch,
} from "@chakra-ui/react";
import * as React from "react";

interface Props {
  isOpen: boolean;
  onClose: () => void;
}

export function EditModal({ isOpen, onClose }: Props) {
  const [edit, setEdit] = React.useState(false);
  const handelChangeEdit = () => {
    setEdit(!edit);
  };

  return (
    <Modal isOpen={isOpen} onClose={onClose} size="xl">
      <ModalOverlay />
      <ModalContent>
        <ModalHeader>Thông tin chi tiết</ModalHeader>
        <ModalCloseButton colorScheme="green" />
        <ModalBody>
          <InputGroup>
            <InputLeftAddon w="25%" children="Mã số" />
            <Input
              _focus={{ outline: "none" }}
              type="text"
              defaultValue="A123"
              disabled={!edit}
            />
          </InputGroup>
          <InputGroup>
            <InputLeftAddon w="25%" children="Họ và tên" />
            <Input
              _focus={{ outline: "none" }}
              type="text"
              defaultValue="Nguyen Van A"
              disabled={!edit}
            />
          </InputGroup>
          <InputGroup>
            <InputLeftAddon w="25%" children="Ngày sinh" />
            <Input
              _focus={{ outline: "none" }}
              type="text"
              defaultValue="22/03/2000"
              disabled={!edit}
            />
          </InputGroup>
          <InputGroup alignItems="center">
            <InputLeftAddon w="25%" children="Giới tính" />
            <RadioGroup ml="15px" defaultValue="1">
              <Stack direction="row">
                <Radio colorScheme="green" value="1" isDisabled={!edit}>
                  Name
                </Radio>
                <Radio colorScheme="green" value="2" isDisabled={!edit}>
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
              disabled={!edit}
            />
          </InputGroup>
          <InputGroup>
            <InputLeftAddon w="25%" children="Số điện thoại" />
            <Input
              _focus={{ outline: "none" }}
              type="tel"
              defaultValue="091394281"
              disabled={!edit}
            />
          </InputGroup>
          <InputGroup>
            <InputLeftAddon w="25%" children="Địa chỉ" />
            <Input
              _focus={{ outline: "none" }}
              type="text"
              defaultValue="Thành phố HCM"
              disabled={!edit}
            />
          </InputGroup>
          <InputGroup>
            <InputLeftAddon w="25%" children="Email" />
            <Input
              _focus={{ outline: "none" }}
              type="email"
              defaultValue="example@gmail.com"
              disabled={!edit}
            />
          </InputGroup>
          <InputGroup>
            <InputLeftAddon w="25%" children="Mật khẩu" />
            <Input
              _focus={{ outline: "none" }}
              type="text"
              defaultValue="123456"
              disabled={!edit}
            />
          </InputGroup>
          <InputGroup>
            <InputLeftAddon w="25%" children="Khoa" />
            <Input
              _focus={{ outline: "none" }}
              type="text"
              defaultValue="Môi trường"
              disabled={!edit}
            />
          </InputGroup>
        </ModalBody>
        <ModalFooter>
          <FormControl display="flex" alignItems="center">
            <FormLabel htmlFor="email-alerts">Chỉnh sửa thông tin</FormLabel>
            <Switch
              colorScheme="green"
              id="email-alerts"
              isChecked={edit}
              onChange={handelChangeEdit}
            />
          </FormControl>
          <Button
            _focus={{ outline: "none" }}
            colorScheme="green"
            disabled={!edit}>
            Lưu thay đổi
          </Button>
        </ModalFooter>
      </ModalContent>
    </Modal>
  );
}
