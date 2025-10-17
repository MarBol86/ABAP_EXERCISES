CLASS zcl_lab_53_check_user_mb DEFINITION
  PUBLIC FINAL  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS check_user IMPORTING iv_user TYPE syuname
                       RAISING   zcx_lab_52_operations_mb.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_53_check_user_mb IMPLEMENTATION.
  METHOD check_user.
    IF iv_user EQ 'SAP'.
      RAISE EXCEPTION TYPE zcx_lab_52_operations_mb
        EXPORTING
          textid  = zcx_lab_52_operations_mb=>no_access
          iv_msg1 = |{ iv_user }|.
    ENDIF.
  ENDMETHOD.

ENDCLASS.
