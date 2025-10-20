CLASS zcl_lab_64_supply_file_mb DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES zif_lab_06_file_mb.
    ALIASES get_file_type FOR zif_lab_06_file_mb~get_file_type.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_64_supply_file_mb IMPLEMENTATION.
  METHOD zif_lab_06_file_mb~get_file_type.
    rv_file_type = 'SUPPLY FILE'.
  ENDMETHOD.

ENDCLASS.
