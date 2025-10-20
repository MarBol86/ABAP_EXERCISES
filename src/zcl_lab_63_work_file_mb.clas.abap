CLASS zcl_lab_63_work_file_mb DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES zif_lab_06_file_mb.
    ALIASES get_file_type FOR zif_lab_06_file_mb~get_file_type.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_63_work_file_mb IMPLEMENTATION.
  METHOD zif_lab_06_file_mb~get_file_type.
    rv_file_type = 'WORK FILE'.
  ENDMETHOD.

ENDCLASS.
