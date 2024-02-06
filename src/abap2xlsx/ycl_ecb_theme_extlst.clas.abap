CLASS ycl_ecb_theme_extlst DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS load
      IMPORTING
        !io_extlst TYPE REF TO if_ixml_element .
    METHODS build_xml
      IMPORTING
        !io_document TYPE REF TO if_ixml_document .
  PROTECTED SECTION.
  PRIVATE SECTION.

    DATA extlst TYPE REF TO if_ixml_element .
ENDCLASS.



CLASS ycl_ecb_theme_extlst IMPLEMENTATION.


  METHOD build_xml.
    DATA: lo_theme TYPE REF TO if_ixml_element.
    DATA: lo_theme_objdef TYPE REF TO if_ixml_element.
    CHECK io_document IS BOUND.

    lo_theme ?= io_document->get_root_element( ).
    CHECK lo_theme IS BOUND.
    IF extlst IS INITIAL.
      lo_theme_objdef ?= io_document->create_simple_element_ns( prefix = ycl_ecb_theme=>c_theme_prefix
                                                                name   = ycl_ecb_theme=>c_theme_extlst
                                                                parent = lo_theme ).

    ELSE.
      lo_theme->append_child( new_child = extlst ).
    ENDIF.
  ENDMETHOD.                    "build_xml


  METHOD load.
    extlst = ycl_ecb_common=>clone_ixml_with_namespaces( io_extlst ).
  ENDMETHOD.                    "load
ENDCLASS.
