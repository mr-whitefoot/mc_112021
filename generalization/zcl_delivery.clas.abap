CLASS zcl_delivery DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES zif_print.


  PROTECTED SECTION.


  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_DELIVERY IMPLEMENTATION.
  METHOD zif_print~print.
    WRITE 'Печать поставки'.
    NEW-LINE.
  ENDMETHOD.
ENDCLASS.
