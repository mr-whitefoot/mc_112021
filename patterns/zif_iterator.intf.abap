INTERFACE zif_iterator
  PUBLIC .
  METHODS has_next RETURNING VALUE(rv_ok) TYPE abap_bool.
  METHODS get_next RETURNING VALUE(ro_object) TYPE REF TO object.

ENDINTERFACE.
