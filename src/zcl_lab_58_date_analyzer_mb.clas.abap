CLASS zcl_lab_58_date_analyzer_mb DEFINITION
  PUBLIC FINAL CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS analyze_date IMPORTING io_previos TYPE REF TO cx_root OPTIONAL
                         RAISING   zcx_lab_56_no_date_mb.
    METHODS analyze_format IMPORTING io_previos TYPE REF TO cx_root OPTIONAL
                           RAISING   zcx_lab_57_format_unknown_mb.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_58_date_analyzer_mb IMPLEMENTATION.
  METHOD analyze_date.
    RAISE EXCEPTION TYPE zcx_lab_56_no_date_mb
      EXPORTING
        previous = io_previos.
  ENDMETHOD.

  METHOD analyze_format.
    RAISE EXCEPTION TYPE zcx_lab_57_format_unknown_mb
      EXPORTING
        previous = io_previos.
  ENDMETHOD.

ENDCLASS.
