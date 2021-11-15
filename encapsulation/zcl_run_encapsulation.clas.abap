CLASS zcl_run_encapsulation DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_run_encapsulation IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

    DATA(lo_encapsulation) = NEW zcl_oop_encapsulation( iv_data = 900 ).


    lo_encapsulation->add_to_data(  ). " mv_data = 600
    "....

    "....
    lo_encapsulation->add_to_data(  ). " mv_data = 700?


    data(lv_text) = |{ lo_encapsulation->get_data( ) } { lo_encapsulation->get_uom( ) }|.
    out->write( lv_text ).

  ENDMETHOD.

ENDCLASS.
