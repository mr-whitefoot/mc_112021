class ZCL_REQUEST definition
  public
  final
  create public .

public section.

  methods PRINT_OLD .
protected section.
private section.
ENDCLASS.



CLASS ZCL_REQUEST IMPLEMENTATION.


  METHOD print_old.
    WRITE 'Печать заявки'.
    NEW-LINE.
  ENDMETHOD.
ENDCLASS.
