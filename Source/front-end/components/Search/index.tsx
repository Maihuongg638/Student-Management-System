import { SearchIcon } from "@chakra-ui/icons";
import {
  IconButton,
  Input,
  InputGroup,
  InputRightElement,
} from "@chakra-ui/react";
import * as React from "react";

function Search() {
  return (
    <InputGroup size="md">
      <Input _focus={{ outline: "none" }} pr="4.5rem" placeholder="Search..." />
      <InputRightElement width="30px" mr="10px">
        <IconButton
          _focus={{ outline: "none" }}
          colorScheme="green"
          h="30px"
          w="30px"
          aria-label="Search database"
          icon={<SearchIcon />}
        />
      </InputRightElement>
    </InputGroup>
  );
}

export { Search };
