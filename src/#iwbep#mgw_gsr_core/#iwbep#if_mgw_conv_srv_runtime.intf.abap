*"* components of interface /IWBEP/IF_MGW_CONV_SRV_RUNTIME
interface /IWBEP/IF_MGW_CONV_SRV_RUNTIME
  public .


  methods GET_LOGGER
    returning
      value(RO_LOGGER) type ref to /IWBEP/CL_COS_LOGGER .
  methods GET_MESSAGE_CONTAINER
    returning
      value(RO_MESSAGE_CONTAINER) type ref to /IWBEP/IF_MESSAGE_CONTAINER .
  methods COPY_DATA_TO_REF
    importing
      !IS_DATA type ANY
    changing
      !CR_DATA type ref to DATA .
  methods SET_HEADER
    importing
      !IS_HEADER type IHTTPNVP .
  methods SET_ETAG
    importing
      !IV_VALUE type STRING .
  methods GET_DP_FACADE
    returning
      value(RO_DP_FACADE) type ref to /IWBEP/IF_MGW_DP_FACADE
    raising
      /IWBEP/CX_MGW_TECH_EXCEPTION .
  methods MOVE_CORRESPONDING
    importing
      !ID_SOURCE_DATA type ANY
    exporting
      !ED_TARGET_DATA type ANY .
  class /IWBEP/CL_MGW_REQUEST_UNITTST definition load .
  methods INIT_DP_FOR_UNIT_TEST
    importing
      !IS_REQUEST_CONTEXT type /IWBEP/CL_MGW_REQUEST_UNITTST=>TY_S_MGW_REQUEST_CONTEXT_UNIT
    returning
      value(RO_REQUEST_CONTEXT) type ref to /IWBEP/CL_MGW_REQUEST_UNITTST .
  methods CHECK_IF_IS_NOT_MODIFIED
    importing
      !IV_IF_MODIFIED_SINCE type TZNTSTMPS
      !IV_LAST_MODIFIED type TZNTSTMPS
    returning
      value(RV_IS_NOT_MODIFIED) type /IWBEP/MGW_IS_NOT_MODIFIED .
  methods GET_RESPONSE_UTIL
    returning
      value(RO_RESPONSE_UTIL) type ref to /IWBEP/IF_MGW_RESPONSE_UTIL .
endinterface.
