CLASS /iwbep/cx_mgw_not_impl_exc DEFINITION
  PUBLIC
  INHERITING FROM /iwbep/cx_mgw_tech_exception
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS constructor
      IMPORTING
        !textid                   LIKE if_t100_message=>t100key OPTIONAL
        !previous                 LIKE previous OPTIONAL
        !message_container        TYPE REF TO /iwbep/if_message_container OPTIONAL
        !http_status_code         TYPE /iwbep/mgw_http_status_code DEFAULT /iwbep/cx_mgw_tech_exception=>gcs_http_status_codes-not_implemented
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
ENDCLASS.
CLASS /iwbep/cx_mgw_not_impl_exc IMPLEMENTATION.
  METHOD constructor.
  ENDMETHOD.
ENDCLASS.