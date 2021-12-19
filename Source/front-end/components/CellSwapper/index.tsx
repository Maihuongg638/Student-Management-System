import { Box, BoxProps } from "@chakra-ui/react";
import * as React from "react";

interface Props {
  children?: React.ReactNode;
}

function CellSwapper({ children, ...boxProps }: Props & BoxProps) {
  return (
    <Box
      boxShadow="rgba(0, 0, 0, 0.35) 0px 5px 15px;"
      // backgroundColor="#f2f2f2"
      borderRadius="10px"
      {...boxProps}>
      {children}
    </Box>
  );
}

export { CellSwapper };
