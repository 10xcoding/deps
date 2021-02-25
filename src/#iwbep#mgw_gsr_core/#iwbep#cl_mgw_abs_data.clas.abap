CLASS /iwbep/cl_mgw_abs_data DEFINITION
  PUBLIC
  ABSTRACT
  CREATE PUBLIC .

  PUBLIC SECTION.
    TYPE-POOLS abap .

    INTERFACES /iwbep/if_mgw_appl_srv_runtime .
    INTERFACES /iwbep/if_mgw_badi_srv_runtime .
    INTERFACES /iwbep/if_mgw_conv_srv_runtime .
    INTERFACES /iwbep/if_mgw_core_srv_runtime .
    INTERFACES /iwbep/if_mgw_sost_srv_runtime .
    INTERFACES if_badi_interface .

    ALIASES check_if_is_not_modified
      FOR /iwbep/if_mgw_conv_srv_runtime~check_if_is_not_modified .
    ALIASES copy_data_to_ref
      FOR /iwbep/if_mgw_conv_srv_runtime~copy_data_to_ref .
    ALIASES move_corresponding
      FOR /iwbep/if_mgw_conv_srv_runtime~move_corresponding .
    ALIASES set_etag
      FOR /iwbep/if_mgw_conv_srv_runtime~set_etag .
    ALIASES set_header
      FOR /iwbep/if_mgw_conv_srv_runtime~set_header .

    TYPES:
      BEGIN OF ty_s_media_resource.
        INCLUDE TYPE /iwbep/if_mgw_core_srv_runtime=>ty_s_media_resource.
    TYPES:
      END OF ty_s_media_resource .

    CLASS-DATA gc_note_id_func_import_0_1 TYPE /iwbep/mgw_sap_note_id VALUE 2009874. "#EC NOTEXT
    CLASS-DATA gc_note_id_cache_control TYPE /iwbep/mgw_sap_note_id VALUE 1969660. "#EC NOTEXT
  PROTECTED SECTION.

    DATA mo_context TYPE REF TO /iwbep/if_mgw_context .
    INTERFACE /iwbep/if_mgw_core_srv_runtime LOAD .
    DATA mr_request_details TYPE REF TO /iwbep/if_mgw_core_srv_runtime=>ty_s_mgw_request_context .
    DATA mr_service_document_name TYPE REF TO string .
    DATA mr_service_version TYPE REF TO numc4 .
    DATA mr_service_namespace TYPE REF TO string .
ENDCLASS.
CLASS /iwbep/cl_mgw_abs_data IMPLEMENTATION.
ENDCLASS.