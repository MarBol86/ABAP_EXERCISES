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

    DATA(lo_date) = NEW zcl_lab_58_date_analyzer_mb(  ).

    TRY.
        lo_date->analyze_date( ).
      CATCH zcx_lab_56_no_date_mb INTO DATA(lx_date).
        TRY.
            lo_date->analyze_format( io_previos = lx_date  ).
          CATCH zcx_lab_57_format_unknown_mb INTO DATA(lx_format).
            IF lx_format->previous IS BOUND.
              out->write( | { lx_format->previous->get_text( ) } | ).
            ENDIF.
        ENDTRY.
    ENDTRY.

  ENDMETHOD.
ENDCLASS.
