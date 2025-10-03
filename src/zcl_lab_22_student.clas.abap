CLASS zcl_lab_22_student DEFINITION INHERITING FROM zcl_lab_21_classroom_mb
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS assign_student.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_22_student IMPLEMENTATION.
  METHOD assign_student.
    DATA(lo_object) = NEW zcl_lab_21_classroom_mb(  ) .
  ENDMETHOD.

ENDCLASS.
