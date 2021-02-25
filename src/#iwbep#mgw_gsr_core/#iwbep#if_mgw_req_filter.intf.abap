*"* components of interface /IWBEP/IF_MGW_REQ_FILTER
interface /IWBEP/IF_MGW_REQ_FILTER
  public .


  methods GET_FILTER_SELECT_OPTIONS
    returning
      value(RT_FILTER_SELECT_OPTIONS) type /IWBEP/T_MGW_SELECT_OPTION .
  methods GET_FILTER_STRING
    returning
      value(RV_FILTER_STRING) type STRING .
  methods CONVERT_SELECT_OPTION
    importing
      !IS_SELECT_OPTION type /IWBEP/S_MGW_SELECT_OPTION
    exporting
      !ET_SELECT_OPTION type TABLE .
endinterface.
