import { Box, BoxProps } from "@chakra-ui/react";
import * as React from "react";

interface Props {
  children?: React.ReactNode;
}

function CellSwapper({ children, ...boxProps }: Props & BoxProps) {
  return (
    <Box
      boxShadow="rgba(0, 0, 0, 0.19) 0px 10px 20px, rgba(0, 0, 0, 0.23) 0px 6px 6px;"
      borderRadius="10px"
      {...boxProps}>
      {children}
    </Box>
  );
}

export { CellSwapper };
