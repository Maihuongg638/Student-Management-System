/* eslint-disable react/no-children-prop */
import {
  AlertDialog,
  AlertDialogBody,
  AlertDialogContent,
  AlertDialogFooter,
  AlertDialogHeader,
  AlertDialogOverlay,
  Button,
} from "@chakra-ui/react";
import * as React from "react";

interface Props {
  isOpen: boolean;
  onClose: () => void;
}

export function MakeSure({ isOpen, onClose }: Props) {
  const cancelRef = React.useRef(null);

  return (
    <AlertDialog
      isOpen={isOpen}
      onClose={onClose}
      leastDestructiveRef={cancelRef}>
      <AlertDialogOverlay>
        <AlertDialogContent>
          <AlertDialogHeader fontSize="lg" fontWeight="bold">
            Xóa dữ liệu
          </AlertDialogHeader>

          <AlertDialogBody>
            Bạn có chắc muốn xóa dòng dữ liệu này không ?
          </AlertDialogBody>

          <AlertDialogFooter>
            <Button
              _focus={{ outline: "none" }}
              ref={cancelRef}
              onClick={onClose}>
              Quay lại
            </Button>
            <Button
              _focus={{ outline: "none" }}
              colorScheme="red"
              onClick={onClose}
              ml={3}>
              Xóa
            </Button>
          </AlertDialogFooter>
        </AlertDialogContent>
      </AlertDialogOverlay>
    </AlertDialog>
  );
}
