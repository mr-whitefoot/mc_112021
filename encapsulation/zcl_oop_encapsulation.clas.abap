CLASS zcl_oop_encapsulation DEFINITION
  PUBLIC FINAL CREATE PUBLIC .

  PUBLIC SECTION.
    TYPES:
      mty_v_data TYPE i.

    TYPES:
      BEGIN OF mty_s_data,
        data TYPE mty_v_data,
        uom  TYPE msehi,
      END OF mty_s_data.


    METHODS:
      constructor IMPORTING iv_data TYPE mty_v_data,
      get_data    RETURNING VALUE(rv_data) TYPE mty_v_data,
      add_to_data,


      get_uom
      IMPORTING iv_params type i
                iv_params2 type i
      RETURNING VALUE(rv_uom) TYPE msehi.

  PROTECTED SECTION.


  PRIVATE SECTION.
    DATA: ms_data TYPE mty_s_data.


ENDCLASS.



CLASS ZCL_OOP_ENCAPSULATION IMPLEMENTATION.


  METHOD add_to_data.
    IF ms_data-data >= 1000.
      CLEAR ms_data-data.
    ENDIF.

    ADD 100 TO ms_data-data.
  ENDMETHOD.


  METHOD constructor.
    me->ms_data-data = iv_data.
    ms_data-uom = 'KG'.
  ENDMETHOD.


  METHOD get_data.
    rv_data = ms_data-data.
  ENDMETHOD.


  METHOD get_uom.
    rv_uom = ms_data-uom.
  ENDMETHOD.
ENDCLASS.
