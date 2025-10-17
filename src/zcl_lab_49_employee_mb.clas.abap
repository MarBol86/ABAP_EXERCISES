CLASS zcl_lab_49_employee_mb DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS on_payroll_paid FOR EVENT payroll_paid OF zcl_lab_48_administrative_dep IMPORTING sender.
    METHODS constructor.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_49_employee_mb IMPLEMENTATION.


  METHOD constructor.
    SET HANDLER me->on_payroll_paid FOR ALL INSTANCES.
  ENDMETHOD.

  METHOD on_payroll_paid.
    APPEND sender->id_employee TO zcl_lab_48_administrative_dep=>log.
  ENDMETHOD.

ENDCLASS.
