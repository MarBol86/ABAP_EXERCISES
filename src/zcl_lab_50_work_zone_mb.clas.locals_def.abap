*"* use this source file for any type of declarations (class
*"* definitions, interfaces or type declarations) you need for
*"* components in the private section

TYPES: BEGIN OF ty_work_zone,
         lAUNCHPAD TYPE string,
         dashboard TYPE string,
         spaces    TYPE string,
       END OF ty_work_zone.

CLASS lcl_helper DEFINITION .

  PUBLIC SECTION.
    DATA: ms_work_zone TYPE ty_work_zone.
    METHODS constructor.
    METHODS  get_work_zone RETURNING VALUE(rs_workzone) TYPE ty_work_zone.
  PROTECTED SECTION.
  PRIVATE SECTION.

ENDCLASS.
