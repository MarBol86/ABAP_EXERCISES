*"* use this source file for your ABAP unit test classes
CLASS ltcl_testing DEFINITION FINAL FOR TESTING
  DURATION SHORT
  RISK LEVEL HARMLESS.

  PRIVATE SECTION.
    DATA: mo_cut TYPE REF TO zcl_lab_59_calculator_mb.
    METHODS setup.
    METHODS teardown.
    METHODS:
      first_test FOR TESTING RAISING cx_static_check.
ENDCLASS.


CLASS ltcl_testing IMPLEMENTATION.
  METHOD setup.
    me->mo_cut = NEW #( ).
  ENDMETHOD.

  METHOD first_test.
    DATA lv_num1 TYPE i VALUE 10.
    DATA lv_num2 TYPE i VALUE 5.
    DATA lv_result TYPE i.

    mo_cut->sum_up(
      EXPORTING
        iv_num1      = lv_num1
        iv_num2      = lv_num2
      RECEIVING
        rv_resultado = lv_result ).

    IF cl_abap_unit_assert=>assert_equals(
                            EXPORTING
                            act = lv_result
                            exp = 15
    ) EQ abap_true.
      cl_abap_unit_assert=>fail( 'Error en clase local' ).
    ENDIF.
  ENDMETHOD.

  METHOD teardown.
    CLEAR: me->mo_cut.
  ENDMETHOD.

ENDCLASS.
