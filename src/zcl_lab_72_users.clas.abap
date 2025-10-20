CLASS zcl_lab_72_users DEFINITION INHERITING FROM zcl_lab_70_observer_mb
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA mv_log TYPE string.
    METHODS: on_modified_state REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_72_users IMPLEMENTATION.
  METHOD on_modified_state.
    mv_log = | { mv_log }{ cl_abap_context_info=>get_system_date( ) }-Title:{ ev_title }-{ cl_abap_char_utilities=>newline }|.

  ENDMETHOD.

ENDCLASS.
