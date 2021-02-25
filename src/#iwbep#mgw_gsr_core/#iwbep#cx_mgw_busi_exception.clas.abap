CLASS /iwbep/cx_mgw_busi_exception DEFINITION
  PUBLIC
  INHERITING FROM /iwbep/cx_mgw_base_exception
  CREATE PUBLIC .

  PUBLIC SECTION.

    CONSTANTS:
      BEGIN OF resource_not_found,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '020',
        attr1 TYPE scx_attrname VALUE 'ENTITY_TYPE',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF resource_not_found .
    CONSTANTS:
      BEGIN OF business_error,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '022',
        attr1 TYPE scx_attrname VALUE 'MESSAGE',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF business_error .
    CONSTANTS:
      BEGIN OF resource_duplicate,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '030',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF resource_duplicate .
    CONSTANTS:
      BEGIN OF business_error_unlimited,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '022',
        attr1 TYPE scx_attrname VALUE 'MESSAGE_UNLIMITED',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF business_error_unlimited .
    CONSTANTS:
      BEGIN OF filter_not_supported,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '063',
        attr1 TYPE scx_attrname VALUE 'FILTER_PARAM',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF filter_not_supported .
    CONSTANTS:
      BEGIN OF soft_state_not_supported,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '067',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF soft_state_not_supported .
    CONSTANTS:
      BEGIN OF unsupported_response_expand,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '068',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF unsupported_response_expand .
    CONSTANTS:
      BEGIN OF unsupported_response_context,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '069',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF unsupported_response_context .
    CONSTANTS:
      BEGIN OF no_cache_max_age_unsupported,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '180',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF no_cache_max_age_unsupported .
    CONSTANTS:
      BEGIN OF is_not_modified_unsupported,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '181',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF is_not_modified_unsupported .
    CONSTANTS:
      BEGIN OF is_not_modified_expand,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '182',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF is_not_modified_expand .
    CONSTANTS:
      BEGIN OF is_not_modified_diff_values,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '183',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF is_not_modified_diff_values .
    CONSTANTS:
      BEGIN OF request_requires_batch,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '177',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF request_requires_batch .
    CONSTANTS:
      BEGIN OF precondition_failed,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '190',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF precondition_failed .
    DATA entity_type TYPE string .
    DATA message TYPE bapi_msg .
    DATA message_unlimited TYPE string .
    DATA filter_param TYPE string .
    DATA operation_no TYPE i .
    CONSTANTS:
      BEGIN OF gcs_http_status_codes ,
        bad_request            TYPE  /iwbep/mgw_http_status_code  VALUE '400',  "400 Bad Request - The request cannot be fulfilled due to bad syntax.
        forbidden              TYPE  /iwbep/mgw_http_status_code  VALUE '403',  "403 Forbidden - The request was a legal request, but the server is refusing to respond to it.
        not_found              TYPE  /iwbep/mgw_http_status_code  VALUE '404',  "404 Not Found - The requested resource could not be found but may be available again in the future.
        method_not_allowed     TYPE  /iwbep/mgw_http_status_code  VALUE '405',  "405 Method Not Allowed - A request was made of a resource using a request method not supported by that resource;
        not_acceptable         TYPE  /iwbep/mgw_http_status_code  VALUE '406',  "406 Not Acceptable - The requested resource is only capable of generating content not acceptable according to the Accept headers sent in the request.
        conflict               TYPE  /iwbep/mgw_http_status_code  VALUE '409',  "409 Conflict - Indicates that the request could not be processed because of conflict in the request, such as an edit conflict.
        gone                   TYPE  /iwbep/mgw_http_status_code  VALUE '410',  "410 Gone - Indicates that a resources existed earlier but ist not available anymore
        precondition_failed    TYPE  /iwbep/mgw_http_status_code  VALUE '412',  "412 Precondition Failed - The server does not meet one of the preconditions that the requester put on the request.
        unsupported_media_type TYPE  /iwbep/mgw_http_status_code  VALUE '415',  "415 Unsupported Media Type - The request entity has a media type which the server or resource does not support.
        precondition_required  TYPE  /iwbep/mgw_http_status_code  VALUE '428',  "428 Precondition Required (RFC 6585) - The origin server requires the request to be conditional.
      END OF gcs_http_status_codes .

    METHODS constructor
      IMPORTING
        !textid                 LIKE if_t100_message=>t100key OPTIONAL
        !previous               LIKE previous OPTIONAL
        !message_container      TYPE REF TO /iwbep/if_message_container OPTIONAL
        !http_status_code       TYPE /iwbep/mgw_http_status_code DEFAULT gcs_http_status_codes-bad_request
        !http_header_parameters TYPE /iwbep/t_mgw_name_value_pair OPTIONAL
        !sap_note_id            TYPE /iwbep/mgw_sap_note_id OPTIONAL
        !msg_code               TYPE string OPTIONAL
        !entity_type            TYPE string OPTIONAL
        !message                TYPE bapi_msg OPTIONAL
        !message_unlimited      TYPE string OPTIONAL
        !filter_param           TYPE string OPTIONAL
        !operation_no           TYPE i OPTIONAL .

    METHODS get_msg_container
        REDEFINITION .
  PROTECTED SECTION.
ENDCLASS.
CLASS /iwbep/cx_mgw_busi_exception IMPLEMENTATION.
  METHOD constructor.
  ENDMETHOD.
ENDCLASS.