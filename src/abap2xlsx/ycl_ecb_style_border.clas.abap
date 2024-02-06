CLASS ycl_ecb_style_border DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

*"* public components of class ZCL_EXCEL_STYLE_BORDER
*"* do not include other source files here!!!
    DATA border_style TYPE yecb_border .
    DATA border_color TYPE yecb_s_style_color .
    CONSTANTS c_border_none TYPE yecb_border VALUE 'none'. "#EC NOTEXT
    CONSTANTS c_border_dashdot TYPE yecb_border VALUE 'dashDot'. "#EC NOTEXT
    CONSTANTS c_border_dashdotdot TYPE yecb_border VALUE 'dashDotDot'. "#EC NOTEXT
    CONSTANTS c_border_dashed TYPE yecb_border VALUE 'dashed'. "#EC NOTEXT
    CONSTANTS c_border_dotted TYPE yecb_border VALUE 'dotted'. "#EC NOTEXT
    CONSTANTS c_border_double TYPE yecb_border VALUE 'double'. "#EC NOTEXT
    CONSTANTS c_border_hair TYPE yecb_border VALUE 'hair'. "#EC NOTEXT
    CONSTANTS c_border_medium TYPE yecb_border VALUE 'medium'. "#EC NOTEXT
    CONSTANTS c_border_mediumdashdot TYPE yecb_border VALUE 'mediumDashDot'. "#EC NOTEXT
    CONSTANTS c_border_mediumdashdotdot TYPE yecb_border VALUE 'mediumDashDotDot'. "#EC NOTEXT
    CONSTANTS c_border_mediumdashed TYPE yecb_border VALUE 'mediumDashed'. "#EC NOTEXT
    CONSTANTS c_border_slantdashdot TYPE yecb_border VALUE 'slantDashDot'. "#EC NOTEXT
    CONSTANTS c_border_thick TYPE yecb_border VALUE 'thick'. "#EC NOTEXT
    CONSTANTS c_border_thin TYPE yecb_border VALUE 'thin'. "#EC NOTEXT

    METHODS constructor .
*"* protected components of class ZABAP_EXCEL_STYLE_FONT
*"* do not include other source files here!!!
*"* protected components of class ZABAP_EXCEL_STYLE_FONT
*"* do not include other source files here!!!
  PROTECTED SECTION.
*"* private components of class ZCL_EXCEL_STYLE_BORDER
*"* do not include other source files here!!!
  PRIVATE SECTION.
ENDCLASS.



CLASS ycl_ecb_style_border IMPLEMENTATION.


  METHOD constructor.
    border_style = ycl_ecb_style_border=>c_border_none.
    border_color-theme     = ycl_ecb_style_color=>c_theme_not_set.
    border_color-indexed   = ycl_ecb_style_color=>c_indexed_not_set.
  ENDMETHOD.
ENDCLASS.
