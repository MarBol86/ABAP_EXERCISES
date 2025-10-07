CLASS zcl_lab_26_flights_mb DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES: zif_lab_01_flight_mb,
      zif_lab_02_customer_mb.
    ALIASES: set_conn_id FOR zif_lab_01_flight_mb~set_conn_id,
             get_conn_id FOR zif_lab_01_flight_mb~get_conn_id,
             get_customer FOR zif_lab_02_customer_mb~get_customer,
             get_airport FOR zif_lab_03_airports_mb~get_airport.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_26_flights_mb IMPLEMENTATION.

  METHOD zif_lab_01_flight_mb~set_conn_id.
    me->zif_lab_01_flight_mb~conn_id = iv_conn_id.

  ENDMETHOD.

  METHOD zif_lab_01_flight_mb~get_conn_id.
    rv_conn_id = me->zif_lab_01_flight_mb~conn_id.
  ENDMETHOD.

  METHOD zif_lab_02_customer_mb~get_customer.

    SELECT SINGLE
    FROM /dmo/customer
    FIELDS first_name,  last_name
    WHERE customer_id = @iv_customer_id
    INTO ( @rs_cust_address-first_name, @rs_cust_address-last_name ).

  ENDMETHOD.

  METHOD zif_lab_03_airports_mb~get_airport.

    SELECT SINGLE FROM /dmo/airport
    FIELDS *
    WHERE airport_id = @iv_airport_id
    INTO @rs_dmo_airport.

  ENDMETHOD.

ENDCLASS.
