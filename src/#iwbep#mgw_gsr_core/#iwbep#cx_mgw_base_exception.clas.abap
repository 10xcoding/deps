CLASS /iwbep/cx_mgw_base_exception DEFINITION
  PUBLIC
  INHERITING FROM cx_static_check
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_t100_message .

    TYPES:
      ty_bal_t_msg TYPE STANDARD TABLE OF bal_s_msg .

    DATA message_container TYPE REF TO /iwbep/if_message_container .
    DATA http_status_code TYPE /iwbep/mgw_http_status_code .
    DATA http_header_parameters TYPE /iwbep/t_mgw_name_value_pair .
    DATA sap_note_id TYPE /iwbep/mgw_sap_note_id .
    DATA msg_code TYPE string .

    METHODS constructor
      IMPORTING
        !textid                 LIKE if_t100_message=>t100key OPTIONAL
        !previous               LIKE previous OPTIONAL
        !message_container      TYPE REF TO /iwbep/if_message_container OPTIONAL
        !http_status_code       TYPE /iwbep/mgw_http_status_code OPTIONAL
        !http_header_parameters TYPE /iwbep/t_mgw_name_value_pair OPTIONAL
        !sap_note_id            TYPE /iwbep/mgw_sap_note_id OPTIONAL
        !msg_code               TYPE string OPTIONAL .
    METHODS get_msg_container
      RETURNING
        VALUE(ro_message_container) TYPE REF TO /iwbep/if_message_container .
    METHODS get_http_status_code
      RETURNING
        VALUE(rv_http_status_code) TYPE /iwbep/mgw_http_status_code .
    METHODS get_http_header_attributes
      RETURNING
        VALUE(rt_http_header_parameters) TYPE /iwbep/t_mgw_name_value_pair .
    METHODS get_sap_note_id
      RETURNING
        VALUE(rv_sap_note_id) TYPE /iwbep/mgw_sap_note_id .

    METHODS if_message~get_longtext
        REDEFINITION .
    METHODS if_message~get_text
        REDEFINITION .
  PROTECTED SECTION.

    METHODS _get_text
      IMPORTING
        VALUE(text)   TYPE REF TO if_message
      RETURNING
        VALUE(result) TYPE string .
    TYPE-POOLS abap .
    METHODS _get_longtext
      IMPORTING
        VALUE(preserve_newlines)  TYPE abap_bool OPTIONAL
        VALUE(text)               TYPE REF TO if_message
        VALUE(t100_prepend_short) TYPE abap_bool DEFAULT 'X'
      RETURNING
        VALUE(result)             TYPE string .
ENDCLASS.
CLASS /iwbep/cx_mgw_base_exception IMPLEMENTATION.
  METHOD constructor.
  ENDMETHOD.
  METHOD _get_longtext.
  ENDMETHOD.
  METHOD _get_text.
  ENDMETHOD.
  METHOD get_msg_container.
  ENDMETHOD.
  METHOD get_http_header_attributes.
  ENDMETHOD.
  METHOD get_http_status_code.
  ENDMETHOD.
  METHOD get_sap_note_id.
  ENDMETHOD.
ENDCLASS.