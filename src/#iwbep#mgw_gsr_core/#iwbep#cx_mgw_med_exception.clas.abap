CLASS /iwbep/cx_mgw_med_exception DEFINITION
  PUBLIC
  INHERITING FROM /iwbep/cx_mgw_tech_exception
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    CONSTANTS:
      BEGIN OF action_canceled_by_user,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MED',
        msgno TYPE symsgno VALUE '101',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF action_canceled_by_user .
    CONSTANTS:
      BEGIN OF action_exists,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '114',
        attr1 TYPE scx_attrname VALUE 'ENTITY_NAME',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF action_exists .
    CONSTANTS:
      BEGIN OF action_inconsistent,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '131',
        attr1 TYPE scx_attrname VALUE 'ENTITY_NAME',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF action_inconsistent .
    CONSTANTS:
      BEGIN OF action_not_found,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '103',
        attr1 TYPE scx_attrname VALUE 'ENTITY_NAME',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF action_not_found .
    CONSTANTS:
      BEGIN OF assoc_exists,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '111',
        attr1 TYPE scx_attrname VALUE 'ENTITY_NAME',
        attr2 TYPE scx_attrname VALUE 'FIELD_NAME',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF assoc_exists .
    CONSTANTS:
      BEGIN OF assoc_neq_data_object,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '121',
        attr1 TYPE scx_attrname VALUE 'ENTITY_NAME',
        attr2 TYPE scx_attrname VALUE 'ENTITY_2_NAME',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF assoc_neq_data_object .
    CONSTANTS:
      BEGIN OF assoc_not_found,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '104',
        attr1 TYPE scx_attrname VALUE 'ENTITY_NAME',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF assoc_not_found .
    CONSTANTS:
      BEGIN OF assoc_set_no_entity_sets,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '147',
        attr1 TYPE scx_attrname VALUE 'ENTITY_NAME',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF assoc_set_no_entity_sets .
    CONSTANTS:
      BEGIN OF assoc_set_ref_dis_assoc,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '132',
        attr1 TYPE scx_attrname VALUE 'ENTITY_NAME',
        attr2 TYPE scx_attrname VALUE 'ENTITY_2_NAME',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF assoc_set_ref_dis_assoc .
    CONSTANTS:
      BEGIN OF assoc_set_ref_dis_entity_set,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '133',
        attr1 TYPE scx_attrname VALUE 'ENTITY_NAME',
        attr2 TYPE scx_attrname VALUE 'ENTITY_2_NAME',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF assoc_set_ref_dis_entity_set .
    CONSTANTS:
      BEGIN OF assoc_set_ref_dis_entity_type,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '138',
        attr1 TYPE scx_attrname VALUE 'ENTITY_NAME',
        attr2 TYPE scx_attrname VALUE 'ENTITY_2_NAME',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF assoc_set_ref_dis_entity_type .
    CONSTANTS:
      BEGIN OF check_length_error,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '152',
        attr1 TYPE scx_attrname VALUE 'LENGTH',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF check_length_error .
    CONSTANTS:
      BEGIN OF check_namesp_delimiter_error,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '156',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF check_namesp_delimiter_error .
    CONSTANTS:
      BEGIN OF check_namesp_length_error,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '154',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF check_namesp_length_error .
    CONSTANTS:
      BEGIN OF check_namesp_separator_error,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '151',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF check_namesp_separator_error .
    CONSTANTS:
      BEGIN OF check_name_empty_error,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '150',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF check_name_empty_error .
    CONSTANTS:
      BEGIN OF check_name_invalid_chars_error,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '155',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF check_name_invalid_chars_error .
    CONSTANTS:
      BEGIN OF check_name_special_chars_error,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '153',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF check_name_special_chars_error .
    CONSTANTS:
      BEGIN OF class_element_text_not_found,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '129',
        attr1 TYPE scx_attrname VALUE 'CLASS_TXT_ELEMENT_ID',
        attr2 TYPE scx_attrname VALUE 'CLASS_NAME',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF class_element_text_not_found .
    CONSTANTS:
      BEGIN OF class_not_exists,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MED',
        msgno TYPE symsgno VALUE '033',
        attr1 TYPE scx_attrname VALUE 'CLASS_NAME',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF class_not_exists .
    CONSTANTS:
      BEGIN OF complextype_exists,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '113',
        attr1 TYPE scx_attrname VALUE 'ENTITY_NAME',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF complextype_exists .
    CONSTANTS:
      BEGIN OF complex_type_not_found,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '102',
        attr1 TYPE scx_attrname VALUE 'ENTITY_NAME',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF complex_type_not_found .
    CONSTANTS:
      BEGIN OF complex_type_ref_disabled,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '135',
        attr1 TYPE scx_attrname VALUE 'ENTITY_NAME',
        attr2 TYPE scx_attrname VALUE 'ENTITY_2_NAME',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF complex_type_ref_disabled .
    CONSTANTS:
      BEGIN OF complex_type_ref_not_found,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '140',
        attr1 TYPE scx_attrname VALUE 'ENTITY_NAME',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF complex_type_ref_not_found .
    CONSTANTS:
      BEGIN OF conversion_binding_not_allowed,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MED',
        msgno TYPE symsgno VALUE '037',
        attr1 TYPE scx_attrname VALUE 'STRUCTURE_NAME',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF conversion_binding_not_allowed .
    CONSTANTS:
      BEGIN OF ddic_element_not_found,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '106',
        attr1 TYPE scx_attrname VALUE 'ELEMENT_NAME',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF ddic_element_not_found .
    CONSTANTS:
      BEGIN OF ddic_structure_not_found,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '158',
        attr1 TYPE scx_attrname VALUE 'ELEMENT_NAME',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF ddic_structure_not_found .
    CONSTANTS:
      BEGIN OF ddic_type_not_supported,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '159',
        attr1 TYPE scx_attrname VALUE 'ELEMENT_NAME',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF ddic_type_not_supported .
    CONSTANTS:
      BEGIN OF documentation_for_item_exist,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MED',
        msgno TYPE symsgno VALUE '045',
        attr1 TYPE scx_attrname VALUE 'ENTITY_NAME',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF documentation_for_item_exist .
    CONSTANTS:
      BEGIN OF dummy_field_not_found,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '165',
        attr1 TYPE scx_attrname VALUE 'FIELD_NAME',
        attr2 TYPE scx_attrname VALUE 'ELEMENT_NAME',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF dummy_field_not_found .
    CONSTANTS:
      BEGIN OF entity_exists,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '110',
        attr1 TYPE scx_attrname VALUE 'ENTITY_NAME',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF entity_exists .
    CONSTANTS:
      BEGIN OF entity_id_not_found,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '105',
        attr1 TYPE scx_attrname VALUE 'ENTITY_ID',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF entity_id_not_found .
    CONSTANTS:
      BEGIN OF entity_not_found,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '101',
        attr1 TYPE scx_attrname VALUE 'ENTITY_NAME',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF entity_not_found .
    CONSTANTS:
      BEGIN OF entity_no_key,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '119',
        attr1 TYPE scx_attrname VALUE 'ENTITY_NAME',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF entity_no_key .
    CONSTANTS:
      BEGIN OF entity_set_ref_no_entity_type,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '139',
        attr1 TYPE scx_attrname VALUE 'ENTITY_NAME',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF entity_set_ref_no_entity_type .
    CONSTANTS:
      BEGIN OF entity_type_not_found,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '101',
        attr1 TYPE scx_attrname VALUE 'ENTITY_NAME',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF entity_type_not_found .
    CONSTANTS:
      BEGIN OF existing_inheritance,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '128',
        attr1 TYPE scx_attrname VALUE 'ENTITY_NAME',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF existing_inheritance .
    CONSTANTS:
      BEGIN OF extend_same_model_not_allowed,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '146',
        attr1 TYPE scx_attrname VALUE 'OBJECT_MODEL_NAME',
        attr2 TYPE scx_attrname VALUE 'OBJECT_MODEL_VERSION',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF extend_same_model_not_allowed .
    CONSTANTS:
      BEGIN OF func_imprt_input_node_disabled,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '136',
        attr1 TYPE scx_attrname VALUE 'ENTITY_NAME',
        attr2 TYPE scx_attrname VALUE 'ENTITY_2_NAME',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF func_imprt_input_node_disabled .
    CONSTANTS:
      BEGIN OF func_imprt_input_node_not_fnd,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '142',
        attr1 TYPE scx_attrname VALUE 'ENTITY_NAME',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF func_imprt_input_node_not_fnd .
    CONSTANTS:
      BEGIN OF func_imprt_outpt_node_disabled,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '137',
        attr1 TYPE scx_attrname VALUE 'ENTITY_NAME',
        attr2 TYPE scx_attrname VALUE 'ENTITY_2_NAME',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF func_imprt_outpt_node_disabled .
    CONSTANTS:
      BEGIN OF func_imprt_outpt_node_not_fnd,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '143',
        attr1 TYPE scx_attrname VALUE 'ENTITY_NAME',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF func_imprt_outpt_node_not_fnd .
    CONSTANTS:
      BEGIN OF interface_not_implemented,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MED',
        msgno TYPE symsgno VALUE '029',
        attr1 TYPE scx_attrname VALUE 'INTERFACE_NAME',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF interface_not_implemented .
    CONSTANTS:
      BEGIN OF model_corrupt_expand,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '148',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF model_corrupt_expand .
    CONSTANTS:
      BEGIN OF model_is_in_use_no_delete,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MED',
        msgno TYPE symsgno VALUE '025',
        attr1 TYPE scx_attrname VALUE 'SERVICE_NAME',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF model_is_in_use_no_delete .
    CONSTANTS:
      BEGIN OF model_locked,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MED',
        msgno TYPE symsgno VALUE '005',
        attr1 TYPE scx_attrname VALUE 'USERNAME',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF model_locked .
    CONSTANTS:
      BEGIN OF model_no_conversions,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '090',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF model_no_conversions .
    CONSTANTS:
      BEGIN OF model_provider_not_found,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '024',
        attr1 TYPE scx_attrname VALUE 'OBJECT_MODEL_NAME',
        attr2 TYPE scx_attrname VALUE 'OBJECT_MODEL_VERSION',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF model_provider_not_found .
    CONSTANTS:
      BEGIN OF mod_srv_asgn_exist,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '046',
        attr1 TYPE scx_attrname VALUE 'OBJECT_MODEL_NAME',
        attr2 TYPE scx_attrname VALUE 'OBJECT_MODEL_VERSION',
        attr3 TYPE scx_attrname VALUE 'SERVICE_NAME',
        attr4 TYPE scx_attrname VALUE 'SERVICE_VERSION',
      END OF mod_srv_asgn_exist .
    CONSTANTS:
      BEGIN OF mod_srv_asgn_exist_no_delete,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '047',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF mod_srv_asgn_exist_no_delete .
    CONSTANTS:
      BEGIN OF mod_srv_asgn_not_created,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '043',
        attr1 TYPE scx_attrname VALUE 'OBJECT_MODEL_NAME',
        attr2 TYPE scx_attrname VALUE 'OBJECT_MODEL_VERSION',
        attr3 TYPE scx_attrname VALUE 'SERVICE_NAME',
        attr4 TYPE scx_attrname VALUE 'SERVICE_VERSION',
      END OF mod_srv_asgn_not_created .
    CONSTANTS:
      BEGIN OF mod_srv_asgn_not_deleted,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '044',
        attr1 TYPE scx_attrname VALUE 'OBJECT_MODEL_NAME',
        attr2 TYPE scx_attrname VALUE 'OBJECT_MODEL_VERSION',
        attr3 TYPE scx_attrname VALUE 'SERVICE_NAME',
        attr4 TYPE scx_attrname VALUE 'SERVICE_VERSION',
      END OF mod_srv_asgn_not_deleted .
    CONSTANTS:
      BEGIN OF mod_srv_asgn_not_locked,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '045',
        attr1 TYPE scx_attrname VALUE 'OBJECT_MODEL_NAME',
        attr2 TYPE scx_attrname VALUE 'OBJECT_MODEL_VERSION',
        attr3 TYPE scx_attrname VALUE 'SERVICE_NAME',
        attr4 TYPE scx_attrname VALUE 'SERVICE_VERSION',
      END OF mod_srv_asgn_not_locked .
    CONSTANTS:
      BEGIN OF namespaces_not_allowed,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '055',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF namespaces_not_allowed .
    CONSTANTS:
      BEGIN OF namespace_not_valid,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '054',
        attr1 TYPE scx_attrname VALUE 'SERVICE_NAMESPACE',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF namespace_not_valid .
    CONSTANTS:
      BEGIN OF navigation_property_inconsist,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '122',
        attr1 TYPE scx_attrname VALUE 'ENTITY_NAME',
        attr2 TYPE scx_attrname VALUE 'ENTITY_2_NAME',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF navigation_property_inconsist .
    CONSTANTS:
      BEGIN OF nav_property_neq_prop,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '123',
        attr1 TYPE scx_attrname VALUE 'ENTITY_NAME',
        attr2 TYPE scx_attrname VALUE 'ENTITY_2_NAME',
        attr3 TYPE scx_attrname VALUE 'ENTITY_3_NAME',
        attr4 TYPE scx_attrname VALUE '',
      END OF nav_property_neq_prop .
    CONSTANTS:
      BEGIN OF nav_prop_eq_ent_type_exist,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '130',
        attr1 TYPE scx_attrname VALUE 'ENTITY_NAME',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF nav_prop_eq_ent_type_exist .
    CONSTANTS:
      BEGIN OF nav_prop_ref_assoc_not_found,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '141',
        attr1 TYPE scx_attrname VALUE 'ENTITY_NAME',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF nav_prop_ref_assoc_not_found .
    CONSTANTS:
      BEGIN OF nav_prop_ref_dis_assoc,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '134',
        attr1 TYPE scx_attrname VALUE 'ENTITY_NAME',
        attr2 TYPE scx_attrname VALUE 'ENTITY_2_NAME',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF nav_prop_ref_dis_assoc .
    CONSTANTS:
      BEGIN OF object_model_exist,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '037',
        attr1 TYPE scx_attrname VALUE 'OBJECT_MODEL_NAME',
        attr2 TYPE scx_attrname VALUE 'OBJECT_MODEL_VERSION',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF object_model_exist .
    CONSTANTS:
      BEGIN OF object_model_not_created,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '033',
        attr1 TYPE scx_attrname VALUE 'OBJECT_MODEL_NAME',
        attr2 TYPE scx_attrname VALUE 'OBJECT_MODEL_VERSION',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF object_model_not_created .
    CONSTANTS:
      BEGIN OF object_model_not_deleted,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '034',
        attr1 TYPE scx_attrname VALUE 'OBJECT_MODEL_NAME',
        attr2 TYPE scx_attrname VALUE 'OBJECT_MODEL_VERSION',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF object_model_not_deleted .
    CONSTANTS:
      BEGIN OF object_model_not_found,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '023',
        attr1 TYPE scx_attrname VALUE 'OBJECT_MODEL_NAME',
        attr2 TYPE scx_attrname VALUE 'OBJECT_MODEL_VERSION',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF object_model_not_found .
    CONSTANTS:
      BEGIN OF object_model_not_locked,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '036',
        attr1 TYPE scx_attrname VALUE 'OBJECT_MODEL_NAME',
        attr2 TYPE scx_attrname VALUE 'OBJECT_MODEL_VERSION',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF object_model_not_locked .
    CONSTANTS:
      BEGIN OF object_model_not_updated,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '035',
        attr1 TYPE scx_attrname VALUE 'OBJECT_MODEL_NAME',
        attr2 TYPE scx_attrname VALUE 'OBJECT_MODEL_VERSION',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF object_model_not_updated .
    CONSTANTS:
      BEGIN OF property_clash,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '167',
        attr1 TYPE scx_attrname VALUE 'FIELD_NAME',
        attr2 TYPE scx_attrname VALUE 'ENTITY_NAME',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF property_clash .
    CONSTANTS:
      BEGIN OF property_clash_sfe,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '166',
        attr1 TYPE scx_attrname VALUE 'FIELD_NAME',
        attr2 TYPE scx_attrname VALUE 'ENTITY_NAME',
        attr3 TYPE scx_attrname VALUE 'INCLUDE_STRUCTURE',
        attr4 TYPE scx_attrname VALUE '',
      END OF property_clash_sfe .
    CONSTANTS:
      BEGIN OF property_exists,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '112',
        attr1 TYPE scx_attrname VALUE 'ENTITY_NAME',
        attr2 TYPE scx_attrname VALUE 'FIELD_NAME',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF property_exists .
    CONSTANTS:
      BEGIN OF property_field_exists,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '115',
        attr1 TYPE scx_attrname VALUE 'ENTITY_NAME',
        attr2 TYPE scx_attrname VALUE 'FIELD_NAME',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF property_field_exists .
    CONSTANTS:
      BEGIN OF property_item_not_found,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '168',
        attr1 TYPE scx_attrname VALUE 'FIELD_NAME',
        attr2 TYPE scx_attrname VALUE 'ENTITY_NAME',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF property_item_not_found .
    CONSTANTS:
      BEGIN OF property_item_not_found_ct,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '169',
        attr1 TYPE scx_attrname VALUE 'FIELD_NAME',
        attr2 TYPE scx_attrname VALUE 'ENTITY_NAME',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF property_item_not_found_ct .
    CONSTANTS:
      BEGIN OF property_not_found,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '100',
        attr1 TYPE scx_attrname VALUE 'ENTITY_NAME',
        attr2 TYPE scx_attrname VALUE 'ENTITY_2_NAME',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF property_not_found .
    CONSTANTS:
      BEGIN OF property_not_in_dependent,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '125',
        attr1 TYPE scx_attrname VALUE 'ENTITY_NAME',
        attr2 TYPE scx_attrname VALUE 'ENTITY_2_NAME',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF property_not_in_dependent .
    CONSTANTS:
      BEGIN OF property_not_in_principal,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '124',
        attr1 TYPE scx_attrname VALUE 'ENTITY_NAME',
        attr2 TYPE scx_attrname VALUE 'ENTITY_2_NAME',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF property_not_in_principal .
    CONSTANTS:
      BEGIN OF property_no_field,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '118',
        attr1 TYPE scx_attrname VALUE 'ENTITY_NAME',
        attr2 TYPE scx_attrname VALUE 'ENTITY_2_NAME',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF property_no_field .
    CONSTANTS:
      BEGIN OF property_no_internal_type,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '149',
        attr1 TYPE scx_attrname VALUE 'ENTITY_NAME',
        attr2 TYPE scx_attrname VALUE 'ENTITY_2_NAME',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF property_no_internal_type .
    CONSTANTS:
      BEGIN OF property_no_name,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '117',
        attr1 TYPE scx_attrname VALUE 'ENTITY_NAME',
        attr2 TYPE scx_attrname VALUE 'FIELD_NAME',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF property_no_name .
    CONSTANTS:
      BEGIN OF property_no_type,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '116',
        attr1 TYPE scx_attrname VALUE 'ENTITY_NAME',
        attr2 TYPE scx_attrname VALUE 'ENTITY_2_NAME',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF property_no_type .
    CONSTANTS:
      BEGIN OF ref_const_dependent_disabled,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '145',
        attr1 TYPE scx_attrname VALUE 'ENTITY_NAME',
        attr2 TYPE scx_attrname VALUE 'ENTITY_2_NAME',
        attr3 TYPE scx_attrname VALUE 'ENTITY_3_NAME',
        attr4 TYPE scx_attrname VALUE '',
      END OF ref_const_dependent_disabled .
    CONSTANTS:
      BEGIN OF ref_const_dependent_not_found,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '144',
        attr1 TYPE scx_attrname VALUE 'ENTITY_NAME',
        attr2 TYPE scx_attrname VALUE 'ENTITY_2_NAME',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF ref_const_dependent_not_found .
    CONSTANTS:
      BEGIN OF ref_const_principal_disabled,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '145',
        attr1 TYPE scx_attrname VALUE 'ENTITY_NAME',
        attr2 TYPE scx_attrname VALUE 'ENTITY_2_NAME',
        attr3 TYPE scx_attrname VALUE 'ENTITY_3_NAME',
        attr4 TYPE scx_attrname VALUE '',
      END OF ref_const_principal_disabled .
    CONSTANTS:
      BEGIN OF ref_const_principal_not_found,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '144',
        attr1 TYPE scx_attrname VALUE 'ENTITY_NAME',
        attr2 TYPE scx_attrname VALUE 'ENTITY_2_NAME',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF ref_const_principal_not_found .
    CONSTANTS:
      BEGIN OF service_exist,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '042',
        attr1 TYPE scx_attrname VALUE 'SERVICE_NAME',
        attr2 TYPE scx_attrname VALUE 'SERVICE_VERSION',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF service_exist .
    CONSTANTS:
      BEGIN OF service_locked,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MED',
        msgno TYPE symsgno VALUE '019',
        attr1 TYPE scx_attrname VALUE 'USERNAME',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF service_locked .
    CONSTANTS:
      BEGIN OF service_not_created,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '038',
        attr1 TYPE scx_attrname VALUE 'SERVICE_NAME',
        attr2 TYPE scx_attrname VALUE 'SERVICE_VERSION',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF service_not_created .
    CONSTANTS:
      BEGIN OF service_not_deleted,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '039',
        attr1 TYPE scx_attrname VALUE 'SERVICE_NAME',
        attr2 TYPE scx_attrname VALUE 'SERVICE_VERSION',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF service_not_deleted .
    CONSTANTS:
      BEGIN OF service_not_exists,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MED',
        msgno TYPE symsgno VALUE '042',
        attr1 TYPE scx_attrname VALUE 'SERVICE_NAME',
        attr2 TYPE scx_attrname VALUE 'SERVICE_VERSION',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF service_not_exists .
    CONSTANTS:
      BEGIN OF service_not_locked,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '041',
        attr1 TYPE scx_attrname VALUE 'SERVICE_NAME',
        attr2 TYPE scx_attrname VALUE 'SERVICE_VERSION',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF service_not_locked .
    CONSTANTS:
      BEGIN OF service_not_updated,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '040',
        attr1 TYPE scx_attrname VALUE 'SERVICE_NAME',
        attr2 TYPE scx_attrname VALUE 'SERVICE_VERSION',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF service_not_updated .
    CONSTANTS:
      BEGIN OF syntax_error_in_class,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MED',
        msgno TYPE symsgno VALUE '032',
        attr1 TYPE scx_attrname VALUE 'CLASS_NAME',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF syntax_error_in_class .
    CONSTANTS:
      BEGIN OF tag_exists,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '163',
        attr1 TYPE scx_attrname VALUE 'TAG_ID',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF tag_exists .
    CONSTANTS:
      BEGIN OF type_not_supported,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '120',
        attr1 TYPE scx_attrname VALUE 'TYPE',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF type_not_supported .
    CONSTANTS:
      BEGIN OF vocab_create_failed,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '081',
        attr1 TYPE scx_attrname VALUE 'VOCAB_ID',
        attr2 TYPE scx_attrname VALUE 'VOCAB_VERSION',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF vocab_create_failed .
    CONSTANTS:
      BEGIN OF vocab_delete_failed,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '082',
        attr1 TYPE scx_attrname VALUE 'VOCAB_ID',
        attr2 TYPE scx_attrname VALUE 'VOCAB_VERSION',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF vocab_delete_failed .
    CONSTANTS:
      BEGIN OF vocab_exists,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '080',
        attr1 TYPE scx_attrname VALUE 'VOCAB_ID',
        attr2 TYPE scx_attrname VALUE 'VOCAB_VERSION',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF vocab_exists .
    CONSTANTS:
      BEGIN OF vocab_locked,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '086',
        attr1 TYPE scx_attrname VALUE 'USERNAME',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF vocab_locked .
    CONSTANTS:
      BEGIN OF vocab_lock_failed,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '084',
        attr1 TYPE scx_attrname VALUE 'VOCAB_ID',
        attr2 TYPE scx_attrname VALUE 'VOCAB_VERSION',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF vocab_lock_failed .
    CONSTANTS:
      BEGIN OF vocab_not_found,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '085',
        attr1 TYPE scx_attrname VALUE 'VOCAB_ID',
        attr2 TYPE scx_attrname VALUE 'VOCAB_VERSION',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF vocab_not_found .
    CONSTANTS:
      BEGIN OF vocab_update_failed,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '083',
        attr1 TYPE scx_attrname VALUE 'VOCAB_ID',
        attr2 TYPE scx_attrname VALUE 'VOCAB_VERSION',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF vocab_update_failed .
    CONSTANTS:
      BEGIN OF vocan_already_assigned,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '077',
        attr1 TYPE scx_attrname VALUE 'VOCAN_TECH_NAME',
        attr2 TYPE scx_attrname VALUE 'VOCAN_VERSION',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF vocan_already_assigned .
    CONSTANTS:
      BEGIN OF vocan_create_failed,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '071',
        attr1 TYPE scx_attrname VALUE 'VOCAN_TECH_NAME',
        attr2 TYPE scx_attrname VALUE 'VOCAN_VERSION',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF vocan_create_failed .
    CONSTANTS:
      BEGIN OF vocan_delete_failed,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '072',
        attr1 TYPE scx_attrname VALUE 'VOCAN_TECH_NAME',
        attr2 TYPE scx_attrname VALUE 'VOCAN_VERSION',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF vocan_delete_failed .
    CONSTANTS:
      BEGIN OF vocan_exists,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '070',
        attr1 TYPE scx_attrname VALUE 'VOCAN_TECH_NAME',
        attr2 TYPE scx_attrname VALUE 'VOCAN_VERSION',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF vocan_exists .
    CONSTANTS:
      BEGIN OF vocan_locked,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '076',
        attr1 TYPE scx_attrname VALUE 'USERNAME',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF vocan_locked .
    CONSTANTS:
      BEGIN OF vocan_lock_failed,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '074',
        attr1 TYPE scx_attrname VALUE 'VOCAN_TECH_NAME',
        attr2 TYPE scx_attrname VALUE 'VOCAN_VERSION',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF vocan_lock_failed .
    CONSTANTS:
      BEGIN OF vocan_not_found,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '075',
        attr1 TYPE scx_attrname VALUE 'VOCAN_TECH_NAME',
        attr2 TYPE scx_attrname VALUE 'VOCAN_VERSION',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF vocan_not_found .
    CONSTANTS:
      BEGIN OF vocan_service_not_assigned,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '078',
        attr1 TYPE scx_attrname VALUE 'VOCAN_TECH_NAME',
        attr2 TYPE scx_attrname VALUE 'VOCAN_VERSION',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF vocan_service_not_assigned .
    CONSTANTS:
      BEGIN OF vocan_unassign_main_service,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '079',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF vocan_unassign_main_service .
    CONSTANTS:
      BEGIN OF property_xsd_type,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '171',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF property_xsd_type .
    CONSTANTS:
      BEGIN OF vocan_update_failed,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '073',
        attr1 TYPE scx_attrname VALUE 'VOCAN_TECH_NAME',
        attr2 TYPE scx_attrname VALUE 'VOCAN_VERSION',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF vocan_update_failed .
    CONSTANTS:
      BEGIN OF wrong_version,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MED',
        msgno TYPE symsgno VALUE '035',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF wrong_version .
    CONSTANTS:
      BEGIN OF property_xsd_type_with_name,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '172',
        attr1 TYPE scx_attrname VALUE 'ENTITY_NAME',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF property_xsd_type_with_name .
    CONSTANTS:
      BEGIN OF vocab_con_exp_if,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '087',
        attr1 TYPE scx_attrname VALUE 'VOCAB_CON_EXP_PARAMETER_COUNT',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF vocab_con_exp_if .
    CONSTANTS:
      BEGIN OF vocab_con_exp_not,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '088',
        attr1 TYPE scx_attrname VALUE 'VOCAB_CON_EXP_PARAMETER_COUNT',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF vocab_con_exp_not .
    CONSTANTS:
      BEGIN OF vocab_con_exp_two_child,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '089',
        attr1 TYPE scx_attrname VALUE 'VOCAB_CON_EXP_PARAMETER_COUNT',
        attr2 TYPE scx_attrname VALUE 'VOCAB_CON_EXP_OPERATOR',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF vocab_con_exp_two_child .
    CONSTANTS:
      BEGIN OF text_type_not_supported,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '093',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF text_type_not_supported .
    CONSTANTS:
      BEGIN OF text_elem_symbol_initial,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '094',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF text_elem_symbol_initial .
    CONSTANTS:
      BEGIN OF text_elem_container_initial,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '095',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF text_elem_container_initial .
    CONSTANTS:
      BEGIN OF text_elem_type_initial,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '096',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF text_elem_type_initial .
    CONSTANTS:
      BEGIN OF text_elem_id_initial,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '097',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF text_elem_id_initial .
    CONSTANTS:
      BEGIN OF text_id_already_exists,
        msgid TYPE symsgid VALUE '/IWBEP/CM_MGW_RT',
        msgno TYPE symsgno VALUE '098',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF text_id_already_exists .
    DATA class_name TYPE string .
    DATA class_txt_element_id TYPE string .
    DATA element_name TYPE string .
    DATA entity_2_name TYPE /iwbep/med_external_name .
    DATA entity_3_name TYPE /iwbep/med_external_name .
    DATA entity_id TYPE /iwbep/med_entity_id .
    DATA entity_name TYPE /iwbep/med_external_name .
    DATA field_name TYPE fieldname .
    DATA include_structure TYPE string .
    DATA interface_name TYPE string .
    DATA length TYPE i .
    DATA object_model_name TYPE /iwbep/med_mdl_technical_name .
    DATA object_model_version TYPE /iwbep/med_mdl_version .
    DATA service_name TYPE /iwbep/med_grp_technical_name .
    DATA service_version TYPE /iwbep/med_grp_version .
    DATA structure_name TYPE string .
    DATA tag_id TYPE /iwbep/if_mgw_med_odata_types=>ty_e_med_tag .
    DATA type TYPE string .
    DATA username TYPE syuname .
    DATA vocab_id TYPE /iwbep/med_vocab_id .
    DATA vocab_version TYPE /iwbep/med_vocab_version .
    DATA vocan_tech_name TYPE /iwbep/med_va_file_tech_name .
    DATA vocan_version TYPE /iwbep/med_va_file_version .
    DATA vocab_con_exp_parameter_count TYPE string .
    DATA vocab_con_exp_operator TYPE string .

    CLASS-METHODS class_constructor .
    METHODS constructor
      IMPORTING
        !textid                        LIKE if_t100_message=>t100key OPTIONAL
        !previous                      LIKE previous OPTIONAL
        !message_container             TYPE REF TO /iwbep/if_message_container OPTIONAL
        !http_status_code              TYPE /iwbep/mgw_http_status_code DEFAULT gcs_http_status_codes-internal_server_error
        !http_header_parameters        TYPE /iwbep/t_mgw_name_value_pair OPTIONAL
        !sap_note_id                   TYPE /iwbep/mgw_sap_note_id OPTIONAL
        !msg_code                      TYPE string OPTIONAL
        !method                        TYPE string OPTIONAL
        !internal_service_version      TYPE /iwbep/med_grp_version OPTIONAL
        !external_service_name         TYPE /iwbep/med_grp_external_name OPTIONAL
        !service_namespace             TYPE string OPTIONAL
        !internal_service_name         TYPE /iwbep/med_grp_technical_name OPTIONAL
        !operation                     TYPE char30 OPTIONAL
        !entity_type                   TYPE string OPTIONAL
        !action                        TYPE string OPTIONAL
        !type_returned                 TYPE string OPTIONAL
        !type_expected                 TYPE string OPTIONAL
        !nav_property                  TYPE /iwbep/med_external_name OPTIONAL
        !class_name                    TYPE string OPTIONAL
        !class_txt_element_id          TYPE string OPTIONAL
        !element_name                  TYPE string OPTIONAL
        !entity_2_name                 TYPE /iwbep/med_external_name OPTIONAL
        !entity_3_name                 TYPE /iwbep/med_external_name OPTIONAL
        !entity_id                     TYPE /iwbep/med_entity_id OPTIONAL
        !entity_name                   TYPE /iwbep/med_external_name OPTIONAL
        !field_name                    TYPE fieldname OPTIONAL
        !include_structure             TYPE string OPTIONAL
        !interface_name                TYPE string OPTIONAL
        !length                        TYPE i OPTIONAL
        !object_model_name             TYPE /iwbep/med_mdl_technical_name OPTIONAL
        !object_model_version          TYPE /iwbep/med_mdl_version OPTIONAL
        !service_name                  TYPE /iwbep/med_grp_technical_name OPTIONAL
        !service_version               TYPE /iwbep/med_grp_version OPTIONAL
        !structure_name                TYPE string OPTIONAL
        !tag_id                        TYPE /iwbep/if_mgw_med_odata_types=>ty_e_med_tag OPTIONAL
        !type                          TYPE string OPTIONAL
        !username                      TYPE syuname OPTIONAL
        !vocab_id                      TYPE /iwbep/med_vocab_id OPTIONAL
        !vocab_version                 TYPE /iwbep/med_vocab_version OPTIONAL
        !vocan_tech_name               TYPE /iwbep/med_va_file_tech_name OPTIONAL
        !vocan_version                 TYPE /iwbep/med_va_file_version OPTIONAL
        !vocab_con_exp_parameter_count TYPE string OPTIONAL
        !vocab_con_exp_operator        TYPE string OPTIONAL .
ENDCLASS.
CLASS /iwbep/cx_mgw_med_exception IMPLEMENTATION.
  METHOD constructor.
  ENDMETHOD.
  METHOD class_constructor.
  ENDMETHOD.
ENDCLASS.