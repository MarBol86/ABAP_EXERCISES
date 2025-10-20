CLASS zcl_lab_74_view_mb DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS display_fligth IMPORTING is_flight TYPE /dmo/flight
                                     io_out    TYPE REF TO if_oo_adt_classrun_out.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_74_view_mb IMPLEMENTATION.
  METHOD display_fligth.
    io_out->write( is_flight ).
  ENDMETHOD.

ENDCLASS.
