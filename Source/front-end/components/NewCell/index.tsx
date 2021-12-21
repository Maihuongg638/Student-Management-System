import { StarIcon } from "@chakra-ui/icons";
import { BoxProps, Button, Flex, Img, Text } from "@chakra-ui/react";
import * as React from "react";
import { CellSwapper } from "../CellSwapper";

interface Props {
  title?: string;
  content?: string;
  url?: string;
}

function NewCell({ title, content, url, ...boxProps }: Props & BoxProps) {
  const [favorite, setFavorite] = React.useState(false);
  const handelChageIcon = () => {
    setFavorite(!favorite);
  };

  return (
    <CellSwapper
      px="15px"
      py="20px"
      my="20px"
      position="relative"
      {...boxProps}>
      <StarIcon
        _hover={{ cursor: "pointer" }}
        position="absolute"
        right="15px"
        top="15px"
        color={favorite ? "#2F855A" : "#d4d4d4"}
        onClick={handelChageIcon}
      />
      <Text textAlign="left" fontSize="20px" fontWeight="medium">
        {title}
      </Text>
      <Flex w="100%" h="150px" mt="10px" overflow="auto">
        <Img mr="10px" src={url} />
        <Text fontSize="16px" textAlign="left">
          {content}
        </Text>
      </Flex>
      <Flex justifyContent="flex-end">
        <Button
          _focus={{ outline: "none" }}
          variant="outline"
          colorScheme="green">
          Xem thêm
        </Button>
      </Flex>
    </CellSwapper>
  );
}

export { NewCell };
