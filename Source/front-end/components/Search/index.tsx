import { SearchIcon } from "@chakra-ui/icons";
import {
  Flex,
  IconButton,
  Input,
  InputGroup,
  InputRightElement,
  Select,
} from "@chakra-ui/react";
import * as React from "react";

interface Props {
  onGetText?: (value: string) => void;
  onChangeType?: (value: string) => void;
}

function Search({ onGetText, onChangeType }: Props) {
  const [text, setText] = React.useState("");
  const inputRef = React.useRef<HTMLInputElement>(null);

  return (
    <Flex w="100%" justifyContent="space-evenly" alignItems="center">
      <InputGroup size="md" w=" 40%">
        <Input
          ref={inputRef}
          _focus={{ outline: "none" }}
          pr="4.5rem"
          placeholder="Search..."
          onChange={(event) => {
            setText(event.target.value);
          }}
        />
        <InputRightElement width="30px" mr="10px">
          <IconButton
            onClick={() => {
              onGetText && onGetText(text);
              setText("");
              if (inputRef.current != null) inputRef.current.value = "";
            }}
            _focus={{ outline: "none" }}
            colorScheme="green"
            h="30px"
            w="30px"
            aria-label="Search database"
            icon={<SearchIcon />}
          />
        </InputRightElement>
      </InputGroup>
      <Select
        defaultValue="1"
        w="30%"
        onChange={(event) => {
          onChangeType && onChangeType(event.target.value);
        }}>
        <option value="1">Tìm kiếm theo mã</option>
        <option value="2">Tìm kiếm theo tên</option>
        <option value="3">Tìm kiếm theo khoa</option>
      </Select>
    </Flex>
  );
}

export { Search };
