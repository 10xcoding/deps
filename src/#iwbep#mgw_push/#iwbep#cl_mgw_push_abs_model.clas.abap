CLASS /iwbep/cl_mgw_push_abs_model DEFINITION
  PUBLIC
  INHERITING FROM /iwbep/cl_mgw_abs_model
  CREATE PUBLIC .

  PUBLIC SECTION.

    CONSTANTS gc_ent_type_notification TYPE string VALUE 'Notification'. "#EC NOTEXT
    CONSTANTS gc_ent_type_subscription TYPE string VALUE 'Subscription'. "#EC NOTEXT

    METHODS define
        REDEFINITION .
  PROTECTED SECTION.
ENDCLASS.
CLASS /iwbep/cl_mgw_push_abs_model IMPLEMENTATION.
ENDCLASS.