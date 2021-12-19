/* eslint-disable react/no-children-prop */
import {
  Box,
  Button,
  Input,
  InputGroup,
  InputLeftAddon,
  Radio,
  RadioGroup,
  Select,
  Slide,
  Spinner,
  Stack,
  useDisclosure,
} from "@chakra-ui/react";
import * as React from "react";
import { SelectOption, StudentAdd, StudentData } from "../../constants/types";
import { getSelectClass, InsertStudent } from "../../services/api";

interface Props {
  IDAuto: string;
  onAdd?: (item: StudentData) => void;
}

export function AddModalStudent({ IDAuto, onAdd }: Props) {
  const { isOpen, onToggle } = useDisclosure();
  const [option, setOption] = React.useState<SelectOption[]>();
  const [select, setSelect] = React.useState<SelectOption>();
  const [isLoading, setIsLoading] = React.useState(false);
  const [itemAdd, setItemAdd] = React.useState<StudentAdd>({
    Ma_SV: IDAuto,
    Ho: "",
    Ten: "",
    Ten_Dem: "",
    Ngay_Sinh: "",
    Que_Quan: "",
    CMND: "",
    Gioi_Tinh: "Nam",
    Mat_Khau: "",
    Email: "",
    SDT: "",
    Ma_LH: "",
  });

  const validateMark = (value: StudentData) => {
    if (
      value.Ma_SV.length <= 0 ||
      value.Ho.length <= 0 ||
      value.Ten_Dem.length <= 0 ||
      value.Ten.length <= 0 ||
      value.Ngay_Sinh.length <= 0 ||
      value.Que_Quan.length <= 0 ||
      value.CMND.length <= 0 ||
      value.Gioi_Tinh.length <= 0 ||
      value.Mat_Khau.length <= 0 ||
      value.Email.length <= 0 ||
      value.SDT.length <= 0 ||
      value.Ten_LH.length <= 0 ||
      value.Ten_Nganh.length <= 0 ||
      value.Ten_Khoa.length <= 0
    )
      return false;
    else return true;
  };

  const onAddItem = () => {
    const temp: StudentData = {
      ...itemAdd,
      Ma_SV: IDAuto,
      Gioi_Tinh: itemAdd.Gioi_Tinh === "" ? "Nam" : itemAdd.Gioi_Tinh,
      Ten_LH: select ? select?.Ten_LH : "",
      Ten_Nganh: select ? select?.Ten_Nganh : "",
      Ten_Khoa: select ? select?.Ten_Khoa : "",
    };
    if (!validateMark(temp)) {
      alert("vui lòng nhập đúng!");
      return;
    }
    setIsLoading(true);
    const fetch = InsertStudent({ ...itemAdd, Ma_SV: IDAuto });
    fetch
      .then((res) => res.json())
      .then((msg) => {
        if (msg.message === "oke") {
          onAdd && onAdd(temp);
          setIsLoading(false);
          setItemAdd({
            Ma_SV: "",
            Ho: "",
            Ten: "",
            Ten_Dem: "",
            Ngay_Sinh: "",
            Que_Quan: "",
            CMND: "",
            Gioi_Tinh: "",
            Mat_Khau: "",
            Email: "",
            SDT: "",
            Ma_LH: "",
          });

          alert("Thêm thành công");
        } else {
          alert("failed");
        }
      });
  };

  const onChangeFirstName = (value: string) => {
    setItemAdd({ ...itemAdd, Ho: value });
  };

  const onChangeMiddleName = (value: string) => {
    setItemAdd({ ...itemAdd, Ten_Dem: value });
  };

  const onChangeLastName = (value: string) => {
    setItemAdd({ ...itemAdd, Ten: value });
  };

  const onChangeDate = (value: string) => {
    setItemAdd({ ...itemAdd, Ngay_Sinh: value });
  };

  const onChangeSex = (value: string) => {
    setItemAdd({ ...itemAdd, Gioi_Tinh: value });
  };

  const onChangeOrigin = (value: string) => {
    setItemAdd({ ...itemAdd, Que_Quan: value });
  };

  const onChangePhone = (value: string) => {
    setItemAdd({ ...itemAdd, SDT: value });
  };

  const onChangeCMND = (value: string) => {
    setItemAdd({ ...itemAdd, CMND: value });
  };

  const onChangeEmail = (value: string) => {
    setItemAdd({ ...itemAdd, Email: value });
  };

  const onChangePassword = (value: string) => {
    setItemAdd({ ...itemAdd, Mat_Khau: value });
  };

  const onChangeClassID = (value: string) => {
    setItemAdd({ ...itemAdd, Ma_LH: value });
  };

  React.useEffect(() => {
    const fetch = getSelectClass();

    fetch
      .then((res) => res.json())
      .then((data) => {
        let listTemp = data as SelectOption[];
        setOption((d) => (d = listTemp));
        setSelect((d) => (d = listTemp[0]));
      });
  }, []);

  const onChangeSelect = (id: string) => {
    setSelect(option?.find((ele) => ele.Ma_LH === id));
  };

  return (
    <Box my="20px">
      <Button w="100%" colorScheme="green" onClick={onToggle}>
        Thêm Sinh Viên
      </Button>
      <Slide direction="top" in={isOpen} style={{ zIndex: 10 }}>
        <Box p="40px" bg="white" rounded="md" shadow="md">
          <InputGroup>
            <InputLeftAddon w="25%" children="Mã sinh viên" />
            <Input
              _focus={{ outline: "none" }}
              type="text"
              disabled={true}
              defaultValue={IDAuto}
            />
          </InputGroup>
          <InputGroup>
            <InputLeftAddon w="25%" children="Họ" />
            <Input
              _focus={{ outline: "none" }}
              type="text"
              placeholder="nhập..."
              onChange={(event) => {
                onChangeFirstName(event.target.value);
              }}
              defaultValue={itemAdd.Ho}
            />
          </InputGroup>
          <InputGroup>
            <InputLeftAddon w="25%" children="Tên đệm" />
            <Input
              _focus={{ outline: "none" }}
              type="text"
              placeholder="nhập..."
              onChange={(event) => {
                onChangeMiddleName(event.target.value);
              }}
              defaultValue={itemAdd.Ten_Dem}
            />
          </InputGroup>
          <InputGroup>
            <InputLeftAddon w="25%" children="Tên" />
            <Input
              _focus={{ outline: "none" }}
              type="text"
              placeholder="nhập..."
              onChange={(event) => {
                onChangeLastName(event.target.value);
              }}
              defaultValue={itemAdd.Ten}
            />
          </InputGroup>
          <InputGroup>
            <InputLeftAddon w="25%" children="Ngày sinh" />
            <Input
              _focus={{ outline: "none" }}
              type="date"
              placeholder="nhập..."
              onChange={(event) => {
                onChangeDate(event.target.value);
              }}
              defaultValue={itemAdd.Ngay_Sinh}
            />
          </InputGroup>
          <InputGroup>
            <InputLeftAddon w="25%" children="Quê quán" />
            <Input
              _focus={{ outline: "none" }}
              type="text"
              placeholder="nhập..."
              onChange={(event) => {
                onChangeOrigin(event.target.value);
              }}
              defaultValue={itemAdd.Que_Quan}
            />
          </InputGroup>
          <InputGroup>
            <InputLeftAddon w="25%" children="CMND" />
            <Input
              _focus={{ outline: "none" }}
              type="text"
              placeholder="nhập..."
              onChange={(event) => {
                onChangeCMND(event.target.value);
              }}
              defaultValue={itemAdd.CMND}
            />
          </InputGroup>
          <InputGroup alignItems="center">
            <InputLeftAddon w="25%" children="Giới tính" />
            <RadioGroup ml="15px" defaultValue="Nam" onChange={onChangeSex}>
              <Stack direction="row">
                <Radio colorScheme="green" value="Nam">
                  Nam
                </Radio>
                <Radio colorScheme="green" value="Nữ">
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
              placeholder="nhập..."
              onChange={(event) => {
                onChangePhone(event.target.value);
              }}
              defaultValue={itemAdd.SDT}
            />
          </InputGroup>
          <InputGroup>
            <InputLeftAddon w="25%" children="Email" />
            <Input
              _focus={{ outline: "none" }}
              type="email"
              placeholder="nhập..."
              onChange={(event) => {
                onChangeEmail(event.target.value);
              }}
              defaultValue={itemAdd.Email}
            />
          </InputGroup>
          <InputGroup>
            <InputLeftAddon w="25%" children="Mật khẩu" />
            <Input
              _focus={{ outline: "none" }}
              type="text"
              placeholder="nhập..."
              onChange={(event) => {
                onChangePassword(event.target.value);
              }}
              defaultValue={itemAdd.Mat_Khau}
            />
          </InputGroup>
          <InputGroup>
            <InputLeftAddon w="25%" children="Lớp" />
            <Select
              _focus={{ outline: "none" }}
              onChange={(event) => {
                onChangeSelect(event.target.value);
                onChangeClassID(event.target.value);
              }}
              defaultValue="">
              {option?.map((ele, index) => {
                return (
                  <option key={index} value={ele.Ma_LH}>
                    {ele.Ten_LH}
                  </option>
                );
              })}
            </Select>
          </InputGroup>
          <InputGroup>
            <InputLeftAddon w="25%" children="Chuyên ngành" />
            <Input
              _focus={{ outline: "none" }}
              type="text"
              disabled
              value={select?.Ten_Nganh}
            />
          </InputGroup>
          <InputGroup>
            <InputLeftAddon w="25%" children="Khoa" />
            <Input
              _focus={{ outline: "none" }}
              type="text"
              disabled
              value={select?.Ten_Khoa}
            />
          </InputGroup>
          <Button
            mt="20px"
            mx="10px"
            onClick={() => {
              onToggle();
            }}>
            Quay lại
          </Button>
          <Button
            mt="20px"
            mx="10px"
            colorScheme="green"
            onClick={() => {
              onAddItem();
            }}>
            {isLoading ? <Spinner /> : "Thêm"}
          </Button>
        </Box>
      </Slide>
    </Box>
  );
}
