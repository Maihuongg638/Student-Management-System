import {
  Box,
  Img,
  Tab,
  TabList,
  TabPanel,
  TabPanels,
  Tabs,
} from "@chakra-ui/react";
import { ClassTab } from "../container/ClassTab";
import { DepartmentTab } from "../container/DepartmentTab";
import { HomeTab } from "../container/HomeTab";
import { MajorTab } from "../container/MajorTab";
import { StudentTab } from "../container/StudentTab";
import { SubjectTab } from "../container/SubjectTab";
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
          <Tab _focus={{ outline: "none" }}>Chuyên ngành</Tab>
          <Tab _focus={{ outline: "none" }}>Môn học</Tab>
          <Tab _focus={{ outline: "none" }}>Lớp học</Tab>
        </TabList>
        <TabPanels>
          <TabPanel px="1.5rem">
            <HomeTab />
          </TabPanel>
          <TabPanel px="1.5rem">
            <TeacherTab />
          </TabPanel>
          <TabPanel px="1.5rem">
            <StudentTab />
          </TabPanel>
          <TabPanel px="1.5rem">
            <DepartmentTab />
          </TabPanel>
          <TabPanel px="1.5rem">
            <MajorTab />
          </TabPanel>
          <TabPanel px="1.5rem">
            <SubjectTab />
          </TabPanel>
          <TabPanel px="1.5rem">
            <ClassTab />
          </TabPanel>
        </TabPanels>
      </Tabs>
    </Box>
  );
};

export default Home;
