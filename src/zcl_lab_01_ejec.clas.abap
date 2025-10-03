CLASS zcl_lab_01_ejec DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun .
    TYPES: ty_flight_tab TYPE STANDARD TABLE OF /dmo/flight.
    METHODS show_price IMPORTING it_flight       TYPE ty_flight_tab
                                 iv_value        TYPE string
                       RETURNING VALUE(rv_price) TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.




CLASS zcl_lab_01_ejec IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

    DATA(lo_flight)         = NEW zcl_lab_15_flight_price_mb(  ).
    DATA(lo_discount)       = NEW zcl_lab_16_price_discount_mb(  ).
    DATA(lo_super_discount) = NEW zcl_lab_17_super_discount_mb(  ).
    DATA: ls_flight TYPE /dmo/flight,
          lt_flight TYPE TABLE OF /dmo/flight.

    SELECT SINGLE
    FROM /dmo/flight
    FIELDS *
    INTO @ls_flight.
    IF sy-subrc EQ 0.
      out->write( |carrier_id: { ls_flight-carrier_id  } - connection_id: { ls_flight-connection_id } - flight_date: { ls_flight-flight_date DATE = USER } | ).

      lo_flight->add_price( ms_flight = ls_flight ).
      lo_discount->add_price( ms_flight = ls_flight ).
      lo_super_discount->add_price( ms_flight = ls_flight ).

      lt_flight = lo_flight->mt_flights.
      out->write(  me->show_price( EXPORTING it_flight = lt_flight iv_value  = 'Precio habitual' ) ).
      CLEAR: lt_flight.

      lt_flight = lo_discount->mt_flights.
      out->write(  me->show_price( EXPORTING it_flight = lt_flight iv_value  = 'Precio con Descuento' ) ).
      CLEAR: lt_flight.

      lt_flight = lo_super_discount->mt_flights.
      out->write(  me->show_price( EXPORTING it_flight = lt_flight iv_value  = 'Precio con Super Descuento' ) ).

    ENDIF.

  ENDMETHOD.


  METHOD show_price.
    DATA: ls_flight TYPE /dmo/flight.
    rv_price = iv_value .
    LOOP AT it_flight INTO ls_flight.
      rv_price = |{ rv_price } : { ls_flight-price }|.
    ENDLOOP.

  ENDMETHOD.

ENDCLASS.
