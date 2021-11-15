CLASS zcl_document_list DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    TYPES: BEGIN OF mty_s_data,
        id     TYPE i,
        object TYPE REF TO zif_print,
      END OF mty_s_data,
           mty_t_data TYPE STANDARD TABLE OF mty_s_data WITH DEFAULT KEY.
    CONSTANTS:
      BEGIN OF mc_iterator_type,
        default TYPE string VALUE 'deafult',
      END OF mc_iterator_type.


    METHODS add IMPORTING iv_id     TYPE i OPTIONAL
                          io_object TYPE REF TO zif_print.
    METHODS get_iterator IMPORTING iv_type            TYPE string
                         RETURNING VALUE(ro_iterator) TYPE REF TO zif_iterator
                         RAISING   cx_no_data_found.

  PROTECTED SECTION.
  PRIVATE SECTION.


    DATA:
      mt_data TYPE mty_t_data.

ENDCLASS.



CLASS zcl_document_list IMPLEMENTATION.
  METHOD add.
    APPEND VALUE #( id = iv_id object = io_object ) TO mt_data.
  ENDMETHOD.

  METHOD get_iterator.
    CASE iv_type.
      WHEN mc_iterator_type-default.
        ro_iterator = new zcl_document_default_iterator( mt_data ).
      WHEN OTHERS.
        RAISE EXCEPTION TYPE cx_no_data_found.
    ENDCASE.
  ENDMETHOD.

ENDCLASS.
