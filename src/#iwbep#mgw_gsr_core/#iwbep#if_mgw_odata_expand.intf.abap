*"* components of interface /IWBEP/IF_MGW_ODATA_EXPAND
interface /IWBEP/IF_MGW_ODATA_EXPAND
  public .


  types:
    ty_e_compare_result TYPE c LENGTH 1 .
  types:
    BEGIN OF ty_s_node_child,
      tech_nav_prop_name  TYPE string,
      node                TYPE REF TO /iwbep/if_mgw_odata_expand,
    END OF ty_s_node_child .
  types:
    ty_t_node_children TYPE STANDARD TABLE OF ty_s_node_child WITH DEFAULT KEY .

  constants:
    BEGIN OF gcs_compare_result,
      match_no     TYPE char1 VALUE 'N',
      match_subset TYPE char1 VALUE 'S',
      match_equals TYPE char1 VALUE 'E',
    END OF gcs_compare_result .
  constants GC_SAP_DATA_EXISTS type FIELDNAME value 'SAP__DATA_EXISTS'. "#EC NOTEXT

  methods COMPARE_TO
    importing
      !IV_EXPAND type STRING
    returning
      value(RV_COMPARE_RESULT) type TY_E_COMPARE_RESULT .
  methods COMPARE_TO_TECH_NAMES
    importing
      !IV_EXPAND type STRING
    returning
      value(RV_COMPARE_RESULT) type TY_E_COMPARE_RESULT .
  methods GET_TECH_ENTITY_SET
    returning
      value(RV_ENTITY_SET) type /IWBEP/MGW_TECH_NAME .
  methods GET_TECH_ENTITY_TYPE
    returning
      value(RV_ENTITY_TYPE) type /IWBEP/MGW_TECH_NAME .
  methods GET_MULTIPLICITY
    returning
      value(RV_MULTIPLICITY) type CHAR1 .
  methods GET_CHILDREN
    returning
      value(RT_CHILDREN) type TY_T_NODE_CHILDREN .
  methods GET_SELECT_PROPERTIES
    returning
      value(RT_SELECT) type STRING_TABLE .
  methods GET_SELECT_ENTITY_PROPERTIES
    returning
      value(RT_SELECT) type STRING_TABLE .
  type-pools ABAP .
  methods IS_EXPAND_NEEDED
    returning
      value(RV_VALUE) type ABAP_BOOL .
endinterface.
