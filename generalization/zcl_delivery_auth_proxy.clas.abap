class ZCL_DELIVERY_AUTH_PROXY definition
  public
  final
  create public .

public section.

  interfaces ZIF_PRINT .

  methods CONSTRUCTOR .
protected section.
private section.

  data MO_DELEGATE type ref to ZIF_PRINT .
ENDCLASS.



CLASS ZCL_DELIVERY_AUTH_PROXY IMPLEMENTATION.


  METHOD constructor.
    mo_delegate = zcl_document_factory=>create_document( iv_doc_type = zcl_document_factory=>mc_documents-delivery ).
  ENDMETHOD.


  METHOD zif_print~print.
    WRITE 'Проверка полномочий для поставки до вызова'.
    NEW-LINE.
    mo_delegate->print( ).
    WRITE 'Проверка полномочий для поставки после вызова'.
    NEW-LINE.
  ENDMETHOD.
ENDCLASS.
