CLASS zcl_lab_42_screen_mb DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA screen_type TYPE string.
    METHODS constructor IMPORTING iv_screen_type TYPE string.
    EVENTS touch_screen EXPORTING VALUE(ev_pos_horizontal) TYPE i
                                  VALUE(ev_pos_vertical)   TYPE i.
    METHODS element_selected IMPORTING VALUE(iv_pos_horizontal) TYPE i
                                       VALUE(iv_pos_vertical)   TYPE i.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_42_screen_mb IMPLEMENTATION.
  METHOD element_selected.
    RAISE EVENT  touch_screen EXPORTING ev_pos_horizontal = iv_pos_horizontal ev_pos_vertical = iv_pos_vertical.
  ENDMETHOD.
  METHOD constructor.
    me->screen_type = iv_screen_type.
  ENDMETHOD.

ENDCLASS.
