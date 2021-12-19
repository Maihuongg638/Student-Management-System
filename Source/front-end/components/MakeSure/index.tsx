/* eslint-disable react/no-children-prop */
import {
  AlertDialog,
  AlertDialogBody,
  AlertDialogContent,
  AlertDialogFooter,
  AlertDialogHeader,
  AlertDialogOverlay,
  Button,
  Spinner,
} from "@chakra-ui/react";
import * as React from "react";
import { deleteStudent, deleteTeacher } from "../../services/api";

interface Props {
  isOpen: boolean;
  onClose: () => void;
  select?: string;
  onDelete?: (id: string) => void;
  type?: string;
}

export function MakeSure({ isOpen, onClose, select, onDelete, type }: Props) {
  const cancelRef = React.useRef(null);
  const [isLoad, setIsLoad] = React.useState(false);
  const [isSuccess, setIsSuccess] = React.useState(false);
  const onDeleteDBTeacher = (value: string) => {
    setIsLoad(true);
    const fetch = deleteTeacher(value);
    fetch
      .then((res) => res.json())
      .then((msg) => {
        if (msg.message == "oke") {
          onDelete && onDelete(value);
          setIsLoad(false);
          setIsSuccess(true);
        }
      });
  };
  const onDeleteDBStudent = (value: string) => {
    setIsLoad(true);
    const fetch = deleteStudent(value);
    fetch
      .then((res) => res.json())
      .then((msg) => {
        if (msg.message == "oke") {
          onDelete && onDelete(value);
          setIsLoad(false);
          setIsSuccess(true);
        }
      });
  };

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
            {isSuccess
              ? "Đã xóa thành công"
              : "Bạn có chắc muốn xóa dòng dữ liệu này không ?"}
          </AlertDialogBody>

          <AlertDialogFooter>
            <Button
              _focus={{ outline: "none" }}
              ref={cancelRef}
              onClick={() => {
                onClose();
                setIsSuccess(false);
              }}>
              Quay lại
            </Button>
            {!isSuccess && (
              <Button
                _focus={{ outline: "none" }}
                colorScheme="red"
                ml={3}
                onClick={() => {
                  select &&
                    (type === "teacher"
                      ? onDeleteDBTeacher(select)
                      : onDeleteDBStudent(select));
                }}>
                {isLoad ? <Spinner /> : "Xóa"}
              </Button>
            )}
          </AlertDialogFooter>
        </AlertDialogContent>
      </AlertDialogOverlay>
    </AlertDialog>
  );
}
