CLASS zcl_doc_check_decorator DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES zif_print.
    METHODS constructor
      IMPORTING
        io_delegate TYPE REF TO zif_print.

  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA:
      mo_delegate TYPE REF TO zif_print.

ENDCLASS.



CLASS zcl_doc_check_decorator IMPLEMENTATION.

  METHOD constructor.
    me->mo_delegate = io_delegate.
  ENDMETHOD.

  METHOD zif_print~print.
    WRITE |Декоратор дополнительные проверки|.
    NEW-LINE.
    mo_delegate->print( ).
  ENDMETHOD.

ENDCLASS.
