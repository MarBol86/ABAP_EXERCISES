CLASS zcl_lab_37_screen_mb DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: set_screen_type IMPORTING iv_screen_t TYPE string,
      get_screen RETURNING VALUE(rv_screen_t) TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA: screen_type TYPE string.
ENDCLASS.

CLASS zcl_lab_37_screen_mb IMPLEMENTATION.
  METHOD set_screen_type.
    me->screen_type = iv_screen_t.
  ENDMETHOD.

  METHOD get_screen.
    rv_screen_t = me->screen_type.
  ENDMETHOD.

ENDCLASS.
