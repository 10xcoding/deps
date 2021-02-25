*"* components of interface /IWBEP/IF_MESSAGE_CONTAINER
interface /IWBEP/IF_MESSAGE_CONTAINER
  public .


  types TY_DETAIL_MESSAGE type STRING .
  types TY_DETAIL_CODE type CHAR80 .
  types TY_DETAIL_PROPERTY_REFERENCE type STRING .
  types TY_DETAIL_SEVERITY type CHAR20 .
  types TY_ERROR_CATEGORY type CHAR15 .
  types TY_DETAIL_TARGET type STRING .
  types:
    BEGIN OF ty_s_error_detail,
    code                TYPE ty_detail_code,
    message_text        TYPE ty_detail_message,
    severity            TYPE ty_detail_severity,
    property_reference  TYPE ty_detail_property_reference,
    target              TYPE ty_detail_target,
    END OF ty_s_error_detail .
  types TY_LEADING_MSG_FLAG type CHAR1 .
  types:
    ty_bal_t_msg TYPE STANDARD TABLE OF bal_s_msg .

  constants:
    BEGIN OF gcs_error_category ,
          no_error TYPE char15 VALUE 'NOE',           "No Error: Used for information messages
          conflict  TYPE char15 VALUE 'CON',          "Conflict
          unknown_ref TYPE char15 VALUE 'CON.URC',    "Conflict - Unknown Reference
          processing  TYPE char15 VALUE 'PRE',        "Processing Error
          authorization TYPE char15 VALUE 'PRE.AUE',  "Processing - Authorization error
          temp_lock TYPE char15 VALUE 'PRE.TEE.LOC',  "Processing - Temporary - Lock error
          temp_connection TYPE char15 VALUE 'PRE.TEE.CON',  "Processing - Temporary - Connection error
      END OF gcs_error_category .
  constants:
    BEGIN OF gcs_message_type ,
          abort TYPE char1 VALUE 'A',
          error  TYPE char1 VALUE 'E',
          warning TYPE char1 VALUE 'W',
          success TYPE char1 VALUE 'S',
          info TYPE char1 VALUE 'I',
          termination TYPE char1 VALUE 'X',
      END OF gcs_message_type .
  constants:
    BEGIN OF gcs_exception_category ,
          base      TYPE char15 VALUE 'BASE',
          tech      TYPE char15 VALUE 'TECH',"technical exception
          meta      TYPE char15 VALUE 'META', " metadata exception
          gw_md_out TYPE char15 VALUE 'GWMDOUT', " Metadata on Gateway is outdated
          busi      TYPE char15 VALUE 'BUSI'," business exception
          dst       TYPE char15 VALUE 'DESIGN',"design time exception
          cst       TYPE char15 VALUE 'CUSTOM',
          unknown   TYPE char15 VALUE 'UNKNOWN',"unknown exception -> flag as base type exception instead
          none      TYPE char15 VALUE 'NONE', "no exception has been raised
          warning   TYPE char15 VALUE 'WARNING', "No exception has been raised, but there are warnings / infos etc. to be added to the http header
      END OF gcs_exception_category .
  constants:
    BEGIN OF gcs_leading_msg_search_option,
      none TYPE char1 VALUE 'N', "do not determine a leading message
      first TYPE char1 VALUE 'F', "first error message is the leading message
      last TYPE char1 VALUE 'B',"last error message is the leading messag
    END OF gcs_leading_msg_search_option .
  constants:
    BEGIN OF cs_severity,
    info TYPE ty_detail_severity VALUE 'info',
    warning TYPE ty_detail_severity VALUE 'warning',
    error TYPE ty_detail_severity VALUE 'error',
    END OF cs_severity .

  methods ADD_MESSAGE_FROM_EXCEPTION
    importing
      !IO_EXCEPTION type ref to /IWBEP/CX_MGW_BASE_EXCEPTION
      !IV_ERROR_CATEGORY type /IWBEP/IF_MESSAGE_CONTAINER=>TY_ERROR_CATEGORY default /IWBEP/IF_MESSAGE_CONTAINER=>GCS_ERROR_CATEGORY-PROCESSING
      !IV_IS_LEADING_MESSAGE type ABAP_BOOL default ABAP_FALSE
      !IV_ENTITY_TYPE type STRING optional
      !IT_KEY_TAB type /IWBEP/T_MGW_NAME_VALUE_PAIR optional
      !IV_ADD_TO_RESPONSE_HEADER type ABAP_BOOL default ABAP_FALSE
      !IV_MESSAGE_TARGET type /IWBEP/SUP_MC_MESSAGE_TARGET optional .
  methods ADD_MESSAGES_FROM_BAPI
    importing
      !IT_BAPI_MESSAGES type BAPIRET2_T
      !IV_ERROR_CATEGORY type /IWBEP/IF_MESSAGE_CONTAINER=>TY_ERROR_CATEGORY default /IWBEP/IF_MESSAGE_CONTAINER=>GCS_ERROR_CATEGORY-PROCESSING
      !IV_DETERMINE_LEADING_MSG type /IWBEP/IF_MESSAGE_CONTAINER=>TY_LEADING_MSG_FLAG default /IWBEP/IF_MESSAGE_CONTAINER=>GCS_LEADING_MSG_SEARCH_OPTION-NONE
      !IV_ENTITY_TYPE type STRING optional
      !IT_KEY_TAB type /IWBEP/T_MGW_NAME_VALUE_PAIR optional
      !IV_ADD_TO_RESPONSE_HEADER type /IWBEP/SUP_MC_ADD_TO_RESPONSE default ABAP_FALSE .
  methods ADD_MESSAGE_FROM_BAPI
    importing
      !IS_BAPI_MESSAGE type BAPIRET2
      !IV_ERROR_CATEGORY type /IWBEP/IF_MESSAGE_CONTAINER=>TY_ERROR_CATEGORY default /IWBEP/IF_MESSAGE_CONTAINER=>GCS_ERROR_CATEGORY-PROCESSING
      !IV_IS_LEADING_MESSAGE type ABAP_BOOL default ABAP_TRUE
      !IV_ENTITY_TYPE type STRING optional
      !IT_KEY_TAB type /IWBEP/T_MGW_NAME_VALUE_PAIR optional
      !IV_ADD_TO_RESPONSE_HEADER type /IWBEP/SUP_MC_ADD_TO_RESPONSE default ABAP_FALSE
      !IV_MESSAGE_TARGET type /IWBEP/SUP_MC_MESSAGE_TARGET .
  methods ADD_MESSAGE
    importing
      !IV_MSG_TYPE type SYMSGTY
      !IV_MSG_ID type SYMSGID
      !IV_MSG_NUMBER type SYMSGNO
      !IV_MSG_TEXT type BAPI_MSG optional
      !IV_MSG_V1 type SYMSGV optional
      !IV_MSG_V2 type SYMSGV optional
      !IV_MSG_V3 type SYMSGV optional
      !IV_MSG_V4 type SYMSGV optional
      !IV_ERROR_CATEGORY type /IWBEP/IF_MESSAGE_CONTAINER=>TY_ERROR_CATEGORY default /IWBEP/IF_MESSAGE_CONTAINER=>GCS_ERROR_CATEGORY-PROCESSING
      !IV_IS_LEADING_MESSAGE type ABAP_BOOL default ABAP_TRUE
      !IV_ENTITY_TYPE type STRING optional
      !IT_KEY_TAB type /IWBEP/T_MGW_NAME_VALUE_PAIR optional
      !IV_ADD_TO_RESPONSE_HEADER type /IWBEP/SUP_MC_ADD_TO_RESPONSE default ABAP_FALSE
      !IV_MESSAGE_TARGET type /IWBEP/SUP_MC_MESSAGE_TARGET optional .
  methods ADD_MESSAGES_FROM_CONTAINER
    importing
      !IO_MESSAGE_CONTAINER type ref to /IWBEP/IF_MESSAGE_CONTAINER .
  methods GET_MESSAGES
    importing
      !IV_PROVIDE_TEXT type ABAP_BOOL default ABAP_FALSE
    returning
      value(RT_MESSAGES) type /IWBEP/T_MESSAGE_CONTAINER .
  methods GET_LEADING_MESSAGE_TEXT
    returning
      value(RV_MESSAGE_TEXT) type BAPI_MSG .
  methods GET_WORST_MESSAGE_TYPE
    returning
      value(RV_MESSAGE_TYPE) type SYMSGTY .
  methods ADD_MESSAGE_TEXT_ONLY
    importing
      !IV_MSG_TYPE type SYMSGTY
      !IV_MSG_TEXT type BAPI_MSG
      !IV_ERROR_CATEGORY type /IWBEP/IF_MESSAGE_CONTAINER=>TY_ERROR_CATEGORY default /IWBEP/IF_MESSAGE_CONTAINER=>GCS_ERROR_CATEGORY-PROCESSING
      !IV_IS_LEADING_MESSAGE type ABAP_BOOL default ABAP_TRUE
      !IV_ENTITY_TYPE type STRING optional
      !IT_KEY_TAB type /IWBEP/T_MGW_NAME_VALUE_PAIR optional
      !IV_ADD_TO_RESPONSE_HEADER type /IWBEP/SUP_MC_ADD_TO_RESPONSE default ABAP_FALSE
      !IV_MESSAGE_TARGET type /IWBEP/SUP_MC_MESSAGE_TARGET optional .
  methods GET_HAS_LEADING_MESSAGE
    returning
      value(RV_HAS_LEADING_MESSAGE) type ABAP_BOOL .
  methods ADD_MESSAGES_FROM_LOG
    importing
      !IT_LOG_MESSAGES type /IWBEP/IF_MESSAGE_CONTAINER=>TY_BAL_T_MSG
      !IV_ERROR_CATEGORY type /IWBEP/IF_MESSAGE_CONTAINER=>TY_ERROR_CATEGORY default /IWBEP/IF_MESSAGE_CONTAINER=>GCS_ERROR_CATEGORY-PROCESSING
      !IV_ENTITY_TYPE type STRING optional
      !IT_KEY_TAB type /IWBEP/T_MGW_NAME_VALUE_PAIR optional .
  methods ADD_ERROR_DETAIL
    importing
      !IS_ERROR_DETAIL type /IWBEP/IF_MESSAGE_CONTAINER=>TY_S_ERROR_DETAIL .
  methods SET_MESSAGE_CODE
    importing
      !IV_MSG_CODE type STRING .
  methods GET_MESSAGE_CODE
    returning
      value(RV_MSG_CODE) type STRING .
endinterface.
