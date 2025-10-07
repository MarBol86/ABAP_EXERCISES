CLASS zcl_lab_31_org_france_mb DEFINITION
  PUBLIC
  INHERITING FROM zcl_lab_29_organization_mb
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: get_location REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_31_org_france_mb IMPLEMENTATION.
  METHOD get_location.
    rv_location = 'France'.
  ENDMETHOD.

ENDCLASS.
