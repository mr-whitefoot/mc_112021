CLASS zcl_document_default_iterator DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES zif_iterator.

    METHODS constructor IMPORTING it_data TYPE zcl_document_list=>mty_t_data.

  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA:
      mt_data  TYPE zcl_document_list=>mty_t_data,
      mv_index TYPE sy-tabix.
ENDCLASS.



CLASS zcl_document_default_iterator IMPLEMENTATION.
  METHOD zif_iterator~get_next.
     READ TABLE mt_data
      ASSIGNING FIELD-SYMBOL(<ls_data>)
      INDEX mv_index.

      ro_object = <ls_data>-object.
      add 1 to mv_index.
  ENDMETHOD.

  METHOD zif_iterator~has_next.
    READ TABLE mt_data
      TRANSPORTING NO FIELDS
      INDEX mv_index.

    rv_ok = boolc( sy-subrc eq 0 ).
  ENDMETHOD.

  METHOD constructor.
    mt_data = it_data.
    mv_index = 1.
  ENDMETHOD.

ENDCLASS.
