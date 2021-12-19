import {
  Box,
  Button,
  Collapse,
  Flex,
  HStack,
  Select,
  Text,
  useDisclosure,
} from "@chakra-ui/react";
import * as React from "react";
import { MajorInfo, Subject } from "../../constants/types";
import { getMajor, getSujects } from "../../services/api";

const Item = ({ data }: { data: Subject }) => {
  const { isOpen, onToggle } = useDisclosure();

  return (
    <Box my="10px">
      <Button w="100%" onClick={onToggle} textAlign="left">
        {data.Ten_MH} ({data.Ma_MH})
      </Button>
      <Collapse in={isOpen} animateOpacity>
        <Box
          p="20px"
          color="white"
          mt="4"
          bg="teal.500"
          rounded="md"
          shadow="md">
          <Flex justifyContent="space-evenly">
            <Text fontSize="16px" fontWeight="bold">
              Thể loại: {data.The_Loai}
            </Text>
            <Text fontSize="16px" fontWeight="bold">
              Số tín chỉ: {data.So_Tin_Chi}
            </Text>
            <Text fontSize="16px" fontWeight="bold">
              Học phí: {data.Hoc_Phi}
            </Text>
          </Flex>
          <Text fontSize="20px" fontWeight="bold">
            Mô tả
          </Text>
          <Text fontSize="16px" textAlign="justify">
            {data.Mo_Ta}
          </Text>
        </Box>
      </Collapse>
    </Box>
  );
};

export function SubjectTab() {
  const [option, setOption] = React.useState<MajorInfo[]>();
  const [data, setData] = React.useState<Subject[]>();
  const [select, setSelect] = React.useState("");

  const filterData = () => {
    if (select != "none") {
      return data?.filter((ele) => ele.Ma_Nganh === select);
    }
    return data;
  };

  React.useEffect(() => {
    const fetch = getMajor();
    const fetch2 = getSujects();
    setSelect("none");

    fetch
      .then((res) => res.json())
      .then((data) => {
        const temp = data as MajorInfo[];
        setOption((d) => (d = temp));
      });
    fetch2
      .then((res) => res.json())
      .then((data) => {
        const temp = data as Subject[];
        setData((d) => (d = temp));
      });
  }, [getMajor, getSujects]);

  const onChangeSelect = (value: string) => {
    setSelect(value);
  };

  return (
    <Box>
      <HStack spacing="20px" my="20px">
        <Text>Chuyên ngành: </Text>
        <Select
          defaultValue="none"
          w="300px"
          onChange={(event) => {
            onChangeSelect(event.target.value);
          }}>
          <option value="none">Toàn bộ</option>
          {option?.map((ele, index) => {
            return (
              <option key={index} value={ele.Ma_Nganh}>
                {ele.Ten_Nganh}
              </option>
            );
          })}
        </Select>
      </HStack>
      <Box>
        {filterData()?.map((ele, index) => {
          return <Item key={index} data={ele} />;
        })}
      </Box>
    </Box>
  );
}
