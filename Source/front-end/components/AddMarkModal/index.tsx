/* eslint-disable react/no-children-prop */
import {
  Button,
  HStack,
  Input,
  InputGroup,
  InputLeftAddon,
  Modal,
  ModalBody,
  ModalContent,
  ModalFooter,
  ModalHeader,
  ModalOverlay,
  Select,
  Spinner,
} from "@chakra-ui/react";
import * as React from "react";
import { MarkSubject, MarkSubjectAdd, Subject } from "../../constants/types";
import { addMark, getSujects } from "../../services/api";

interface Props {
  isOpen: boolean;
  onClose: () => void;
  id: string;
  onChangeMarkTable: (value: MarkSubject) => void;
}

export function AddMarkModal({
  isOpen,
  onClose,
  id,
  onChangeMarkTable,
}: Props) {
  const [data, setData] = React.useState<Subject[]>();
  const [mark, setMark] = React.useState({
    Ma_SV: "",
    Ma_MH: "",
    Diem_QT: "",
    Diem_GK: "",
    Diem_CK: "",
  });
  const [isLoading, setIsLoading] = React.useState(false);

  const validateMark = (value: string) => {
    return /[0-9.]/.test(value) && Number(value) <= 10;
  };

  const AddMark = () => {
    if (
      !validateMark(mark.Diem_QT) ||
      !validateMark(mark.Diem_GK) ||
      !validateMark(mark.Diem_CK)
    ) {
      alert("Vui lòng nhập đúng định dạng!");
    } else {
      const temp: MarkSubjectAdd = {
        Ma_SV: id,
        Ma_MH: mark.Ma_MH,
        Diem_GK: Number(mark.Diem_GK),
        Diem_CK: Number(mark.Diem_CK),
        Diem_QT: Number(mark.Diem_QT),
      };
      const markAdd: MarkSubject = {
        Ma_MH: mark.Ma_MH,
        Ten_MH: String(data?.find((ele) => ele.Ma_MH === mark.Ma_MH)?.Ten_MH),
        Diem_GK: Number(mark.Diem_GK),
        Diem_CK: Number(mark.Diem_CK),
        Diem_QT: Number(mark.Diem_QT),
      };
      setIsLoading(true);
      const fetch = addMark(temp);
      fetch
        .then((res) => res.json())
        .then((data) => {
          if (data.message === "oke") {
            setIsLoading(false);
            onClose();
            onChangeMarkTable(markAdd);
          } else {
            alert("add failed");
          }
        });
    }
  };

  const onChangeSubject = (value: string) => {
    setMark({ ...mark, Ma_MH: value });
  };

  const onChangeQT = (value: string) => {
    setMark({ ...mark, Diem_QT: value });
  };

  const onChangeGK = (value: string) => {
    setMark({ ...mark, Diem_GK: value });
  };

  const onChangeCK = (value: string) => {
    setMark({ ...mark, Diem_CK: value });
  };

  React.useEffect(() => {
    const fetch = getSujects();
    fetch
      .then((res) => res.json())
      .then((data) => {
        const temp = data as Subject[];
        setData((d) => (d = temp));
      });
  }, []);

  return (
    <Modal isOpen={isOpen} onClose={onClose} size="xl">
      <ModalOverlay />
      <ModalContent>
        <ModalHeader>Thêm điểm môn học</ModalHeader>
        <ModalBody>
          <InputGroup>
            <InputLeftAddon w="25%" children="Môn học" />

            <Select
              onChange={(event) => {
                onChangeSubject(event.target.value);
              }}
              defaultValue="none">
              <option value="none">Chọn môn</option>
              {data?.map((ele, index) => {
                return (
                  <option key={index} value={ele.Ma_MH}>
                    {`${ele.Ten_MH} (${ele.Ma_MH})`}
                  </option>
                );
              })}
            </Select>
          </InputGroup>
          <InputGroup>
            <InputLeftAddon w="25%" children="Điểm quá trình" />
            <Input
              _focus={{ outline: "none" }}
              type="number"
              defaultValue=""
              onChange={(event) => {
                onChangeQT(event.target.value);
              }}
            />
          </InputGroup>
          <InputGroup>
            2
            <InputLeftAddon w="25%" children="Điểm giữa kỳ" />
            <Input
              _focus={{ outline: "none" }}
              type="number"
              defaultValue=""
              onChange={(event) => {
                onChangeGK(event.target.value);
              }}
            />
          </InputGroup>
          <InputGroup>
            <InputLeftAddon w="25%" children="Điển cuối kỳ" />
            <Input
              _focus={{ outline: "none" }}
              type="number"
              defaultValue=""
              onChange={(event) => {
                onChangeCK(event.target.value);
              }}
            />
          </InputGroup>
        </ModalBody>

        <ModalFooter>
          <HStack spacing="20px">
            <Button
              colorScheme="blue"
              mr={3}
              onClick={() => {
                onClose();
                setMark({
                  Ma_SV: "",
                  Ma_MH: "",
                  Diem_QT: "",
                  Diem_GK: "",
                  Diem_CK: "",
                });
              }}>
              Quay lại
            </Button>
            <Button colorScheme="green" mr={3} onClick={AddMark}>
              {isLoading ? <Spinner /> : "Thêm"}
            </Button>
          </HStack>
        </ModalFooter>
      </ModalContent>
    </Modal>
  );
}
