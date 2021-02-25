*"* components of interface /IWBEP/IF_MGW_REQ_ENTITYSET
interface /IWBEP/IF_MGW_REQ_ENTITYSET
  public .


  types C1 type CHAR1 .

  methods GET_CONVERTED_SOURCE_KEYS
    exporting
      !ES_KEY_VALUES type DATA .
  methods GET_DELTATOKEN
    returning
      value(RV_DELTATOKEN) type STRING .
  methods GET_ENTITY_SET_NAME
    returning
      value(RV_ENTITY_SET) type /IWBEP/MGW_TECH_NAME .
  methods GET_ENTITY_TYPE_NAME
    returning
      value(RV_ENTITY_TYPE) type /IWBEP/MGW_TECH_NAME .
  methods GET_EXPAND
    returning
      value(RV_EXPAND) type STRING .
  methods GET_FILTER
    returning
      value(RO_FILTER) type ref to /IWBEP/IF_MGW_REQ_FILTER .
  methods GET_FILTER_EXPRESSION_TREE
    returning
      value(RO_FILTER_TREE) type ref to /IWBEP/IF_MGW_EXPR_NODE .
  methods GET_IF_MODIFIED_SINCE
    returning
      value(RV_IF_MODIFIED_SINCE) type TZNTSTMPS .
  methods GET_NAVIGATION_PATH
    returning
      value(RT_NAVIGATION_PATH) type /IWBEP/T_MGW_TECH_NAVI .
  methods GET_ORDERBY
    returning
      value(RT_ORDERBY) type /IWBEP/T_MGW_TECH_ORDER .
  methods GET_OSQL_WHERE_CLAUSE
    returning
      value(RV_OSQL_WHERE_CLAUSE) type STRING
    raising
      /IWBEP/CX_MGW_BUSI_EXCEPTION .
  methods GET_OSQL_WHERE_CLAUSE_CONVERT
    returning
      value(RV_OSQL_WHERE_CLAUSE) type STRING
    raising
      /IWBEP/CX_MGW_BUSI_EXCEPTION
      /IWBEP/CX_MGW_TECH_EXCEPTION .
  methods GET_SEARCH_START_INDEX
    returning
      value(RV_STARTINDEX) type STRING .
  methods GET_SEARCH_STRING
    returning
      value(RV_SEARCHSTRING) type STRING .
  methods GET_SELECT
    returning
      value(RT_SELECT) type /IWBEP/T_MGW_TECH_FIELD_NAMES .
  methods GET_SELECT_WITH_MANDTRY_FIELDS
    importing
      !IV_USE_HYPHEN_AS_SEPARATOR type ABAP_BOOL default ABAP_FALSE
    returning
      value(RT_SELECT) type STRING_TABLE .
  methods GET_SELECT_ENTITY_PROPERTIES
    returning
      value(RT_SELECT) type STRING_TABLE .
  methods GET_SKIP
    returning
      value(RV_SKIP) type I .
  methods GET_SKIPTOKEN
    returning
      value(RV_SKIPTOKEN) type STRING .
  methods GET_SOURCE_ENTITY_SET_NAME
    returning
      value(RV_ENTITY_SET) type /IWBEP/MGW_TECH_NAME .
  methods GET_SOURCE_ENTITY_TYPE_NAME
    returning
      value(RV_ENTITY_TYPE) type /IWBEP/MGW_TECH_NAME .
  methods GET_SOURCE_KEYS
    returning
      value(RT_SOURCE_KEYS) type /IWBEP/T_MGW_TECH_PAIRS .
  methods GET_TOP
    returning
      value(RV_TOP) type STRING .
  methods GET_TOTALS
    returning
      value(RT_TOTALS) type /IWBEP/T_MGW_TECH_FIELD_NAMES .
  methods HAS_COUNT
    returning
      value(RV_HAS_COUNT) type ABAP_BOOL .
  methods HAS_INLINECOUNT
    returning
      value(RV_HAS_INLINECOUNT) type ABAP_BOOL .
  methods IS_CACHE_PAGE_ON_HB_ALLOWED
    returning
      value(RV_IS_CACHE_AND_PAGE_OK) type ABAP_BOOL
    raising
      /IWBEP/CX_MGW_TECH_EXCEPTION .
endinterface.
