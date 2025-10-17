CLASS zcl_lab_48_administrative_dep DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA id_employee TYPE string.
    CLASS-DATA log TYPE TABLE OF string.
    METHODS constructor IMPORTING iv_id_employee TYPE string.
    EVENTS payroll_paid.
    METHODS notify_employee.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_48_administrative_dep IMPLEMENTATION.
  METHOD notify_employee.
    RAISE EVENT payroll_paid.
  ENDMETHOD.
  METHOD constructor.
    me->id_employee = iv_id_employee.
  ENDMETHOD.

ENDCLASS.
