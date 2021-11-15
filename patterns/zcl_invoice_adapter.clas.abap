CLASS zcl_invoice_adapter DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES zif_print.

    METHODS constructor.


  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA:
      mo_invoice TYPE REF TO zcl_invoice.
ENDCLASS.



CLASS zcl_invoice_adapter IMPLEMENTATION.
  METHOD zif_print~print.
    mo_invoice->print_invoice( ).
  ENDMETHOD.

  METHOD constructor.
    mo_invoice = NEW zcl_invoice( ).
  ENDMETHOD.

ENDCLASS.
