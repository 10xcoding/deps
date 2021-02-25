CLASS zcl_ztxc_service_examp_mpc DEFINITION
  PUBLIC
  INHERITING FROM /iwbep/cl_mgw_push_abs_model
  CREATE PUBLIC .

  PUBLIC SECTION.

    TYPES:
       ts_customerzstructure TYPE zcustomer_s. .
    TYPES:
  tt_customerzstructure TYPE STANDARD TABLE OF ts_customerzstructure. .
    TYPES:
      BEGIN OF ts_text_element,
        artifact_name        TYPE c LENGTH 40,       " technical name
        artifact_type        TYPE c LENGTH 4,
        parent_artifact_name TYPE c LENGTH 40, " technical name
        parent_artifact_type TYPE c LENGTH 4,
        text_symbol          TYPE textpoolky,
      END OF ts_text_element. .
    TYPES:
           tt_text_elements TYPE STANDARD TABLE OF ts_text_element WITH KEY text_symbol. .
    TYPES:
       ts_customerztable TYPE zcustomer_t. .
    TYPES:
  tt_customerztable TYPE STANDARD TABLE OF ts_customerztable. .
    TYPES:
       ts_customersaptable TYPE kna1. .
    TYPES:
  tt_customersaptable TYPE STANDARD TABLE OF ts_customersaptable. .
    TYPES:
       ts_customersapstructure TYPE e1kna1c. .
    TYPES:
  tt_customersapstructure TYPE STANDARD TABLE OF ts_customersapstructure. .

    CONSTANTS gc_customersapstructure TYPE /iwbep/if_mgw_med_odata_types=>ty_e_med_entity_name VALUE 'CustomerSapStructure' ##NO_TEXT.
    CONSTANTS gc_customersaptable TYPE /iwbep/if_mgw_med_odata_types=>ty_e_med_entity_name VALUE 'CustomerSapTable' ##NO_TEXT.
    CONSTANTS gc_customerzstructure TYPE /iwbep/if_mgw_med_odata_types=>ty_e_med_entity_name VALUE 'CustomerZStructure' ##NO_TEXT.
    CONSTANTS gc_customerztable TYPE /iwbep/if_mgw_med_odata_types=>ty_e_med_entity_name VALUE 'CustomerZTable' ##NO_TEXT.

    METHODS load_text_elements
          FINAL
      RETURNING
        VALUE(rt_text_elements) TYPE tt_text_elements
      RAISING
        /iwbep/cx_mgw_med_exception .

    METHODS define
        REDEFINITION .
    METHODS get_last_modified
        REDEFINITION .
  PROTECTED SECTION.
ENDCLASS.
CLASS zcl_ztxc_service_examp_mpc IMPLEMENTATION.
  METHOD load_text_elements.
  ENDMETHOD.
ENDCLASS.