INTERFACE yif_ecb_converter
  PUBLIC .


  METHODS can_convert_object
    IMPORTING
      !io_object TYPE REF TO object
    RAISING
      ycx_ecb .
  METHODS create_fieldcatalog
    IMPORTING
      !is_option       TYPE yecb_s_converter_option
      !io_object       TYPE REF TO object
      !it_table        TYPE STANDARD TABLE
    EXPORTING
      !es_layout       TYPE yecb_s_converter_layo
      !et_fieldcatalog TYPE yecb_t_converter_fcat
      !eo_table        TYPE REF TO data
      !et_colors       TYPE yecb_t_converter_col
      !et_filter       TYPE yecb_t_converter_fil
    RAISING
      ycx_ecb .

   METHODS get_supported_class
     RETURNING VALUE(rv_supported_class) TYPE seoclsname.
ENDINTERFACE.
