CLASS zcl_lab_35_college_mb DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS enroll_student IMPORTING io_student TYPE REF TO zcl_lab_34_student_mb.
    DATA student TYPE REF TO zcl_lab_34_student_mb.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_35_college_mb IMPLEMENTATION.
  METHOD enroll_student.
    me->student = io_student.
  ENDMETHOD.

ENDCLASS.
