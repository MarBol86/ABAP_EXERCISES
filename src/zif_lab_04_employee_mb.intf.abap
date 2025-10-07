INTERFACE zif_lab_04_employee_mb
  PUBLIC .
  METHODS: get_employees_count RETURNING VALUE(rv_employees) TYPE i.
ENDINTERFACE.
