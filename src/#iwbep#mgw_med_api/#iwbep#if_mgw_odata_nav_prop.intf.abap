*"* components of interface /IWBEP/IF_MGW_ODATA_NAV_PROP
interface /iwbep/if_mgw_odata_nav_prop
  public .


  interfaces /iwbep/if_mgw_odata_annotatabl .
  interfaces /iwbep/if_mgw_odata_item .

  aliases create_annotation
    for /iwbep/if_mgw_odata_annotatabl~create_annotation .
  aliases get_id
    for /iwbep/if_mgw_odata_item~get_id .
  aliases set_label_from_text_element
    for /iwbep/if_mgw_odata_item~set_label_from_text_element .
  aliases set_name
    for /iwbep/if_mgw_odata_item~set_name .

  types:
    begin of ty_s_mgw_odata_nav_property,
      technical_name   type fieldname,
      navigation_property type ref to /iwbep/if_mgw_odata_nav_prop,
    end of ty_s_mgw_odata_nav_property .
  types:
    ty_t_mgw_odata_nav_properties type standard table of ty_s_mgw_odata_nav_property with key technical_name .

  interface /iwbep/if_mgw_med_odata_types load .
  methods set_title
    importing
      !iv_text_key type /iwbep/if_mgw_med_odata_types=>ty_e_med_text_key
      !iv_text_obj_type type /iwbep/if_mgw_med_odata_types=>ty_e_med_text_obj_type
    raising
      /iwbep/cx_mgw_med_exception .
  type-pools abap .
  methods set_disabled
    importing
      !iv_disabled type abap_bool default abap_true .
endinterface.
