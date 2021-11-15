*&---------------------------------------------------------------------*
*& Report zdemo_polymorphism
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zdemo_polymorphism.
CLASS demo DEFINITION.
  PUBLIC SECTION.
    CLASS-METHODS main.
ENDCLASS.

CLASS demo IMPLEMENTATION.
  METHOD main.
    DATA:
      lo_document TYPE REF TO zcl_document.
    "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    lo_document = NEW zcl_delivery( ).
    lo_document->print( ).

    lo_document = NEW zcl_order( ).
    lo_document->print( ).

  ENDMETHOD.

ENDCLASS.

START-OF-SELECTION.
  demo=>main( ).
