*"* components of interface /IWBEP/IF_MGW_REQ_FUNC_IMPORT
interface /IWBEP/IF_MGW_REQ_FUNC_IMPORT
  public .


  types C1 type CHAR1 .

  methods GET_FUNCTION_IMPORT_NAME
    returning
      value(RV_ACTION_NAME) type /IWBEP/MGW_TECH_NAME .
  methods GET_PARAMETERS
    returning
      value(RT_PARAMETERS) type /IWBEP/T_MGW_NAME_VALUE_PAIR .
  methods GET_FUNCTION_RETURN_TYPE
    returning
      value(RV_RETURN_TYPE) type /IWBEP/MGW_TECH_NAME .
  methods GET_CONVERTED_PARAMETERS
    exporting
      value(ES_PARAMETER_VALUES) type DATA .
  methods GET_CONDITIONAL_INFO
    exporting
      !ES_CONDITIONS type /IWBEP/IF_MGW_APPL_TYPES=>TY_S_CONDITIONS .
endinterface.
