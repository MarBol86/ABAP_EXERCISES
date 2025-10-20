CLASS zcl_lab_62_context_mb DEFINITION
  PUBLIC
  CREATE PRIVATE .
  PUBLIC SECTION.
    CLASS-METHODS get_intance RETURNING VALUE(ro_intance) TYPE REF TO zcl_lab_62_context_mb.
    METHODS:
      set_name IMPORTING iv_name TYPE string,
      get_name RETURNING VALUE(rv_name) TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
    CLASS-DATA: mo_instancia TYPE REF TO zcl_lab_62_context_mb.
    DATA name  TYPE string.
ENDCLASS.

CLASS zcl_lab_62_context_mb IMPLEMENTATION.
  METHOD get_intance.
    IF mo_instancia IS NOT BOUND.
      mo_instancia = NEW #( ).
    ENDIF.
    ro_intance = mo_instancia.
  ENDMETHOD.

  METHOD get_name.
    rv_name = me->name.
  ENDMETHOD.

  METHOD set_name.
    me->name = iv_name.
  ENDMETHOD.

ENDCLASS.
