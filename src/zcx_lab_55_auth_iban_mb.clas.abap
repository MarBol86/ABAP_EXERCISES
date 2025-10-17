CLASS zcx_lab_55_auth_iban_mb DEFINITION
  PUBLIC
  INHERITING FROM cx_static_check
  FINAL  CREATE PUBLIC.

  PUBLIC SECTION.

    INTERFACES if_t100_message .
    INTERFACES if_t100_dyn_msg .

    CONSTANTS:
      BEGIN OF  no_transfer,
        msgid TYPE symsgid VALUE 'ZMC_LAB_MB', "
        msgno TYPE symsgno VALUE '003',
        attr1 TYPE scx_attrname VALUE 'MV_MSG1',
        attr2 TYPE scx_attrname VALUE 'MV_MSG2',
        attr3 TYPE scx_attrname VALUE 'MV_MSG3',
        attr4 TYPE scx_attrname VALUE 'MV_MSG4',
      END OF  no_transfer.

    DATA: mv_msg1 TYPE msgv1. "Creo 4 porque si bien por ahora no se usan
    DATA: mv_msg2 TYPE msgv2. "Es el máximo permitido por mensaje
    DATA: mv_msg3 TYPE msgv3.
    DATA: mv_msg4 TYPE msgv4.


    METHODS constructor
      IMPORTING
        !textid   LIKE if_t100_message=>t100key OPTIONAL
        !previous LIKE previous OPTIONAL
        iv_msg1   TYPE msgv1 OPTIONAL
        iv_msg2   TYPE msgv2 OPTIONAL
        iv_msg3   TYPE msgv3 OPTIONAL
        iv_msg4   TYPE msgv4 OPTIONAL.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcx_lab_55_auth_iban_mb IMPLEMENTATION.

  METHOD constructor ##ADT_SUPPRESS_GENERATION.
    super->constructor(
    previous = previous
    ).
    CLEAR me->textid.
    IF textid IS INITIAL.
      if_t100_message~t100key = if_t100_message=>default_textid.
    ELSE.
      if_t100_message~t100key = textid.
    ENDIF.
    me->mv_msg1 = iv_msg1.
    me->mv_msg2 = iv_msg2.
    me->mv_msg3 = iv_msg3.
    me->mv_msg4 = iv_msg4.
  ENDMETHOD.
ENDCLASS.
