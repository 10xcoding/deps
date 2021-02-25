CLASS /iwbep/cl_mgw_push_abs_data DEFINITION
  PUBLIC
  INHERITING FROM /iwbep/cl_mgw_abs_data
  ABSTRACT
  CREATE PUBLIC .

  PUBLIC SECTION.

    TYPES s TYPE char1 .

    METHODS /iwbep/if_mgw_core_srv_runtime~create_entity
        REDEFINITION .
    METHODS /iwbep/if_mgw_core_srv_runtime~delete_entity
        REDEFINITION .
    METHODS /iwbep/if_mgw_core_srv_runtime~exec_service_operation
        REDEFINITION .
    METHODS /iwbep/if_mgw_core_srv_runtime~read_entity
        REDEFINITION .
    METHODS /iwbep/if_mgw_core_srv_runtime~read_entityset
        REDEFINITION .
    METHODS /iwbep/if_mgw_core_srv_runtime~update_entity
        REDEFINITION .
  PROTECTED SECTION.

    METHODS check_subscription_authority
          ABSTRACT
      IMPORTING
        !is_subscription_data TYPE /iwbep/s_mgw_db_sub_data
      RAISING
        /iwbep/cx_mgw_busi_exception
        /iwbep/cx_mgw_tech_exception .
ENDCLASS.
CLASS /iwbep/cl_mgw_push_abs_data IMPLEMENTATION.
ENDCLASS.