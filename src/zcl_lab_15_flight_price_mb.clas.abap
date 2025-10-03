CLASS zcl_lab_15_flight_price_mb DEFINITION
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA: mt_flights TYPE TABLE OF /dmo/flight.
    METHODS add_price IMPORTING ms_flight TYPE /dmo/flight.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_15_flight_price_mb IMPLEMENTATION.
  METHOD add_price.
    APPEND ms_flight TO me->mt_flights.
  ENDMETHOD.

ENDCLASS.
