*"* use this source file for your ABAP unit test classes
CLASS ltcl_travel DEFINITION FINAL FOR TESTING
  DURATION SHORT
  RISK LEVEL HARMLESS.
  PUBLIC SECTION.
    INTERFACES if_abap_db_writer PARTIALLY IMPLEMENTED.
  PRIVATE SECTION.
    DATA mo_cut TYPE REF TO zcl_lab_61_travel_mb.
    METHODS:
      first_test FOR TESTING RAISING cx_static_check,
      setup,
      teardown.
ENDCLASS.


CLASS ltcl_travel IMPLEMENTATION.

  METHOD setup.
    me->mo_cut = NEW #(  ).

    TEST-INJECTION select_data.
      lv_carrier_id = 'SQ'.
      ls_travel-carrier_id = lv_carrier_id.
      ls_travel-connection_id = '0001'.
    END-TEST-INJECTION.

  ENDMETHOD.

  METHOD first_test.
    me->mo_cut->get_travel(
      IMPORTING
        es_travel = DATA(ls_travel) ).

    IF cl_abap_unit_assert=>assert_equals(
     act                  = |{ ls_travel-carrier_id }-{ ls_travel-connection_id }|
     exp                  = 'SQ-0001'
   ) EQ abap_true.
      cl_abap_unit_assert=>fail( 'Get Customer process failed--> zcl_57_test_inj_mb->get_customer' ).

    ENDIF.
  ENDMETHOD.


  METHOD teardown.
    CLEAR: me->mo_cut.
  ENDMETHOD.

  METHOD if_abap_close_resource~close.

  ENDMETHOD.

ENDCLASS.
