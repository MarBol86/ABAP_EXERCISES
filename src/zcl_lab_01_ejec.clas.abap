CLASS zcl_lab_01_ejec DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_01_ejec IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    DATA(lo_object) = NEW zcl_lab_10_constructor( ) .

    out->write( zcl_lab_10_constructor=>log ).

  ENDMETHOD.
ENDCLASS.
