CLASS zcl_lab_20_person_mb DEFINITION
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS set_name FINAL IMPORTING  iv_name TYPE string.
  PROTECTED SECTION.
    DATA: name TYPE string.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_20_person_mb IMPLEMENTATION.
  METHOD set_name.
    me->name = iv_name.
  ENDMETHOD.

ENDCLASS.
