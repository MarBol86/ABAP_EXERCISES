CLASS zcl_lab_68_package_b_mb DEFINITION INHERITING FROM zcl_lab_66_travel_mb
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: transport_oneway REDEFINITION,
      day_one REDEFINITION,
      day_two REDEFINITION,
      day_three REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_68_package_b_mb IMPLEMENTATION.
  METHOD day_one.
    io_out->write( |day_one - Pachage B | ).
  ENDMETHOD.

  METHOD day_three.
    io_out->write( |day_three - Pachage B | ).

  ENDMETHOD.

  METHOD day_two.
    io_out->write( |day_two - Pachage B | ).

  ENDMETHOD.

  METHOD transport_oneway.
    io_out->write( |transport_oneway - Pachage B | ).
  ENDMETHOD.

ENDCLASS.
