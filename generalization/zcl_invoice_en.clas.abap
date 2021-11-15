CLASS zcl_invoice_en DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC
  INHERITING FROM zcl_invoice.

  PUBLIC SECTION.
    METHODS zif_print~print REDEFINITION.


  PROTECTED SECTION.

  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_invoice_en IMPLEMENTATION.
  METHOD zif_print~print.
    WRITE 'Print EN Invoice'.
    NEW-LINE.
  ENDMETHOD.

ENDCLASS.
