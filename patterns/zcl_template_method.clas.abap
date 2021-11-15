CLASS zcl_template_method DEFINITION
  PUBLIC
  CREATE PUBLIC
  ABSTRACT.

  PUBLIC SECTION.
    METHODS execute.

  PROTECTED SECTION.
    METHODS step_two ABSTRACT.

  PRIVATE SECTION.
    METHODS step_one.
    METHODS step_three.
ENDCLASS.



CLASS zcl_template_method IMPLEMENTATION.
  METHOD execute.
    me->step_one(  ).
    me->step_two(  ).
    me->step_three(  ).
  ENDMETHOD.


  METHOD step_one.
    WRITE |Шаг один|.
    NEW-LINE.
  ENDMETHOD.


  METHOD step_three.
    WRITE |Шаг три|.
    NEW-LINE.
  ENDMETHOD.

ENDCLASS.
