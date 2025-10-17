CLASS zcl_lab_51_wz_friend_mb DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS get_helper.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_51_wz_friend_mb IMPLEMENTATION.
  METHOD get_helper.
    DATA(lo_helper) = NEW zcl_lab_50_work_zone_mb(  ). "Intanciamos a la clase que le dió la amistad
    "Accedemos al atributo privado del TYPE REF TO clase local
    "Y de ahí al método de la clase local
    lo_helper->mo_helper->get_work_zone( RECEIVING rs_workzone = DATA(ls_workzone) ).

  ENDMETHOD.

ENDCLASS.
