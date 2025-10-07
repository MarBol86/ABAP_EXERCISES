INTERFACE zif_lab_03_airports_mb
  PUBLIC .
  METHODS get_airport IMPORTING iv_airport_id         TYPE string
                       RETURNING VALUE(rs_dmo_airport) TYPE /dmo/airport.
ENDINTERFACE.
