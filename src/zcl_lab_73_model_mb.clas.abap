CLASS zcl_lab_73_model_mb DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS constructor IMPORTING  iv_carried_id TYPE /dmo/carrier_id.
    METHODS get_flight  RETURNING VALUE(rs_flight) TYPE /dmo/flight.
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA ms_flight  TYPE /dmo/flight.
ENDCLASS.

CLASS zcl_lab_73_model_mb IMPLEMENTATION.
  METHOD get_flight.
    rs_flight = me->ms_flight.
  ENDMETHOD.

  METHOD constructor.
    SELECT SINGLE *
      FROM /dmo/flight
      WHERE carrier_id =  @iv_carried_id
      INTO @me->ms_flight .
  ENDMETHOD.

ENDCLASS.
