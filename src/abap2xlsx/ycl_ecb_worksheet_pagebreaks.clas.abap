CLASS ycl_ecb_worksheet_pagebreaks DEFINITION
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.

    TYPES:
      BEGIN OF ts_pagebreak_at ,
        cell_row    TYPE yecb_cell_row,
        cell_column TYPE yecb_cell_column,
      END OF ts_pagebreak_at .
    TYPES:
      tt_pagebreak_at TYPE HASHED TABLE OF  ts_pagebreak_at WITH UNIQUE KEY cell_row cell_column .

    METHODS add_pagebreak
      IMPORTING
        !ip_column TYPE simple
        !ip_row    TYPE yecb_cell_row
      RAISING
        ycx_ecb .
    METHODS get_all_pagebreaks
      RETURNING
        VALUE(rt_pagebreaks) TYPE tt_pagebreak_at .
  PROTECTED SECTION.

    DATA mt_pagebreaks TYPE tt_pagebreak_at .
  PRIVATE SECTION.
ENDCLASS.



CLASS ycl_ecb_worksheet_pagebreaks IMPLEMENTATION.


  METHOD add_pagebreak.
    DATA: ls_pagebreak      LIKE LINE OF me->mt_pagebreaks.

    ls_pagebreak-cell_row    = ip_row.
    ls_pagebreak-cell_column = ycl_ecb_common=>convert_column2int( ip_column ).

    INSERT ls_pagebreak INTO TABLE me->mt_pagebreaks.


  ENDMETHOD.


  METHOD get_all_pagebreaks.
    rt_pagebreaks = me->mt_pagebreaks.
  ENDMETHOD.
ENDCLASS.
