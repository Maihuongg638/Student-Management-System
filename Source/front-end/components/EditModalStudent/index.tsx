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
import { Student, StudentData } from "../../constants/types";
import { updateStudent } from "../../services/api";
import { formatDate } from "../../untils/date";

interface Props {
  data?: StudentData;
  isOpen: boolean;
  onClose: () => void;
  onUpdate: (value: StudentData) => void;
}

function EditModalStudent({
  isOpen,
  onClose,
  data = {
    Ma_SV: "",
    Ho: "",
    Ten_Dem: "",
    Ten: "",
    Ngay_Sinh: "",
    Que_Quan: "",
    CMND: "",
    Gioi_Tinh: "",
    Mat_Khau: "",
    Email: "",
    SDT: "",
    Ten_LH: "",
    Ten_Nganh: "",
    Ten_Khoa: "",
  },
  onUpdate,
}: Props) {
  const [edit, setEdit] = React.useState(false);
  const [dataEdit, setDataEdit] = React.useState<StudentData>(data);
  const [isLoading, setIsLoading] = React.useState(false);

  const handelChangeEdit = () => {
    setEdit(!edit);
  };
  React.useEffect(() => {
    setDataEdit((d) => (d = data));
  }, [data]);

  const onChangeFirstName = (value: string) => {
    setDataEdit({ ...dataEdit, Ho: value });
  };

  const onChangeMiddleName = (value: string) => {
    setDataEdit({ ...dataEdit, Ten_Dem: value });
  };

  const onChangeLastName = (value: string) => {
    setDataEdit({ ...dataEdit, Ten: value });
  };

  const onChangeDate = (value: string) => {
    setDataEdit({ ...dataEdit, Ngay_Sinh: value });
  };

  const onChangeSex = (value: string) => {
    setDataEdit({ ...dataEdit, Gioi_Tinh: value });
  };

  const onChangeOrigin = (value: string) => {
    setDataEdit({ ...dataEdit, Que_Quan: value });
  };

  const onChangePhone = (value: string) => {
    setDataEdit({ ...dataEdit, SDT: value });
  };

  const onChangeCMND = (value: string) => {
    setDataEdit({ ...dataEdit, CMND: value });
  };

  const onChangeEmail = (value: string) => {
    setDataEdit({ ...dataEdit, Email: value });
  };

  const onChangePassword = (value: string) => {
    setDataEdit({ ...dataEdit, Mat_Khau: value });
  };

  const onUpdateData = () => {
    setIsLoading(true);
    const fetch = updateStudent(dataEdit as unknown as Student, dataEdit.Ma_SV);
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
            <InputLeftAddon w="25%" children="Mã sinh viên" />
            <Input
              _focus={{ outline: "none" }}
              type="text"
              defaultValue={data.Ma_SV}
              disabled={true}
            />
          </InputGroup>
          <InputGroup>
            <InputLeftAddon w="25%" children="Họ" />
            <Input
              _focus={{ outline: "none" }}
              type="text"
              defaultValue={data.Ho}
              disabled={!edit}
              onChange={(event) => {
                onChangeFirstName(event.target.value);
              }}
            />
          </InputGroup>
          <InputGroup>
            <InputLeftAddon w="25%" children="Tên đệm" />
            <Input
              _focus={{ outline: "none" }}
              type="text"
              defaultValue={data.Ten_Dem}
              disabled={!edit}
              onChange={(event) => {
                onChangeMiddleName(event.target.value);
              }}
            />
          </InputGroup>
          <InputGroup>
            <InputLeftAddon w="25%" children="Tên" />
            <Input
              _focus={{ outline: "none" }}
              type="text"
              defaultValue={data.Ten}
              disabled={!edit}
              onChange={(event) => {
                onChangeLastName(event.target.value);
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
          <InputGroup>
            <InputLeftAddon w="25%" children="Quê quán" />
            <Input
              _focus={{ outline: "none" }}
              type="text"
              defaultValue={data.Que_Quan}
              disabled={!edit}
              onChange={(event) => {
                onChangeOrigin(event.target.value);
              }}
            />
          </InputGroup>
          <InputGroup>
            <InputLeftAddon w="25%" children="CMND" />
            <Input
              _focus={{ outline: "none" }}
              type="text"
              defaultValue={data.CMND}
              disabled={!edit}
              onChange={(event) => {
                onChangeCMND(event.target.value);
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
            <InputLeftAddon w="25%" children="Lớp" />
            <Input
              _focus={{ outline: "none" }}
              type="text"
              defaultValue={data.Ten_LH}
              disabled={true}
            />
          </InputGroup>
          <InputGroup>
            <InputLeftAddon w="25%" children="Chuyên ngành" />
            <Input
              _focus={{ outline: "none" }}
              type="text"
              defaultValue={data.Ten_Nganh}
              disabled={true}
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

export { EditModalStudent };
