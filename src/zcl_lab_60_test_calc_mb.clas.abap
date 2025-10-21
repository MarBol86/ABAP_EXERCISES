CLASS zcl_lab_60_test_calc_mb DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC FOR TESTING
  DURATION SHORT
  RISK LEVEL HARMLESS .

  PUBLIC SECTION.
    "! @testing zcl_lab_59_calculator_mb
    METHODS sum_test FOR TESTING.
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA: mo_cut TYPE REF TO zcl_lab_59_calculator_mb.
    METHODS setup.
    METHODS teardown.
ENDCLASS.



CLASS zcl_lab_60_test_calc_mb IMPLEMENTATION.
  METHOD setup.
    me->mo_cut = NEW #( ).
  ENDMETHOD.

  METHOD sum_test.
    DATA lv_num1 TYPE i VALUE 10.
    DATA lv_num2 TYPE i VALUE 5.
    DATA lv_result TYPE i.

    mo_cut->sum_up(
      EXPORTING
        iv_num1      = lv_num1
        iv_num2      = lv_num2
      RECEIVING
        rv_resultado = lv_result
    ).
    cl_abap_unit_assert=>assert_equals(
      EXPORTING
        act                  = lv_result
        exp                  = 15
    ).
  ENDMETHOD.

  METHOD teardown.
    CLEAR: me->mo_cut.
  ENDMETHOD.

ENDCLASS.
