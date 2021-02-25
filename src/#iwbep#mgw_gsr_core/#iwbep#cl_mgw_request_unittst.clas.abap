CLASS /iwbep/cl_mgw_request_unittst DEFINITION
  PUBLIC
  INHERITING FROM /iwbep/cl_mgw_request
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    TYPES:
      BEGIN OF ty_s_defi_alias_info,
        system_alias       TYPE char16,
        rfc_dest           TYPE char32,
        ws_provider_syst   TYPE char120,
        software_version   TYPE char16,
        hana_db_connection TYPE char30,
      END OF ty_s_defi_alias_info .
    TYPES:
      BEGIN OF ty_s_mgw_paging,
        top  TYPE string,
        skip TYPE string,
      END OF ty_s_mgw_paging .
    TYPES:
      BEGIN OF ty_expression,
        expression_id TYPE  sysuuid_c,
        l_operand	    TYPE  string,
        l_oprnd_int   TYPE  string,
        lop_id        TYPE  sysuuid_c,
        lop_type      TYPE  char1,
        operator      TYPE  string,
        r_operand	    TYPE  string,
        r_oprnd_int   TYPE  string,
        literal_type  TYPE  string,
        rop_id        TYPE  sysuuid_c,
        rop_type      TYPE  char1,
      END OF ty_expression .
    TYPES:
      tt_expressions TYPE STANDARD TABLE OF ty_expression WITH DEFAULT KEY .
    TYPES:
      BEGIN OF ty_parameter,
        param_id     TYPE  sysuuid_c,
        param_type   TYPE  char1,
        param_value	 TYPE  string,
        param_int    TYPE  string,
        literal_type TYPE  string,
        function_id  TYPE  sysuuid_c,
      END OF ty_parameter .
    TYPES:
      tt_parameters TYPE STANDARD TABLE OF ty_parameter WITH DEFAULT KEY .
    TYPES:
      BEGIN OF ty_function,
        function_id TYPE  sysuuid_c,
        function    TYPE  string,
        param_tab	  TYPE  tt_parameters,
      END OF ty_function .
    TYPES:
      tt_functions TYPE STANDARD TABLE OF ty_function WITH DEFAULT KEY .
    TYPES:
      BEGIN OF technical_request_s,
        source_entity_type     TYPE /iwbep/mgw_tech_name,          " name of the entity from the first segment
        target_entity_type     TYPE /iwbep/mgw_tech_name,          " name of the entity from the last segment
        source_entity_set      TYPE /iwbep/mgw_tech_name,          " name of the entity set from the first segment
        target_entity_set      TYPE /iwbep/mgw_tech_name,          " name of the entity set from the last segment
        key                    TYPE string,                        " key for the first segment
        key_tab                TYPE /iwbep/t_mgw_name_value_pair,       " key fields for the first segment
        converted_keys         TYPE REF TO data,
        navigation_path        TYPE /iwbep/t_mgw_navigation_path,        " navigation_path (navprop, key table)
        filter_select_options  TYPE /iwbep/t_mgw_select_option,    " filter as select options; empty if not available
        filter_string          TYPE string,                        " filter string
        order                  TYPE /iwbep/t_mgw_sorting_order,       " orderby=firstName [asc],lastName desc
        select                 TYPE /iwbep/t_mgw_tech_field_names, " select
        totals                 TYPE /iwbep/t_mgw_tech_field_names, " totals
        expand                 TYPE string,                        " expand
        components             TYPE string_table,                  " list of components for PATCH -> partial update every line represents a property path
        action_name            TYPE /iwbep/mgw_tech_name,          " name of the action (function import)
        action_parameters      TYPE /iwbep/t_mgw_name_value_pair,  " parameters of the action (function import)
        conv_action_parameters TYPE REF TO data,
        action_return_type     TYPE /iwbep/mgw_tech_name,          " return type of the action (function import)
        parameters             TYPE /iwbep/t_mgw_name_value_pair,  " http header, request parameters, $select parameters, ...
        key_converter          TYPE REF TO object,                 " converter for URI keys
        filter_expressions     TYPE tt_expressions, " $filter Expression in Tree Representation
        filter_functions       TYPE tt_functions,                  " Functions in $filter Expression
        filter_object          TYPE REF TO /iwbep/if_mgw_req_filter,
        request_header         TYPE tihttpnvp,                     " HTTP request header from OData consumer
      END OF technical_request_s .
    TYPES:
      BEGIN OF ty_s_mgw_request_context_unit,
        paging            TYPE ty_s_mgw_paging,
        parameters        TYPE /iwbep/t_mgw_name_value_pair,
        technical_request TYPE technical_request_s,
      END OF ty_s_mgw_request_context_unit .

    DATA ms_converted_keys TYPE REF TO data .
    DATA ms_converted_parameters TYPE REF TO data .

    METHODS constructor
      IMPORTING
        !it_headers TYPE tihttpnvp
        !io_model   TYPE REF TO /iwbep/if_mgw_odata_fw_model OPTIONAL .
    METHODS set_request_context
      IMPORTING
        !ir_request_context TYPE REF TO ty_s_mgw_request_context_unit .
    METHODS set_converted_keys
      IMPORTING
        !is_converted_keys TYPE REF TO data .
    METHODS set_filter
      IMPORTING
        !io_filter TYPE REF TO /iwbep/if_mgw_req_filter .
    METHODS set_converted_parameters
      IMPORTING
        !is_converted_parameters TYPE REF TO data .

    METHODS /iwbep/if_mgw_req_entityset~get_converted_source_keys
        REDEFINITION .
    METHODS /iwbep/if_mgw_req_entity_c~get_converted_source_keys
        REDEFINITION .
    METHODS /iwbep/if_mgw_req_entity_u~get_converted_keys
        REDEFINITION .
    METHODS /iwbep/if_mgw_req_entity~get_converted_keys
        REDEFINITION .
    METHODS /iwbep/if_mgw_req_entity~get_converted_source_keys
        REDEFINITION .
    METHODS /iwbep/if_mgw_req_func_import~get_converted_parameters
        REDEFINITION .
ENDCLASS.
CLASS /iwbep/cl_mgw_request_unittst IMPLEMENTATION.
  METHOD set_request_context.
  ENDMETHOD.
  METHOD constructor.
  ENDMETHOD.
  METHOD set_filter.
  ENDMETHOD.
  METHOD set_converted_parameters.
  ENDMETHOD.
  METHOD set_converted_keys.
  ENDMETHOD.
ENDCLASS.