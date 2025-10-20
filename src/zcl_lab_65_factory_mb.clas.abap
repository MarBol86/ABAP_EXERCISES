CLASS zcl_lab_65_factory_mb DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS create_file IMPORTING iv_file        TYPE string
                        RETURNING VALUE(ro_file) TYPE REF TO zif_lab_06_file_mb.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_65_factory_mb IMPLEMENTATION.
  METHOD create_file.
    CASE iv_file.
      WHEN 'WORK FILE'.
        ro_file = NEW zcl_lab_63_work_file_mb( ).
      WHEN 'SUPPLY FILE'.
        ro_file = NEW zcl_lab_64_supply_file_mb( ).
    ENDCASE.
  ENDMETHOD.

ENDCLASS.
