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
  Spinner,
  Stack,
  Switch,
} from "@chakra-ui/react";
import * as React from "react";
import { Teacher, TeacherData } from "../../constants/types";
import { updateTeacher } from "../../services/api";
import { formatDate } from "../../untils/date";

interface Props {
  data?: TeacherData;
  isOpen: boolean;
  onClose: () => void;
  onUpdate: (value: TeacherData) => void;
}

function EditModalTeacher({
  data = {
    Ma_GV: "",
    Ten_GV: "",
    Ngay_Sinh: "",
    Gioi_Tinh: "",
    Bang_Cap: "",
    SDT: "",
    Dia_Chi: "",
    Email: "",
    Mat_Khau: "",
    Ten_Khoa: "",
  },
  isOpen,
  onClose,
  onUpdate,
}: Props) {
  const [edit, setEdit] = React.useState(false);
  const [dataEdit, setDataEdit] = React.useState<TeacherData>(data);
  const [isLoading, setIsLoading] = React.useState(false);
  const handelChangeEdit = () => {
    setEdit(!edit);
  };

  React.useEffect(() => {
    setDataEdit((d) => (d = data));
  }, [data]);

  const onChangeName = (value: string) => {
    setDataEdit({ ...dataEdit, Ten_GV: value });
  };

  const onChangeDate = (value: string) => {
    setDataEdit({ ...dataEdit, Ngay_Sinh: value });
  };

  const onChangeSex = (value: string) => {
    setDataEdit({ ...dataEdit, Gioi_Tinh: value });
  };

  const onChangeQuatify = (value: string) => {
    setDataEdit({ ...dataEdit, Bang_Cap: value });
  };

  const onChangePhone = (value: string) => {
    setDataEdit({ ...dataEdit, SDT: value });
  };

  const onChangeAddress = (value: string) => {
    setDataEdit({ ...dataEdit, Dia_Chi: value });
  };

  const onChangeEmail = (value: string) => {
    setDataEdit({ ...dataEdit, Email: value });
  };

  const onChangePassword = (value: string) => {
    setDataEdit({ ...dataEdit, Mat_Khau: value });
  };

  const onUpdateData = () => {
    setIsLoading(true);
    const fetch = updateTeacher(dataEdit as unknown as Teacher, dataEdit.Ma_GV);
    fetch
      .then((res) => res.json())
      .then((msg) => {
        if (msg.message === "oke") {
          onUpdate(dataEdit);
          setIsLoading(false);
          onClose();
        } else {
          alert("Failed");
        }
      });
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
              defaultValue={data.Ma_GV}
              disabled={true}
            />
          </InputGroup>
          <InputGroup>
            <InputLeftAddon w="25%" children="Họ và tên" />
            <Input
              _focus={{ outline: "none" }}
              type="text"
              defaultValue={data.Ten_GV}
              disabled={!edit}
              onChange={(event) => {
                onChangeName(event.target.value);
              }}
            />
          </InputGroup>
          <InputGroup>
            <InputLeftAddon w="25%" children="Ngày sinh" />
            <Input
              _focus={{ outline: "none" }}
              type="date"
              defaultValue={formatDate(data.Ngay_Sinh)}
              disabled={!edit}
              onChange={(event) => {
                onChangeDate(event.target.value);
              }}
            />
          </InputGroup>
          <InputGroup alignItems="center">
            <InputLeftAddon w="25%" children="Giới tính" />
            <RadioGroup
              ml="15px"
              defaultValue={data.Gioi_Tinh}
              onChange={onChangeSex}>
              <Stack direction="row">
                <Radio colorScheme="green" value="Nam" isDisabled={!edit}>
                  Nam
                </Radio>
                <Radio colorScheme="green" value="Nữ" isDisabled={!edit}>
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
              defaultValue={data.Bang_Cap}
              disabled={!edit}
              onChange={(event) => {
                onChangeQuatify(event.target.value);
              }}
            />
          </InputGroup>
          <InputGroup>
            <InputLeftAddon w="25%" children="Số điện thoại" />
            <Input
              _focus={{ outline: "none" }}
              type="tel"
              defaultValue={data.SDT}
              disabled={!edit}
              onChange={(event) => {
                onChangePhone(event.target.value);
              }}
            />
          </InputGroup>
          <InputGroup>
            <InputLeftAddon w="25%" children="Địa chỉ" />
            <Input
              _focus={{ outline: "none" }}
              type="text"
              defaultValue={data.Dia_Chi}
              disabled={!edit}
              onChange={(event) => {
                onChangeAddress(event.target.value);
              }}
            />
          </InputGroup>
          <InputGroup>
            <InputLeftAddon w="25%" children="Email" />
            <Input
              _focus={{ outline: "none" }}
              type="email"
              defaultValue={data.Email}
              disabled={!edit}
              onChange={(event) => {
                onChangeEmail(event.target.value);
              }}
            />
          </InputGroup>
          <InputGroup>
            <InputLeftAddon w="25%" children="Mật khẩu" />
            <Input
              _focus={{ outline: "none" }}
              type="text"
              defaultValue={data.Mat_Khau}
              disabled={!edit}
              onChange={(event) => {
                onChangePassword(event.target.value);
              }}
            />
          </InputGroup>
          <InputGroup>
            <InputLeftAddon w="25%" children="Khoa" />
            <Input
              _focus={{ outline: "none" }}
              type="text"
              defaultValue={data.Ten_Khoa}
              disabled={true}
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
            onClick={() => {
              onUpdateData();
            }}>
            {isLoading ? <Spinner /> : "Lưu thay đổi"}
          </Button>
        </ModalFooter>
      </ModalContent>
    </Modal>
  );
}

export { EditModalTeacher };
