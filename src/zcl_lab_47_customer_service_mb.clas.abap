CLASS zcl_lab_47_customer_service_mb DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    CLASS-DATA mt_numbers TYPE TABLE OF string.
    CLASS-METHODS on_new_call FOR EVENT new_call OF zcl_lab_46_mobile_operator_mb IMPORTING ev_phone_number.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_47_customer_service_mb IMPLEMENTATION.
  METHOD on_new_call.
    APPEND ev_phone_number TO mt_numbers.
  ENDMETHOD.

ENDCLASS.
