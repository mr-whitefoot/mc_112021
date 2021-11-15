class ZCL_ADD_FUNC_DECOR definition
  public
  final
  create public .

public section.

  interfaces ZIF_PRINT .

  methods CONSTRUCTOR
    importing
      !IO_DELEGATE type ref to ZIF_PRINT .
protected section.
private section.

  data MO_DELEGATE type ref to ZIF_PRINT .
ENDCLASS.



CLASS ZCL_ADD_FUNC_DECOR IMPLEMENTATION.


  method CONSTRUCTOR.
    mo_delegate = io_delegate.
  endmethod.


  METHOD zif_print~print.
    WRITE 'Дополнительная функциональность'.
    NEW-LINE.
    mo_delegate->print( ).
  ENDMETHOD.
ENDCLASS.
