CLASS zcl_lab_01_ejec_mb DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.








CLASS zcl_lab_01_ejec_mb IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    DATA(lo_collaborator) = NEW zcl_lab_25_collaborator(  ).
    out->write( lo_collaborator->get_company_capital(  ) ).
    out->write( lo_collaborator->get_company_capital(  ) ).

  ENDMETHOD.

ENDCLASS.
