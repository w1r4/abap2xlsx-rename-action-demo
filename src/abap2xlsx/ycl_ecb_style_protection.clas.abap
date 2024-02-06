CLASS ycl_ecb_style_protection DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

*"* public components of class ZCL_EXCEL_STYLE_PROTECTION
*"* do not include other source files here!!!
  PUBLIC SECTION.

    CONSTANTS c_protection_hidden TYPE yecb_cell_protection VALUE '1'. "#EC NOTEXT
    CONSTANTS c_protection_locked TYPE yecb_cell_protection VALUE '1'. "#EC NOTEXT
    CONSTANTS c_protection_unhidden TYPE yecb_cell_protection VALUE '0'. "#EC NOTEXT
    CONSTANTS c_protection_unlocked TYPE yecb_cell_protection VALUE '0'. "#EC NOTEXT
    DATA hidden TYPE yecb_cell_protection .
    DATA locked TYPE yecb_cell_protection .

    METHODS constructor .
    METHODS get_structure
      RETURNING
        VALUE(ep_protection) TYPE yecb_s_style_protection .
*"* protected components of class ZABAP_EXCEL_STYLE_FONT
*"* do not include other source files here!!!
*"* protected components of class ZABAP_EXCEL_STYLE_FONT
*"* do not include other source files here!!!
  PROTECTED SECTION.
*"* private components of class ZCL_EXCEL_STYLE_PROTECTION
*"* do not include other source files here!!!
  PRIVATE SECTION.
ENDCLASS.



CLASS ycl_ecb_style_protection IMPLEMENTATION.


  METHOD constructor.
    locked = me->c_protection_locked.
    hidden = me->c_protection_unhidden.
  ENDMETHOD.


  METHOD get_structure.
    ep_protection-locked = me->locked.
    ep_protection-hidden = me->hidden.
  ENDMETHOD.
ENDCLASS.
