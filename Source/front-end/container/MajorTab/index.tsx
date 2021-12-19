import {
  Accordion,
  AccordionButton,
  AccordionIcon,
  AccordionItem,
  AccordionPanel,
  Box,
  Text
} from "@chakra-ui/react";
import * as React from "react";
import { MajorInfo } from "../../constants/types";
import { getMajor } from "../../services/api";

const Item = ({ data }: { data?: MajorInfo }) => {
  return (
    <AccordionItem>
      <h2>
        <AccordionButton>
          <Box flex="1" textAlign="left">
            {data?.Ten_Nganh} ({data?.Ma_Nganh})
          </Box>
          <AccordionIcon />
        </AccordionButton>
      </h2>
      <AccordionPanel pb={4} textAlign="justify">
        {data?.Mo_Ta}
      </AccordionPanel>
    </AccordionItem>
  );
};

export function MajorTab() {
  const [data, setData] = React.useState<MajorInfo[]>();

  React.useEffect(() => {
    const fetch = getMajor();

    fetch
      .then((res) => res.json())
      .then((data) => {
        const temp = data as MajorInfo[];
        setData((d) => (d = temp));
      });
  }, [getMajor]);

  return (
    <Box>
      <Text fontSize="36px" fontWeight="bold">
        Các lĩnh vực đào tạo
      </Text>
      <Accordion allowToggle>
        {data?.map((ele, index) => {
          return <Item key={index} data={ele} />;
        })}
      </Accordion>
    </Box>
  );
}
