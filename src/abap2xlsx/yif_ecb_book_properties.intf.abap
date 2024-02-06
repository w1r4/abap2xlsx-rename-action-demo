INTERFACE yif_ecb_book_properties
  PUBLIC .

  TYPES tv_excel_appversion TYPE c LENGTH 7.

  DATA creator TYPE yecb_creator .
  DATA lastmodifiedby TYPE yecb_creator .
  DATA created TYPE timestampl .
  DATA modified TYPE timestampl .
  DATA title TYPE yecb_title .
  DATA subject TYPE yecb_subject .
  DATA description TYPE yecb_description .
  DATA keywords TYPE yecb_keywords .
  DATA category TYPE yecb_category .
  DATA company TYPE yecb_company .
  DATA application TYPE yecb_application .
  DATA docsecurity TYPE yecb_docsecurity .
  DATA scalecrop TYPE yecb_scalecrop .
  DATA linksuptodate TYPE flag .
  DATA shareddoc TYPE flag .
  DATA hyperlinkschanged TYPE flag .
  DATA appversion TYPE tv_excel_appversion .

  METHODS initialize .
ENDINTERFACE.
