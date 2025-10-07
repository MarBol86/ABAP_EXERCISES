CLASS zcl_lab_27_factory_mb DEFINITION ABSTRACT
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS merchandise_output RETURNING VALUE(rv_merchendise) TYPE string.
    METHODS: production_line ABSTRACT RETURNING VALUE(rv_production) TYPE string,
      input_products ABSTRACT RETURNING VALUE(rv_input) TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_27_factory_mb IMPLEMENTATION.
  METHOD merchandise_output.
    rv_merchendise = | { sy-repid } - Método: merchandise_output |.
  ENDMETHOD.

ENDCLASS.
