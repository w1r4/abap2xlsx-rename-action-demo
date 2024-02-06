CLASS ycl_ecb_style_color DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

*"* public components of class ZCL_EXCEL_STYLE_COLOR
*"* do not include other source files here!!!
    CONSTANTS c_black TYPE yecb_style_color_argb VALUE 'FF000000'. "#EC NOTEXT
    CONSTANTS c_blue TYPE yecb_style_color_argb VALUE 'FF0000FF'. "#EC NOTEXT
    CONSTANTS c_darkblue TYPE yecb_style_color_argb VALUE 'FF000080'. "#EC NOTEXT
    CONSTANTS c_darkgreen TYPE yecb_style_color_argb VALUE 'FF008000'. "#EC NOTEXT
    CONSTANTS c_darkred TYPE yecb_style_color_argb VALUE 'FF800000'. "#EC NOTEXT
    CONSTANTS c_darkyellow TYPE yecb_style_color_argb VALUE 'FF808000'. "#EC NOTEXT
    CONSTANTS c_gray TYPE yecb_style_color_argb VALUE 'FFCCCCCC'. "#EC NOTEXT
    CONSTANTS c_green TYPE yecb_style_color_argb VALUE 'FF00FF00'. "#EC NOTEXT
    CONSTANTS c_red TYPE yecb_style_color_argb VALUE 'FFFF0000'. "#EC NOTEXT
    CONSTANTS c_white TYPE yecb_style_color_argb VALUE 'FFFFFFFF'. "#EC NOTEXT
    CONSTANTS c_yellow TYPE yecb_style_color_argb VALUE 'FFFFFF00'. "#EC NOTEXT
    CONSTANTS c_theme_dark1 TYPE yecb_style_color_theme VALUE 0. "#EC NOTEXT
    CONSTANTS c_theme_light1 TYPE yecb_style_color_theme VALUE 1. "#EC NOTEXT
    CONSTANTS c_theme_dark2 TYPE yecb_style_color_theme VALUE 2. "#EC NOTEXT
    CONSTANTS c_theme_light2 TYPE yecb_style_color_theme VALUE 3. "#EC NOTEXT
    CONSTANTS c_theme_accent1 TYPE yecb_style_color_theme VALUE 4. "#EC NOTEXT
    CONSTANTS c_theme_accent2 TYPE yecb_style_color_theme VALUE 5. "#EC NOTEXT
    CONSTANTS c_theme_accent3 TYPE yecb_style_color_theme VALUE 6. "#EC NOTEXT
    CONSTANTS c_theme_accent4 TYPE yecb_style_color_theme VALUE 7. "#EC NOTEXT
    CONSTANTS c_theme_accent5 TYPE yecb_style_color_theme VALUE 8. "#EC NOTEXT
    CONSTANTS c_theme_accent6 TYPE yecb_style_color_theme VALUE 9. "#EC NOTEXT
    CONSTANTS c_theme_hyperlink TYPE yecb_style_color_theme VALUE 10. "#EC NOTEXT
    CONSTANTS c_theme_hyperlink_followed TYPE yecb_style_color_theme VALUE 11. "#EC NOTEXT
    CONSTANTS c_theme_not_set TYPE yecb_style_color_theme VALUE -1. "#EC NOTEXT
    CONSTANTS c_indexed_not_set TYPE yecb_style_color_indexed VALUE -1. "#EC NOTEXT
    CONSTANTS c_indexed_sys_foreground TYPE yecb_style_color_indexed VALUE 64. "#EC NOTEXT

    CLASS-METHODS create_new_argb
      IMPORTING
        !ip_red              TYPE yecb_style_color_component
        !ip_green            TYPE yecb_style_color_component
        !ip_blu              TYPE yecb_style_color_component
      RETURNING
        VALUE(ep_color_argb) TYPE yecb_style_color_argb .
    CLASS-METHODS create_new_arbg_int
      IMPORTING
        !iv_red              TYPE numeric
        !iv_green            TYPE numeric
        !iv_blue             TYPE numeric
      RETURNING
        VALUE(rv_color_argb) TYPE yecb_style_color_argb .
*"* protected components of class ZCL_EXCEL_STYLE_COLOR
*"* do not include other source files here!!!
*"* protected components of class ZCL_EXCEL_STYLE_COLOR
*"* do not include other source files here!!!
  PROTECTED SECTION.
  PRIVATE SECTION.

*"* private components of class ZCL_EXCEL_STYLE_COLOR
*"* do not include other source files here!!!
    CONSTANTS c_alpha TYPE c LENGTH 2 VALUE 'FF'.           "#EC NOTEXT
ENDCLASS.



CLASS ycl_ecb_style_color IMPLEMENTATION.


  METHOD create_new_arbg_int.
    DATA: lv_red        TYPE int1,
          lv_green      TYPE int1,
          lv_blue       TYPE int1,
          lv_hex        TYPE x,
          lv_char_red   TYPE yecb_style_color_component,
          lv_char_green TYPE yecb_style_color_component,
          lv_char_blue  TYPE yecb_style_color_component.

    lv_red    = iv_red MOD 256.
    lv_green  = iv_green MOD 256.
    lv_blue   = iv_blue  MOD 256.

    lv_hex        = lv_red.
    lv_char_red   = lv_hex.

    lv_hex        = lv_green.
    lv_char_green = lv_hex.

    lv_hex        = lv_blue.
    lv_char_blue  = lv_hex.


    CONCATENATE ycl_ecb_style_color=>c_alpha lv_char_red lv_char_green lv_char_blue INTO rv_color_argb.


  ENDMETHOD.


  METHOD create_new_argb.

    CONCATENATE ycl_ecb_style_color=>c_alpha ip_red ip_green ip_blu INTO ep_color_argb.

  ENDMETHOD.
ENDCLASS.
