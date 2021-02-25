*"* components of interface /IWBEP/IF_MGW_REQ_ENTITY_D
interface /IWBEP/IF_MGW_REQ_ENTITY_D
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
  methods GET_CONVERTED_KEYS
    exporting
      !ES_KEY_VALUES type DATA .
  interface /IWBEP/IF_MGW_APPL_TYPES load .
  methods GET_CONDITIONAL_INFO
    exporting
      !ES_CONDITIONS type /IWBEP/IF_MGW_APPL_TYPES=>TY_S_CONDITIONS .
endinterface.
