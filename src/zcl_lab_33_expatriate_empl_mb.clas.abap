CLASS zcl_lab_33_expatriate_empl_mb DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES zif_lab_04_employee_mb .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_33_expatriate_empl_mb IMPLEMENTATION.
  METHOD zif_lab_04_employee_mb~get_employees_count.
    rv_employees = 9999 .
  ENDMETHOD.
ENDCLASS.
