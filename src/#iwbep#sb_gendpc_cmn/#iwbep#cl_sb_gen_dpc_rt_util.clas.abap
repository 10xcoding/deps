CLASS /iwbep/cl_sb_gen_dpc_rt_util DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    CLASS-METHODS resolve_constant_value
      CHANGING
        !cv_value TYPE any
      RAISING
        cx_sy_conversion_overflow .
    CLASS-METHODS pretty_printer
      CHANGING
        !ct_source TYPE rswsourcet
      RAISING
        /iwbep/cx_sb_gen_dpc_handler .
    CLASS-METHODS rfc_save_log
      IMPORTING
        !is_return            TYPE any OPTIONAL
        !it_return            TYPE ANY TABLE OPTIONAL
        !iv_entity_type       TYPE string OPTIONAL
        !it_key_tab           TYPE /iwbep/t_mgw_name_value_pair OPTIONAL
        !io_logger            TYPE REF TO /iwbep/cl_cos_logger
        !io_message_container TYPE REF TO /iwbep/if_message_container
      RAISING
        /iwbep/cx_mgw_busi_exception .
    CLASS-METHODS rfc_exception_handling
      IMPORTING
        !iv_subrc            TYPE sy-subrc
        !iv_exp_message_text TYPE /iwbep/mgw_bop_rfc_excep_text
        !io_logger           TYPE REF TO /iwbep/cl_cos_logger OPTIONAL
      RAISING
        /iwbep/cx_mgw_busi_exception
        /iwbep/cx_mgw_tech_exception .
    CLASS-METHODS raise_tech_err_to_consumer
      IMPORTING
        !is_t100key     TYPE scx_t100key OPTIONAL
        !iv_message_var TYPE /iwbep/mgw_bop_rfc_excep_text OPTIONAL
        !io_logger      TYPE REF TO /iwbep/cl_cos_logger OPTIONAL
          PREFERRED PARAMETER is_t100key
      RAISING
        /iwbep/cx_sd_gen_dpc_tech .
    CLASS-METHODS raise_business_err_to_consumer
      IMPORTING
        !iv_generic_error     TYPE boolean OPTIONAL
        !is_t100key           TYPE scx_t100key OPTIONAL
        !io_message_container TYPE REF TO /iwbep/if_message_container OPTIONAL
        !iv_message_var       TYPE /iwbep/mgw_bop_rfc_excep_text OPTIONAL
        !io_logger            TYPE REF TO /iwbep/cl_cos_logger OPTIONAL
      RAISING
        /iwbep/cx_sd_gen_dpc_busins .
    CLASS-METHODS get_rfc_destination
      IMPORTING
        !io_dp_facade             TYPE REF TO /iwbep/if_mgw_dp_facade
      RETURNING
        VALUE(rv_rfc_destination) TYPE rfcdest
      RAISING
        /iwbep/cx_mgw_tech_exception .
ENDCLASS.
CLASS /iwbep/cl_sb_gen_dpc_rt_util IMPLEMENTATION.
  METHOD resolve_constant_value.
  ENDMETHOD.
  METHOD pretty_printer.
  ENDMETHOD.
  METHOD rfc_save_log.
  ENDMETHOD.
  METHOD rfc_exception_handling.
  ENDMETHOD.
  METHOD raise_business_err_to_consumer.
  ENDMETHOD.
  METHOD raise_tech_err_to_consumer.
  ENDMETHOD.
  METHOD get_rfc_destination.
  ENDMETHOD.
ENDCLASS.