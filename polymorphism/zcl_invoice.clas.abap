CLASS zcl_invoice DEFINITION
  PUBLIC
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES zif_print.

  PROTECTED SECTION.


  PRIVATE SECTION.

ENDCLASS.



CLASS zcl_invoice IMPLEMENTATION.
  METHOD zif_print~print.
    WRITE 'Печать счет фактуры'.
    NEW-LINE.
  ENDMETHOD.
ENDCLASS.