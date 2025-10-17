CLASS zcl_lab_50_work_zone_mb DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC
  GLOBAL FRIENDS zcl_lab_51_wz_friend_mb.

  PUBLIC SECTION.
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA ms_work_zone TYPE ty_work_zone.
    METHODS set_work_zone.
ENDCLASS.

CLASS zcl_lab_50_work_zone_mb IMPLEMENTATION.
  METHOD set_work_zone.
    me->ms_work_zone-dashboard = 'dashboard'.
    me->ms_work_zone-launchpad = 'launchpad'.
    me->ms_work_zone-spaces    = 'spaces'.
  ENDMETHOD.

ENDCLASS.
