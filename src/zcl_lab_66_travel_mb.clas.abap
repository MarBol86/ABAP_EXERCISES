CLASS zcl_lab_66_travel_mb DEFINITION ABSTRACT
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS:
      transport_oneway ABSTRACT IMPORTING io_out TYPE REF TO if_oo_adt_classrun_out,
      day_one ABSTRACT IMPORTING io_out TYPE REF TO if_oo_adt_classrun_out,
      day_two ABSTRACT IMPORTING io_out TYPE REF TO if_oo_adt_classrun_out,
      day_three ABSTRACT IMPORTING io_out TYPE REF TO if_oo_adt_classrun_out.
    METHODS travel FINAL IMPORTING io_out TYPE REF TO if_oo_adt_classrun_out.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_66_travel_mb IMPLEMENTATION.

  METHOD travel.

    me->transport_oneway( io_out ).
    me->day_one( io_out ).
    me->day_two( io_out ).
    me->day_three( io_out ).

  ENDMETHOD.

ENDCLASS.
