*"* components of interface /IWBEP/IF_MGW_CONTEXT
interface /IWBEP/IF_MGW_CONTEXT
  public .


  types:
    begin of ty_s_parameter,
        name type string,
        value type ref to data,
      end of ty_s_parameter .
  types:
    ty_t_parameter type HASHED TABLE OF ty_s_parameter with unique key name .

  constants GC_PARAM_REQUEST_USER type STRING value 'request_user'. "#EC NOTEXT
  constants GC_PARAM_SERVICE_ROOT type STRING value 'service_root'. "#EC NOTEXT
  constants GC_PARAM_SERVICE_ROOT_ICF type STRING value 'service_root_icf'. "#EC NOTEXT
  constants GC_PARAM_SERVICE_NAME type STRING value 'service_name'. "#EC NOTEXT
  constants GC_PARAM_SERVICE_NAMESPACE type STRING value 'service_namespace'. "#EC NOTEXT
  constants GC_PARAM_ISN type STRING value 'internal_service_name'. "#EC NOTEXT
  constants GC_PARAM_ISV type STRING value 'internal_service_version'. "#EC NOTEXT
  constants GC_PARAM_LOGGER type STRING value 'logger'. "#EC NOTEXT
  constants GC_PARAM_MSG_CONTAINER type STRING value 'msg_container'. "#EC NOTEXT
  constants GC_PARAM_SOFTSTATE_MODE type STRING value 'softstate'. "#EC NOTEXT
  constants GC_PARAM_RESET_DP type STRING value 'reset_dp'. "#EC NOTEXT

  methods SET_PARAMETER
    importing
      !IV_NAME type STRING
      !IV_VALUE type DATA .
  methods GET_PARAMETER
    importing
      !IV_NAME type STRING
    exporting
      !EV_VALUE type DATA .
  methods GET_PARAMETERS
    exporting
      !ET_PARAMETER type TY_T_PARAMETER .
  methods GET_LOGGER
    returning
      value(RO_LOGGER) type ref to /IWBEP/CL_COS_LOGGER .
  methods GET_MESSAGE_CONTAINER
    returning
      value(RO_MESSAGE_CONTAINER) type ref to /IWBEP/IF_MESSAGE_CONTAINER .
  methods GET_SYSTEM_ALIAS_INFO
    returning
      value(RS_SYSTEM_ALIAS_INFO) type /IWBEP/S_DEFI_ALIAS_INFO .
endinterface.
