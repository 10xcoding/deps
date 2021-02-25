*"* components of interface /IWBEP/IF_MGW_REQ_ENTITY
interface /IWBEP/IF_MGW_REQ_ENTITY
  public .


  types C1 type CHAR1 .

  methods GET_ENTITY_TYPE_NAME
    returning
      value(RV_ENTITY_TYPE) type /IWBEP/MGW_TECH_NAME .
  methods GET_ENTITY_SET_NAME
    returning
      value(RV_ENTITY_SET) type /IWBEP/MGW_TECH_NAME .
  methods GET_KEYS
    returning
      value(RT_KEYS) type /IWBEP/T_MGW_TECH_PAIRS .
  methods GET_SOURCE_ENTITY_TYPE_NAME
    returning
      value(RV_ENTITY_TYPE) type /IWBEP/MGW_TECH_NAME .
  methods GET_SOURCE_ENTITY_SET_NAME
    returning
      value(RV_ENTITY_SET) type /IWBEP/MGW_TECH_NAME .
  methods GET_SOURCE_KEYS
    returning
      value(RT_SOURCE_KEYS) type /IWBEP/T_MGW_TECH_PAIRS .
  methods GET_NAVIGATION_PATH
    returning
      value(RT_NAVIGATION_PATH) type /IWBEP/T_MGW_TECH_NAVI .
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
  methods GET_CONVERTED_KEYS
    exporting
      !ES_KEY_VALUES type DATA .
  methods GET_CONVERTED_SOURCE_KEYS
    exporting
      !ES_KEY_VALUES type DATA .
  methods GET_IF_MODIFIED_SINCE
    returning
      value(RV_IF_MODIFIED_SINCE) type TZNTSTMPS .
  methods GET_CONDITIONAL_OPERATION_FOR
    returning
      value(RV_OPERATION_TYPE) type /IWBEP/MGW_OPERATION_TYPE .
  methods GET_CONVERTED_NAVI_TARGET_KEYS
    importing
      !IS_NAVIGATION_PATH type /IWBEP/S_MGW_TECH_NAVI
    exporting
      !ES_KEY_VALUES type DATA .
endinterface.
