*"* components of interface /IWBEP/IF_MGW_ODATA_PROPERTY
interface /IWBEP/IF_MGW_ODATA_PROPERTY
  public .

  type-pools ABAP .
  interface /IWBEP/IF_MGW_APPL_TYPES load .
  interface /IWBEP/IF_MGW_MED_ODATA_TYPES load .

  interfaces /IWBEP/IF_MGW_ODATA_ANNOTATABL .
  interfaces /IWBEP/IF_MGW_ODATA_ITEM .

  aliases GET_ID
    for /IWBEP/IF_MGW_ODATA_ITEM~GET_ID .
  aliases SET_LABEL_FROM_TEXT_ELEMENT
    for /IWBEP/IF_MGW_ODATA_ITEM~SET_LABEL_FROM_TEXT_ELEMENT .
  aliases SET_NAME
    for /IWBEP/IF_MGW_ODATA_ITEM~SET_NAME .

  types S type CHAR1 .

  constants:
    BEGIN OF gcs_value_list_type_property,
      fixed_values TYPE /iwbep/mgw_med_prop_value_list VALUE 'F',  "has value help with a few values
      standard     TYPE /iwbep/mgw_med_prop_value_list VALUE 'S',  "has value help with an unforeseeable number of values
    END OF gcs_value_list_type_property .

  methods SET_VALUE_LIST
    importing
      !IV_VALUE_LIST_TYPE type /IWBEP/MGW_MED_PROP_VALUE_LIST default /IWBEP/IF_MGW_ODATA_PROPERTY=>GCS_VALUE_LIST_TYPE_PROPERTY-STANDARD .
  methods BIND_DATA_ELEMENT
    importing
      !IV_ELEMENT_NAME type STRING
    raising
      /IWBEP/CX_MGW_MED_EXCEPTION .
  methods BIND_DATA_ELEMENT_FOR_TEXT
    importing
      !IV_ELEMENT_NAME type STRING
    raising
      /IWBEP/CX_MGW_MED_EXCEPTION .
  methods DISABLE_CONVERSION .
  methods ENABLE_CONVERSION
    raising
      /IWBEP/CX_MGW_MED_EXCEPTION .
  methods SET_AS_AUTHOR
    importing
      !IV_KEEP_IN_CONTENT type ABAP_BOOL default ABAP_FALSE
    raising
      /IWBEP/CX_MGW_MED_EXCEPTION .
  methods SET_AS_CONTENT_SOURCE
    raising
      /IWBEP/CX_MGW_MED_EXCEPTION .
  methods SET_AS_CONTENT_TYPE
    raising
      /IWBEP/CX_MGW_MED_EXCEPTION .
  methods SET_AS_ETAG
    raising
      /IWBEP/CX_MGW_MED_EXCEPTION .
  methods SET_AS_PUBLISHED
    importing
      !IV_KEEP_IN_CONTENT type ABAP_BOOL default ABAP_FALSE
    raising
      /IWBEP/CX_MGW_MED_EXCEPTION .
  methods SET_AS_TITLE
    importing
      !IV_KEEP_IN_CONTENT type ABAP_BOOL default ABAP_FALSE
    raising
      /IWBEP/CX_MGW_MED_EXCEPTION .
  methods SET_AS_UPDATED
    importing
      !IV_KEEP_IN_CONTENT type ABAP_BOOL default ABAP_FALSE
    raising
      /IWBEP/CX_MGW_MED_EXCEPTION .
  methods SET_CONVERSION_EXIT
    importing
      !IV_CONV_EXIT type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_CONV_EXIT
      !IV_ROUND_SIGN type CHAR1 default SPACE .
  methods SET_CREATABLE
    importing
      !IV_CREATABLE type ABAP_BOOL default ABAP_TRUE .
  methods SET_DISABLED
    importing
      !IV_DISABLED type ABAP_BOOL default ABAP_TRUE .
  methods SET_FC_TARGET_PATH
    importing
      !IV_KEEP_IN_CONTENT type ABAP_BOOL default ABAP_FALSE
      !IV_FC_TARGET_PATH type STRING
    raising
      /IWBEP/CX_MGW_MED_EXCEPTION .
  methods SET_FIELD_CONTROL
    importing
      !IV_FIELD_CONTROL_PROPERTY type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME
    raising
      /IWBEP/CX_MGW_MED_EXCEPTION .
  methods SET_FILTERABLE
    importing
      !IV_FILTERABLE type ABAP_BOOL default ABAP_TRUE .
  methods SET_INTERNAL_LENGTH
    importing
      !IV_INTERNAL_LENGTH type I .
  methods SET_INTERNAL_TYPE
    importing
      !IV_TYPE type ABAP_TYPEKIND .
  methods SET_IS_EXTENSION_FIELD
    importing
      !IV_IS_EXTENSION_FIELD type ABAP_BOOL default ABAP_TRUE .
  methods SET_IS_KEY
    importing
      !IV_KEY type ABAP_BOOL default ABAP_TRUE .
  methods SET_MAXLENGTH
    importing
      !IV_MAX_LENGTH type I .
  methods SET_NULLABLE
    importing
      !IV_NULLABLE type ABAP_BOOL default ABAP_TRUE .
  methods SET_PRECISON
    importing
      !IV_PRECISION type I .
  methods SET_REFERENCE_ANNOTATION
    importing
      !IV_ANNOTATION_KEY type /IWBEP/MED_ANNOTATION_KEY
      !IV_PROPERTY type /IWBEP/MED_EXTERNAL_NAME
    raising
      /IWBEP/CX_MGW_MED_EXCEPTION .
  methods SET_SEMANTIC
    importing
      !IV_SEMANTIC type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_SEMANTIC .
  methods SET_SORTABLE
    importing
      !IV_SORTABLE type ABAP_BOOL default ABAP_TRUE .
  methods SET_TEXT_KEY
    importing
      !IV_TEXT_KEY type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_TEXT_KEY
      !IV_TEXT_OBJECT_TYPE type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_TEXT_OBJ_TYPE
      !IV_TEXT_ELEMENT_TYPE type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_TEXT_ELEMENT_TYPE default 'L'
      !IV_CREATE type ABAP_BOOL default ABAP_TRUE
    raising
      /IWBEP/CX_MGW_MED_EXCEPTION .
  methods SET_TYPE_EDM_BINARY .
  methods SET_TYPE_EDM_BOOLEAN .
  methods SET_TYPE_EDM_BYTE .
  methods SET_TYPE_EDM_DATETIME .
  methods SET_TYPE_EDM_DATETIMEOFFSET .
  methods SET_TYPE_EDM_DECIMAL .
  methods SET_TYPE_EDM_DOUBLE .
  methods SET_TYPE_EDM_FLOAT .
  methods SET_TYPE_EDM_GUID .
  methods SET_TYPE_EDM_INT16 .
  methods SET_TYPE_EDM_INT32 .
  methods SET_TYPE_EDM_INT64 .
  methods SET_TYPE_EDM_SBYTE .
  methods SET_TYPE_EDM_SINGLE .
  methods SET_TYPE_EDM_STRING .
  methods SET_TYPE_EDM_TIME .
  methods SET_UNIT
    importing
      !IV_UNIT_PROPERTY_PATH type STRING
    raising
      /IWBEP/CX_MGW_MED_EXCEPTION .
  methods SET_UNIT_PRECISION
    importing
      !IV_UNIT_PRECISION_PROP_PATH type STRING
    raising
      /IWBEP/CX_MGW_MED_EXCEPTION .
  methods SET_UNIT_PRECISION_PROPERTY
    importing
      !IV_PRECISION_PROPERTY type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME
    raising
      /IWBEP/CX_MGW_MED_EXCEPTION .
  methods SET_UNIT_PROPERTY
    importing
      !IV_UNIT_PROPERTY type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME
    raising
      /IWBEP/CX_MGW_MED_EXCEPTION .
  methods SET_UPDATABLE
    importing
      !IV_UPDATABLE type ABAP_BOOL default ABAP_TRUE .
endinterface.
