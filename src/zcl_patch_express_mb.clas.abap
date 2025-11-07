CLASS zcl_patch_express_mb DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_patch_express_mb IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    SELECT FROM zcds_public_assoc_mb
    FIELDS AgencyId,
    TravelId,
    \_Agency-Name
    WHERE AgencyId = '070032'
    INTO TABLE @DATA(lt_result)
    UP TO 10 ROWS.
    IF sy-subrc EQ 0.
      out->write( lt_result ).
    ENDIF.
  ENDMETHOD.
ENDCLASS.
