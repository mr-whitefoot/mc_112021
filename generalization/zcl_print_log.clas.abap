class ZCL_PRINT_LOG definition
  public
  final
  create public .

public section.

  interfaces ZIF_PRINT .

  methods CONSTRUCTOR
    importing
      !IV_DELEGAT type ref to ZIF_PRINT .
protected section.
private section.

  data MO_DELEGAT type ref to ZIF_PRINT .
ENDCLASS.



CLASS ZCL_PRINT_LOG IMPLEMENTATION.


  method CONSTRUCTOR.
    mo_delegat = iv_delegat.
  endmethod.


  method ZIF_PRINT~PRINT.
    write 'Запись в журнал'.
    new-LINE.
    mo_delegat->print( ).
  endmethod.
ENDCLASS.
