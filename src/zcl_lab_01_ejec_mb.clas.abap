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

    DATA go_object TYPE REF TO object.

    go_object = NEW zcl_lab_41_organization_mb(  ).

    DATA(lv_method) = 'SET_HEADQUARTERS'.

    DATA(lv_headquarters) = | Valor |.
    CALL METHOD go_object->(lv_method) EXPORTING iv_headquarters = lv_headquarters.

    CLEAR: lv_headquarters.
    lv_method = 'GET_HEADQUARTERS'.
    CALL METHOD go_object->(lv_method) RECEIVING rv_headquarters = lv_headquarters.
    out->write( lv_headquarters ).

  ENDMETHOD.

ENDCLASS.
