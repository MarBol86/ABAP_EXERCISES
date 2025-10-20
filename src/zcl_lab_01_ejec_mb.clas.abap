CLASS zcl_lab_01_ejec_mb DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.


ENDCLASS.

CLASS zcl_lab_01_ejec_mb IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    DATA(lo_model) = NEW zcl_lab_73_model_mb( iv_carried_id = 'SQ' ).
    DATA(lo_view) = NEW zcl_lab_74_view_mb( ).
    DATA(lo_controller) = NEW zcl_lab_75_controller( ).

    lo_controller->set_model( io_model = lo_model ).
    lo_controller->set_view( io_view = lo_view ).

    lo_controller->get_view( )->display_fligth(
      is_flight = lo_model->get_flight( )
      io_out    = out
    ).


  ENDMETHOD.
ENDCLASS.
