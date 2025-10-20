CLASS zcl_lab_75_controller DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS set_model IMPORTING io_model TYPE REF TO zcl_lab_73_model_mb.
    METHODS get_model RETURNING VALUE(ro_model) TYPE REF TO zcl_lab_73_model_mb.

    METHODS set_view IMPORTING io_view TYPE REF TO zcl_lab_74_view_mb.
    METHODS get_view RETURNING VALUE(ro_view) TYPE REF TO zcl_lab_74_view_mb.

    DATA: model TYPE REF TO zcl_lab_73_model_mb,
          view  TYPE REF TO zcl_lab_74_view_mb.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_75_controller IMPLEMENTATION.
  METHOD get_model.
    ro_model = me->model.
  ENDMETHOD.

  METHOD get_view.
    ro_view = me->view.
  ENDMETHOD.

  METHOD set_model.
    me->model = io_model.
  ENDMETHOD.

  METHOD set_view.
    me->view = io_view.
  ENDMETHOD.

ENDCLASS.
