CLASS zcl_lab_44_operating_system DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES zif_lab_05_browser_mb.
    METHODS mouse_movement RETURNING VALUE(rv_log) TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_44_operating_system IMPLEMENTATION.
  METHOD mouse_movement.
    RAISE EVENT  zif_lab_05_browser_mb~close_window.
    rv_log = 'Call Method mouse_movement'.
  ENDMETHOD.

ENDCLASS.
