*"* components of interface /IWBEP/IF_MGW_REQ_ENTITY_C
interface /IWBEP/IF_MGW_REQ_ENTITY_C
  public .


  types C1 type CHAR1 .

  methods GET_ENTITY_TYPE_NAME
    returning
      value(RV_ENTITY_TYPE) type /IWBEP/MGW_TECH_NAME .
  methods GET_ENTITY_SET_NAME
    returning
      value(RV_ENTITY_SET) type /IWBEP/MGW_TECH_NAME .
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
  methods GET_CONVERTED_SOURCE_KEYS
    exporting
      !ES_KEY_VALUES type DATA .
endinterface.
