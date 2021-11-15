CLASS zcl_invoice_proxy DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES zif_print.
    METHODS constructor.


  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA:
      mo_invoice TYPE REF TO zcl_invoice_adapter.

ENDCLASS.



CLASS zcl_invoice_proxy IMPLEMENTATION.
  METHOD zif_print~print.
    WRITE |Прокси дополнительная функицональность|.
    NEW-LINE.
    mo_invoice->zif_print~print( ).
  ENDMETHOD.

  METHOD constructor.
    mo_invoice = NEW zcl_invoice_adapter( ).
  ENDMETHOD.

ENDCLASS.
