CLASS zcl_lab_28_logistics_mb DEFINITION INHERITING FROM zcl_lab_27_factory_mb
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: production_line REDEFINITION,
      input_products REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_28_logistics_mb IMPLEMENTATION.
  METHOD input_products.
    rv_input = | { sy-repid } - Método: input_products|.

  ENDMETHOD.

  METHOD production_line.
    rv_production = | { sy-repid } - Método: production_line |.

  ENDMETHOD.

ENDCLASS.
