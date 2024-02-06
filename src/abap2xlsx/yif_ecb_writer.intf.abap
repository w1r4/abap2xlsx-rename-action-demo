INTERFACE yif_ecb_writer
  PUBLIC .


  METHODS write_file
    IMPORTING
      !io_excel      TYPE REF TO ycl_ecb
    RETURNING
      VALUE(ep_file) TYPE xstring
    RAISING
      ycx_ecb.
ENDINTERFACE.
