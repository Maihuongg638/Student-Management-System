import {
  Box,
  Img,
  Tab,
  TabList,
  TabPanel,
  TabPanels,
  Tabs,
} from "@chakra-ui/react";
import { HomeTab } from "../container/HomeTab";
import { TeacherTab } from "../container/TeacherTab";

const Home = () => {
  return (
    <Box w="100%" position="relative" h="100vh">
      <Box position="relative" mb="20px" h="100px">
        <Img
          width="100%"
          h="100px"
          src="/img/background.jpg"
          alt="background"
        />
        <Img
          top="10px"
          left="10px"
          position="absolute"
          h="80px"
          src="/img/banner.png"
          alt="background"
        />
      </Box>
      <Tabs
        w="100%"
        variant="enclosed"
        align="center"
        isFitted
        colorScheme="green">
        <TabList>
          <Tab _focus={{ outline: "none" }}>Trang chủ</Tab>
          <Tab _focus={{ outline: "none" }}>Giảng viên</Tab>
          <Tab _focus={{ outline: "none" }}>Sinh viên</Tab>
          <Tab _focus={{ outline: "none" }}>Khoa</Tab>
          <Tab _focus={{ outline: "none" }}>Môn học</Tab>
          <Tab _focus={{ outline: "none" }}>Lớp học</Tab>
          <Tab _focus={{ outline: "none" }}>Tra cứu</Tab>
        </TabList>
        <TabPanels>
          <TabPanel px="1.5rem">
            <HomeTab />
          </TabPanel>
          <TabPanel px="1.5rem">
            <TeacherTab />
          </TabPanel>
          <TabPanel>
            <p>Sinh viên</p>
          </TabPanel>
          <TabPanel>
            <p>Khoa</p>
          </TabPanel>
          <TabPanel>
            <p>Chuyên ngành</p>
          </TabPanel>
          <TabPanel>
            <p>Môn học</p>
          </TabPanel>
          <TabPanel>
            <p>Lớp học</p>
          </TabPanel>
          <TabPanel>
            <p>Tra cứu</p>
          </TabPanel>
        </TabPanels>
      </Tabs>
      {/* <Box
        position="fixed"
        bottom="0"
        textAlign="center"
        w="100%"
        background="#38A169"
        h="50px">
        This is footer
      </Box> */}
    </Box>
  );
};

export default Home;
