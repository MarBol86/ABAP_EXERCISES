CLASS zcl_lab_59_calculator_mb DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS sum_up IMPORTING iv_num1             TYPE i
                             iv_num2             TYPE i
                   RETURNING VALUE(rv_resultado) TYPE i.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_59_calculator_mb IMPLEMENTATION.
  METHOD sum_up.
    rv_resultado = iv_num1 + iv_num2.
  ENDMETHOD.

ENDCLASS.
