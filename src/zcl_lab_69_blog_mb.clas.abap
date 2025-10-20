CLASS zcl_lab_69_blog_mb DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    TYPES: BEGIN OF ty_log,
             title TYPE string,
             body  TYPE string,
           END OF ty_log.
    METHODS: create_log IMPORTING iv_log TYPE ty_log.
    METHODS: get_title RETURNING VALUE(rv_title) TYPE string.
    EVENTS new_article EXPORTING VALUE(ev_title) TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA: ms_log TYPE  ty_log.
ENDCLASS.

CLASS zcl_lab_69_blog_mb IMPLEMENTATION.

  METHOD create_log.
    me->ms_log-title = iv_log-title.
    me->ms_log-body = iv_log-body.
    RAISE EVENT new_article
      EXPORTING
        ev_title = me->ms_log-title .
  ENDMETHOD.

  METHOD get_title.
    rv_title = ms_log-title.
  ENDMETHOD.

ENDCLASS.
