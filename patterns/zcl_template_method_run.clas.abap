CLASS zcl_template_method_run DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_template_method_run IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

    data(lo_template_method1) = new zcl_template_method_1( ).
    lo_template_method1->execute( ).
  ENDMETHOD.

ENDCLASS.
