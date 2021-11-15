class ZCL_REQUEST_ADAPT definition
  public
  final
  create public .

public section.

  interfaces ZIF_PRINT .

  methods CONSTRUCTOR .
protected section.
private section.

  data MO_DELEGATE type ref to ZCL_REQUEST .
ENDCLASS.



CLASS ZCL_REQUEST_ADAPT IMPLEMENTATION.


  method CONSTRUCTOR.
    mo_delegate = new zcl_request( ).
  endmethod.


  METHOD zif_print~print.
    mo_delegate->print_old( ).

  ENDMETHOD.
ENDCLASS.
