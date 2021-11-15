CLASS zcl_document_factory DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC
  ABSTRACT.

  PUBLIC SECTION.
    CONSTANTS:
      BEGIN OF mc_documents,
        delivery      TYPE string VALUE 'delivery',
        delivery_auth TYPE string VALUE 'delivery_auth',

        order         TYPE string VALUE 'order',
        invoice       TYPE string VALUE 'invoice',
        en_invoice    TYPE string VALUE 'en_invoice',
        request       TYPE string VALUE 'request',
      END OF mc_documents.

    CLASS-METHODS create_document
      IMPORTING iv_doc_type     TYPE string
      RETURNING VALUE(ro_print) TYPE REF TO zif_print
      RAISING   cx_no_data_found.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_DOCUMENT_FACTORY IMPLEMENTATION.


  METHOD create_document.
    CASE iv_doc_type.
      WHEN mc_documents-delivery.
        CREATE OBJECT ro_print TYPE zcl_delivery.
      WHEN mc_documents-order.
        CREATE OBJECT ro_print TYPE zcl_order.
      WHEN mc_documents-invoice.
        CREATE OBJECT ro_print TYPE zcl_invoice.
      WHEN mc_documents-en_invoice.
        CREATE OBJECT ro_print TYPE zcl_invoice_en.
      when mc_documents-request.
        CREATE OBJECT ro_print type zcl_request_adapt.
      when mc_documents-delivery_auth.
        CREATE OBJECT ro_print type zcl_delivery_auth_proxy.
      WHEN OTHERS.
        RAISE EXCEPTION TYPE cx_no_data_found.
    ENDCASE.
  ENDMETHOD.
ENDCLASS.
