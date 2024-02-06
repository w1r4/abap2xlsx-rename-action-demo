CLASS ycl_ecb_style_font DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
*"* public components of class ZCL_EXCEL_STYLE_FONT
*"* do not include other source files here!!!

    DATA bold TYPE flag .
    DATA color TYPE yecb_s_style_color .
    CONSTANTS c_family_decorative TYPE yecb_style_font_family VALUE 5. "#EC NOTEXT
    CONSTANTS c_family_modern TYPE yecb_style_font_family VALUE 3. "#EC NOTEXT
    CONSTANTS c_family_none TYPE yecb_style_font_family VALUE 0. "#EC NOTEXT
    CONSTANTS c_family_roman TYPE yecb_style_font_family VALUE 1. "#EC NOTEXT
    CONSTANTS c_family_script TYPE yecb_style_font_family VALUE 4. "#EC NOTEXT
    CONSTANTS c_family_swiss TYPE yecb_style_font_family VALUE 2. "#EC NOTEXT
    CONSTANTS c_name_arial TYPE yecb_style_font_name VALUE 'Arial'. "#EC NOTEXT
    CONSTANTS c_name_calibri TYPE yecb_style_font_name VALUE 'Calibri'. "#EC NOTEXT
    CONSTANTS c_name_cambria TYPE yecb_style_font_name VALUE 'Cambria'. "#EC NOTEXT
    CONSTANTS c_name_roman TYPE yecb_style_font_name VALUE 'Times New Roman'. "#EC NOTEXT
    CONSTANTS c_scheme_major TYPE yecb_style_font_scheme VALUE 'major'. "#EC NOTEXT
    CONSTANTS c_scheme_none TYPE yecb_style_font_scheme VALUE ''. "#EC NOTEXT
    CONSTANTS c_scheme_minor TYPE yecb_style_font_scheme VALUE 'minor'. "#EC NOTEXT
    CONSTANTS c_underline_double TYPE yecb_style_font_underline VALUE 'double'. "#EC NOTEXT
    CONSTANTS c_underline_doubleaccounting TYPE yecb_style_font_underline VALUE 'doubleAccounting'. "#EC NOTEXT
    CONSTANTS c_underline_none TYPE yecb_style_font_underline VALUE 'none'. "#EC NOTEXT
    CONSTANTS c_underline_single TYPE yecb_style_font_underline VALUE 'single'. "#EC NOTEXT
    CONSTANTS c_underline_singleaccounting TYPE yecb_style_font_underline VALUE 'singleAccounting'. "#EC NOTEXT
    DATA family TYPE yecb_style_font_family VALUE 2. "#EC NOTEXT .  .  .  .  .  .  .  .  .  .  .  . " .
    DATA italic TYPE flag .
    DATA name TYPE yecb_style_font_name VALUE 'Calibri'. "#EC NOTEXT .  .  .  .  .  .  .  .  .  .  .  . " .
    DATA scheme TYPE yecb_style_font_scheme VALUE 'minor'. "#EC NOTEXT .  .  .  .  .  .  .  .  .  .  .  . " .
    DATA size TYPE yecb_style_font_size VALUE 11. "#EC NOTEXT .  .  .  .  .  .  .  .  .  .  .  . " .
    DATA strikethrough TYPE flag .
    DATA underline TYPE flag .
    DATA underline_mode TYPE yecb_style_font_underline .

    METHODS constructor .
    METHODS get_structure
      RETURNING
        VALUE(es_font) TYPE yecb_s_style_font .
    METHODS calculate_text_width
      IMPORTING
        !i_text        TYPE yecb_cell_value
      RETURNING
        VALUE(r_width) TYPE i .
*"* protected components of class ZCL_EXCEL_STYLE_FONT
*"* do not include other source files here!!!
*"* protected components of class ZCL_EXCEL_STYLE_FONT
*"* do not include other source files here!!!
  PROTECTED SECTION.
  PRIVATE SECTION.
*"* private components of class ZCL_EXCEL_STYLE_FONT
*"* do not include other source files here!!!
ENDCLASS.



CLASS ycl_ecb_style_font IMPLEMENTATION.


  METHOD calculate_text_width.
    " Addition to solve issue #120, contribution by Stefan Schmoecker
    r_width = strlen( i_text ).
    " use scale factor based on default 11
    " ( don't know where defaultsetting is stored currently )
    r_width = r_width * me->size / 11.
  ENDMETHOD.


  METHOD constructor.
    me->color-rgb       = ycl_ecb_style_color=>c_black.
    me->color-theme     = ycl_ecb_style_color=>c_theme_not_set.
    me->color-indexed   = ycl_ecb_style_color=>c_indexed_not_set.
    me->scheme          = ycl_ecb_style_font=>c_scheme_minor.
    me->underline_mode  = ycl_ecb_style_font=>c_underline_single.
  ENDMETHOD.


  METHOD get_structure.

    es_font-bold            = me->bold.
    es_font-italic          = me->italic.
    es_font-underline       = me->underline.
    es_font-underline_mode  = me->underline_mode.
    es_font-strikethrough   = me->strikethrough.
    es_font-size            = me->size.
    es_font-color           = me->color.
    es_font-name            = me->name.
    es_font-family          = me->family.
    es_font-scheme          = me->scheme.

  ENDMETHOD.
ENDCLASS.
