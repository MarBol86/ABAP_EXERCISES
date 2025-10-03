CLASS zcl_lab_17_super_discount_mb DEFINITION INHERITING FROM zcl_lab_15_flight_price_mb
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS add_price REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_17_super_discount_mb IMPLEMENTATION.
  METHOD add_price.
    CONSTANTS: lv_discount TYPE p LENGTH 3 DECIMALS 2 VALUE '0.80'.
    DATA: ls_flight TYPE /dmo/flight.

    ls_flight = ms_flight.
    ls_flight-price = ms_flight-price * lv_discount .

    super->add_price( ms_flight = ls_flight ).
  ENDMETHOD.

ENDCLASS.
