CLASS zcl_lab_45_chrome_mb DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA log TYPE string.
    METHODS on_close_window FOR EVENT close_window OF zif_lab_05_browser_mb IMPORTING sender.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_45_chrome_mb IMPLEMENTATION.
  METHOD on_close_window.

    me->log = |{ log } The windows has closed ---> |.
  ENDMETHOD.

ENDCLASS.
