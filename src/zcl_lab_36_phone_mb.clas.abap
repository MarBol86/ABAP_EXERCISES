CLASS zcl_lab_36_phone_mb DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS constructor IMPORTING io_screen TYPE REF TO zcl_lab_37_screen_mb.
    METHODS get_screen_type RETURNING VALUE(ro_screen_type) TYPE REF TO zcl_lab_37_screen_mb.
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA screen TYPE REF TO zcl_lab_37_screen_mb.
ENDCLASS.



CLASS zcl_lab_36_phone_mb IMPLEMENTATION.
  METHOD constructor.
    me->screen = io_screen.
  ENDMETHOD.

  METHOD get_screen_type.
    ro_screen_type = me->screen.
  ENDMETHOD.

ENDCLASS.
