export interface Student {
  Ma_SV: string;
  Ho: string;
  Ten: string;
  Ten_Dem: string;
  Ngay_Sinh: string;
  Que_Quan: string;
  CMND: string;
  Gioi_Tinh: string;
  Mat_Khau: string;
  Email: string;
  SDT: string;
  Ma_LH: string;
}

export interface Teacher {
  Ma_GV: string;
  Ten_GV: string;
  Ngay_Sinh: string;
  Gioi_Tinh: string;
  Bang_Cap: string;
  SDT: string;
  Dia_Chi: string;
  Email: string;
  Mat_Khau: string;
  Ma_Khoa: string;
}

export interface Family {
  CMND: string;
  Ho_Ten: string;
  Cong_Viec: string;
  Quan_He: string;
  Ngay_Sinh: string;
  SDT: string;
  Ma_SV: string;
}

export interface Subject {
  Ma_MH: string;
  Ten_MH: string;
  The_Loai: string;
  So_Tin_Chi: number;
  Mo_Ta: string;
  Hoc_Phi: number;
  Ma_Nganh: string;
}

export interface Class {
  Ma_LH: string;
  Ten_LH: string;
  Khoa_Hoc: string;
  Nam_Nhap_Hoc: number;
  Ma_Nganh: string;
}

export interface TeacherData {
  Ma_GV: string;
  Ten_GV: string;
  Ngay_Sinh: string;
  Gioi_Tinh: string;
  Bang_Cap: string;
  SDT: string;
  Dia_Chi: string;
  Email: string;
  Mat_Khau: string;
  Ten_Khoa: string;
}

export interface StudentData {
  Ma_SV: string;
  Ho: string;
  Ten_Dem: string;
  Ten: string;
  Ngay_Sinh: string;
  Que_Quan: string;
  CMND: string;
  Gioi_Tinh: string;
  Mat_Khau: string;
  Email: string;
  SDT: string;
  Ten_LH: string;
  Ten_Nganh: string;
  Ten_Khoa: string;
}

export interface SelectOption {
  Ma_LH: string;
  Ten_LH: string;
  Ten_Khoa: string;
  Ten_Nganh: string;
}

export interface StudentAdd {
  Ma_SV: string;
  Ho: string;
  Ten: string;
  Ten_Dem: string;
  Ngay_Sinh: string;
  Que_Quan: string;
  CMND: string;
  Gioi_Tinh: string;
  Mat_Khau: string;
  Email: string;
  SDT: string;
  Ma_LH: string;
}

export interface DepartmentInfo {
  Ten_Khoa: string;
  So_Phong: string;
  Link_Page: string;
  SDT_Khoa: string;
  So_Nganh: number;
}

export interface MajorInfo {
  Ma_Nganh: string;
  Ten_Nganh: string;
  Mo_Ta: string;
  Ma_Khoa: string;
}

export interface MarkSubject {
  Ma_MH: string;
  Ten_MH: string;
  Diem_QT: number;
  Diem_GK: number;
  Diem_CK: number;
}

export interface MarkSubjectAdd {
  Ma_SV: string;
  Ma_MH: string;
  Diem_QT: number;
  Diem_GK: number;
  Diem_CK: number;
}
