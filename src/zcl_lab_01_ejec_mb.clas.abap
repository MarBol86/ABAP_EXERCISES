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

    DATA(lo_travel) = NEW zcl_lab_61_travel_mb(  ).
    lo_travel->get_travel(
      IMPORTING
        es_travel = DATA(ls_travel) ).

    out->write( |{ ls_travel-carrier_id }-{ ls_travel-connection_id }| ) .




  ENDMETHOD.
ENDCLASS.
