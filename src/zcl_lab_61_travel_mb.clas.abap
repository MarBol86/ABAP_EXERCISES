CLASS zcl_lab_61_travel_mb DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS get_travel EXPORTING es_travel TYPE /dmo/flight .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_61_travel_mb IMPLEMENTATION.
  METHOD get_travel.
    DATA lv_carrier_id TYPE /dmo/carrier_id VALUE 'SQ'.
    DATA ls_travel TYPE /dmo/flight.

    SELECT SINGLE FROM /dmo/flight
    FIELDS *
    WHERE carrier_id = @lv_carrier_id
    INTO @es_travel.

    TEST-SEAM select_data.

      SELECT SINGLE FROM /dmo/flight
        FIELDS *
        WHERE carrier_id =  @lv_carrier_id
        INTO @ls_travel. "Cambio donde guardo la data en el test.

      IF LV_carrier_id =  'UA'.
        es_travel = CORRESPONDING #( ls_travel ).
      ENDIF.

    END-TEST-SEAM.
  ENDMETHOD.

ENDCLASS.
