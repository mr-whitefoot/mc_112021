*&---------------------------------------------------------------------*
*& Report zmc_template_method_run
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zmc_template_method_run.
CLASS demo DEFINITION.
  PUBLIC SECTION.
    CLASS-METHODS main.

  PRIVATE SECTION.

ENDCLASS.

CLASS demo IMPLEMENTATION.
  METHOD main.
    DATA(lo_template_method1) = NEW zcl_template_method_1( ).
    lo_template_method1->execute( ).

    DATA(lo_template_method2) = NEW zcl_template_method_2( ).
    lo_template_method2->execute( ).

  ENDMETHOD.
ENDCLASS.

START-OF-SELECTION.
  demo=>main( ).
