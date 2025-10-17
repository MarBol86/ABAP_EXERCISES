*"* use this source file for the definition and implementation of
*"* local helper classes, interface definitions and type
*"* declarations


CLASS lcl_helper IMPLEMENTATION.


  METHOD get_work_zone.
    rs_workzone = me->ms_work_zone.
  ENDMETHOD.

  METHOD constructor.
    me->ms_work_zone-dashboard = 'Constructor'.
  ENDMETHOD.

ENDCLASS.
