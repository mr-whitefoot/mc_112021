CLASS zcl_document DEFINITION
  PUBLIC
  CREATE PUBLIC
  ABSTRACT.

  PUBLIC SECTION.
    METHODS print.
    METHODS set_status.
    METHODS create.


  PROTECTED SECTION.
    METHODS get_data ABSTRACT
      RETURNING VALUE(rv_data) TYPE string.

ENDCLASS.



CLASS zcl_document IMPLEMENTATION.


  METHOD create.
    WRITE |Создание { me->get_data(  ) }|.
    NEW-LINE.

  ENDMETHOD.


  METHOD print.
    WRITE |Печать документа { me->get_data(  ) }|.
    NEW-LINE.
  ENDMETHOD.


  METHOD set_status.
    WRITE |Установка статуса { me->get_data(  ) }|.
    NEW-LINE.

  ENDMETHOD.
ENDCLASS.
