CLASS zcl_lab_11_system_mb DEFINITION
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA: architecture TYPE string VALUE '64BITS'.
    METHODS: get_architecture EXPORTING architecture TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_11_system_mb IMPLEMENTATION.
  METHOD get_architecture.
    architecture = me->architecture.
  ENDMETHOD.

ENDCLASS.
