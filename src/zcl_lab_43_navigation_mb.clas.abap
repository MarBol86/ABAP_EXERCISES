CLASS zcl_lab_43_navigation_mb DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA log TYPE string.
    METHODS on_touch_screen FOR EVENT touch_screen OF zcl_lab_42_screen_mb
      IMPORTING ev_pos_horizontal ev_pos_vertical sender.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_43_navigation_mb IMPLEMENTATION.
  METHOD on_touch_screen.
    me->log = |{ me->log } SCREEN TYPE: { sender->screen_type } - Pos. horizontal: { ev_pos_horizontal } - Pos. Vertical: { ev_pos_vertical } --->  |.

  ENDMETHOD.

ENDCLASS.
