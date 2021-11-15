*&---------------------------------------------------------------------*
*& Report zdemo_generalization
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zdemo_generalization.

CLASS demo DEFINITION.
  PUBLIC SECTION.
    CLASS-METHODS main.

    CLASS-METHODS execute_print IMPORTING io_print TYPE REF TO zif_print.
ENDCLASS.

CLASS demo IMPLEMENTATION.
  METHOD main.



    DATA(lo_composite) = NEW zcl_document_composite( ).
    DATA(lo_composite_2) = NEW zcl_document_composite( ).
    DATA(lo_composite_all) = NEW zcl_document_composite( ).



    DATA(lo_deliv) = zcl_document_factory=>create_document( zcl_document_factory=>mc_documents-delivery_auth ).
    DATA(lo_log) = NEW zcl_print_log( iv_delegat = lo_deliv ).
    DATA(lo_delivery) = NEW zcl_add_func_decor( lo_log ).

    lo_composite->add( io_component = lo_delivery ).
    DATA(lo_order) = zcl_document_factory=>create_document( zcl_document_factory=>mc_documents-order ).
    lo_composite->add( lo_order ).

    DATA(lo_log_decor_composite)  = NEW zcl_print_log( iv_delegat = lo_composite_2 ).
    DATA(lo_invoice) = zcl_document_factory=>create_document( zcl_document_factory=>mc_documents-invoice ).
    lo_composite_2->add( lo_invoice ).
    DATA(lo_delivery1) = zcl_document_factory=>create_document( zcl_document_factory=>mc_documents-delivery ).
    lo_composite_2->add( lo_delivery1 ).


    lo_composite_all->add( lo_composite ).
    lo_composite_all->add( lo_log_decor_composite ).
    lo_composite_all->add( zcl_document_factory=>create_document( zcl_document_factory=>mc_documents-en_invoice ) ).
    DATA(lo_request) = zcl_document_factory=>create_document( zcl_document_factory=>mc_documents-request ).
    lo_composite_all->add( lo_request ).



    execute_print( lo_composite_all ).

  ENDMETHOD.

  METHOD execute_print.
    io_print->print( ).
  ENDMETHOD.

ENDCLASS.

START-OF-SELECTION.
  demo=>main( ).
