CLASS zcl_document_composite DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS add IMPORTING io_component type ref to zif_print.

    INTERFACES zif_print.

  PRIVATE SECTION.
    data:
     mt_data type STANDARD TABLE OF ref to zif_print.




ENDCLASS.



CLASS zcl_document_composite IMPLEMENTATION.
  METHOD add.
   append io_component to mt_data.
  ENDMETHOD.

  METHOD zif_print~print.
    loop at mt_data
      into data(lo_component).
      lo_component->print( ).
    ENDLOOP.
  ENDMETHOD.

ENDCLASS.
