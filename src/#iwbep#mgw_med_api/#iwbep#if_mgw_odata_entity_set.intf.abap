*"* components of interface /IWBEP/IF_MGW_ODATA_ENTITY_SET
interface /IWBEP/IF_MGW_ODATA_ENTITY_SET
  public .


  interfaces /IWBEP/IF_MGW_ODATA_ITEM .

  aliases GET_ID
    for /IWBEP/IF_MGW_ODATA_ITEM~GET_ID .
  aliases SET_LABEL_FROM_TEXT_ELEMENT
    for /IWBEP/IF_MGW_ODATA_ITEM~SET_LABEL_FROM_TEXT_ELEMENT .
  aliases SET_NAME
    for /IWBEP/IF_MGW_ODATA_ITEM~SET_NAME .

  types S type CHAR1 .

  methods SET_IS_VALUE_HELP
    importing
      !IV_IS_VALUE_HELP type ABAP_BOOL .
  methods CREATE_ANNOTATION
    importing
      !IV_ANNOTATION_NAMESPACE type /IWBEP/MED_ANNO_NAMESPACE
    returning
      value(RO_ANNOTATION) type ref to /IWBEP/IF_MGW_ODATA_ANNOTATION
    raising
      /IWBEP/CX_MGW_MED_EXCEPTION .
  methods SET_TITLE
    importing
      !IV_TEXT_KEY type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_TEXT_KEY
      !IV_TEXT_OBJ_TYPE type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_TEXT_OBJ_TYPE
    raising
      /IWBEP/CX_MGW_MED_EXCEPTION .
  methods SET_MEMBER_TITLE
    importing
      !IV_TEXT_KEY type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_TEXT_KEY
      !IV_TEXT_OBJ_TYPE type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_TEXT_OBJ_TYPE
    raising
      /IWBEP/CX_MGW_MED_EXCEPTION .
  methods SET_MEMBER_TITLE_FR_TELEMENT
    importing
      !IV_TEXT_ELEMENT_SYMBOL type TEXTPOOLKY
      !IV_TEXT_ELEMENT_CONTAINER type STRING optional
      !IO_OBJECT_REF type ref to OBJECT optional
    raising
      /IWBEP/CX_MGW_MED_EXCEPTION .
  methods SET_CREATABLE
    importing
      !IV_CREATABLE type ABAP_BOOL default ABAP_TRUE .
  methods SET_UPDATABLE
    importing
      !IV_UPDATABLE type ABAP_BOOL default ABAP_TRUE .
  methods SET_DELETABLE
    importing
      !IV_DELETABLE type ABAP_BOOL default ABAP_TRUE .
  methods SET_PAGEABLE
    importing
      !IV_PAGEABLE type ABAP_BOOL default ABAP_TRUE .
  methods SET_ADDRESSABLE
    importing
      !IV_ADDRESSABLE type ABAP_BOOL default ABAP_TRUE .
  methods SET_FILTER_REQUIRED
    importing
      !IV_REQ_FILTER type ABAP_BOOL default ABAP_TRUE .
  methods SET_HAS_FTXT_SEARCH
    importing
      !IV_FSEARCH type ABAP_BOOL default ABAP_TRUE .
  methods SET_SUBSCRIBABLE
    importing
      !IV_SUBSCRIBABLE type ABAP_BOOL default ABAP_TRUE .
  methods SET_DISABLED
    importing
      !IV_DISABLED type BOOLEAN default ABAP_TRUE .
endinterface.
