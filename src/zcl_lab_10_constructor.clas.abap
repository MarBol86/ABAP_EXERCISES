CLASS zcl_lab_10_constructor DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    CLASS-DATA: log TYPE string.
    CLASS-METHODS class_constructor.
    METHODS constructor.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_10_constructor IMPLEMENTATION.
  METHOD class_constructor.
    zcl_lab_10_constructor=>log = |{ log } Constructor estático -->|.
  ENDMETHOD.

  METHOD constructor.
    zcl_lab_10_constructor=>log = |{ log } Constructor de instancia -->|.
  ENDMETHOD.

ENDCLASS.
