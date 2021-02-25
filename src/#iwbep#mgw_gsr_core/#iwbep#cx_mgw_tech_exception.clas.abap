CLASS /iwbep/cx_mgw_tech_exception DEFINITION
  PUBLIC
  INHERITING FROM /iwbep/cx_mgw_base_exception
  CREATE PUBLIC .

  PUBLIC SECTION.
    TYPE-POOLS abap .

    CONSTANTS:
      BEGIN OF missing_authorization,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '000',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF missing_authorization .
    CONSTANTS:
      BEGIN OF method_not_implemented,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '021',
        attr1 TYPE scx_attrname VALUE 'METHOD',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF method_not_implemented .
    CONSTANTS:
      BEGIN OF method_not_implemented_mod,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '092',
        attr1 TYPE scx_attrname VALUE 'METHOD',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF method_not_implemented_mod .
    CONSTANTS:
      BEGIN OF service_not_found,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '026',
        attr1 TYPE scx_attrname VALUE 'SERVICE_NAMESPACE',
        attr2 TYPE scx_attrname VALUE 'EXTERNAL_SERVICE_NAME',
        attr3 TYPE scx_attrname VALUE 'INTERNAL_SERVICE_VERSION',
        attr4 TYPE scx_attrname VALUE '',
      END OF service_not_found .
    CONSTANTS:
      BEGIN OF data_provider_not_found,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '025',
        attr1 TYPE scx_attrname VALUE 'INTERNAL_SERVICE_NAME',
        attr2 TYPE scx_attrname VALUE 'INTERNAL_SERVICE_VERSION',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF data_provider_not_found .
    CONSTANTS:
      BEGIN OF operation_not_supported,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '027',
        attr1 TYPE scx_attrname VALUE 'OPERATION',
        attr2 TYPE scx_attrname VALUE 'ENTITY_TYPE',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF operation_not_supported .
    CONSTANTS:
      BEGIN OF serialization_error,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '029',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF serialization_error .
    CONSTANTS:
      BEGIN OF deserialization_error,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '028',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF deserialization_error .
    CONSTANTS:
      BEGIN OF service_tadir_entry_not_found,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '031',
        attr1 TYPE scx_attrname VALUE 'SERVICE_NAMESPACE',
        attr2 TYPE scx_attrname VALUE 'EXTERNAL_SERVICE_NAME',
        attr3 TYPE scx_attrname VALUE 'INTERNAL_SERVICE_VERSION',
        attr4 TYPE scx_attrname VALUE '',
      END OF service_tadir_entry_not_found .
    CONSTANTS:
      BEGIN OF internal_error,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '032',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF internal_error .
    CONSTANTS:
      BEGIN OF changeset_not_supported,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '048',
        attr1 TYPE scx_attrname VALUE 'ENTITY_TYPE',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF changeset_not_supported .
    CONSTANTS:
      BEGIN OF changeset_default_violation,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '053',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF changeset_default_violation .
    CONSTANTS:
      BEGIN OF wrong_data_container,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '157',
        attr1 TYPE scx_attrname VALUE 'TYPE_EXPECTED',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF wrong_data_container .
    CONSTANTS:
      BEGIN OF routing_information_missing,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '001',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF routing_information_missing .
    CONSTANTS:
      BEGIN OF deserializ_error,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '028',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF deserializ_error .
    CONSTANTS:
      BEGIN OF changeset_different_instances,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '056',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF changeset_different_instances .
    CONSTANTS:
      BEGIN OF not_allowed_in_defer_mode,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '057',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF not_allowed_in_defer_mode .
    CONSTANTS:
      BEGIN OF cache_on_hub_not_allowed,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '091',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF cache_on_hub_not_allowed .
    CONSTANTS:
      BEGIN OF changeset_missing_response,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '058',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF changeset_missing_response .
    CONSTANTS:
      BEGIN OF function_import_card_0_1,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '019',
        attr1 TYPE scx_attrname VALUE 'ACTION',
        attr2 TYPE scx_attrname VALUE 'ENTITY_TYPE',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF function_import_card_0_1 .
    CONSTANTS:
      BEGIN OF target_card_not_allowed,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '170',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF target_card_not_allowed .
    CONSTANTS:
      BEGIN OF etag_for_action_not_supported,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '018',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF etag_for_action_not_supported .
    CONSTANTS:
      BEGIN OF list_target_requires_key,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '173',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF list_target_requires_key .
    CONSTANTS:
      BEGIN OF to_many_nav_requires_key,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '174',
        attr1 TYPE scx_attrname VALUE 'NAV_PROPERTY',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF to_many_nav_requires_key .
    CONSTANTS:
      BEGIN OF key_structure_error,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '175',
        attr1 TYPE scx_attrname VALUE 'ENTITY_TYPE',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF key_structure_error .
    CONSTANTS:
      BEGIN OF filter_tree_error,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '176',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF filter_tree_error .
    CONSTANTS:
      BEGIN OF ral_error,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '184',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF ral_error .
    CONSTANTS:
      BEGIN OF cache_on_hub_not_allowed_ral,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '099',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF cache_on_hub_not_allowed_ral .
    CONSTANTS:
      BEGIN OF changeset_with_content_id,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '187',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF changeset_with_content_id .
    DATA method TYPE string .
    DATA internal_service_version TYPE /iwbep/med_grp_version .
    DATA external_service_name TYPE /iwbep/med_grp_external_name .
    DATA service_namespace TYPE string .
    DATA internal_service_name TYPE /iwbep/med_grp_technical_name .
    DATA operation TYPE char30 .
    DATA entity_type TYPE string .
    DATA action TYPE string .
    CONSTANTS:
      BEGIN OF gcs_http_status_codes ,
        internal_server_error TYPE  /iwbep/mgw_http_status_code  VALUE '500',  "500 Internal Server Error - A generic error message, given when no more specific message is suitable.
        not_implemented       TYPE  /iwbep/mgw_http_status_code  VALUE '501',  "501 Not Implemented - The server either does not recognise the request method, or it lacks the ability to fulfill the request.
        service_unavailable   TYPE  /iwbep/mgw_http_status_code  VALUE '503',  "503 Service Unavailable - The server is currently unavailable (because it is overloaded or down for maintenance). Temporary error
      END OF gcs_http_status_codes .
    DATA type_returned TYPE string .
    DATA type_expected TYPE string .
    DATA nav_property TYPE /iwbep/med_external_name .

    METHODS constructor
      IMPORTING
        !textid                   LIKE if_t100_message=>t100key OPTIONAL
        !previous                 LIKE previous OPTIONAL
        !message_container        TYPE REF TO /iwbep/if_message_container OPTIONAL
        !http_status_code         TYPE /iwbep/mgw_http_status_code DEFAULT gcs_http_status_codes-internal_server_error
        !http_header_parameters   TYPE /iwbep/t_mgw_name_value_pair OPTIONAL
        !sap_note_id              TYPE /iwbep/mgw_sap_note_id OPTIONAL
        !msg_code                 TYPE string OPTIONAL
        !method                   TYPE string OPTIONAL
        !internal_service_version TYPE /iwbep/med_grp_version OPTIONAL
        !external_service_name    TYPE /iwbep/med_grp_external_name OPTIONAL
        !service_namespace        TYPE string OPTIONAL
        !internal_service_name    TYPE /iwbep/med_grp_technical_name OPTIONAL
        !operation                TYPE char30 OPTIONAL
        !entity_type              TYPE string OPTIONAL
        !action                   TYPE string OPTIONAL
        !type_returned            TYPE string OPTIONAL
        !type_expected            TYPE string OPTIONAL
        !nav_property             TYPE /iwbep/med_external_name OPTIONAL .

    METHODS get_msg_container
        REDEFINITION .
  PROTECTED SECTION.
ENDCLASS.
CLASS /iwbep/cx_mgw_tech_exception IMPLEMENTATION.
  METHOD constructor.
  ENDMETHOD.
ENDCLASS.