*"* components of interface /IWBEP/IF_MGW_ODATA_CMPLX_PROP
interface /IWBEP/IF_MGW_ODATA_CMPLX_PROP
  public .


  interfaces /IWBEP/IF_MGW_ODATA_ANNOTATABL .
  interfaces /IWBEP/IF_MGW_ODATA_ITEM .

  types:
    begin of ty_s_mgw_odata_cplx_property,
      technical_name type fieldname,
      complex_property type ref to /iwbep/if_mgw_odata_CMPLX_PROP,
    end of ty_s_mgw_odata_cplx_property .
  types:
    ty_t_mgw_odata_cplx_properties type standard table of ty_s_mgw_odata_cplx_property with key technical_name .

  methods GET_COMPLEX_TYPE
    returning
      value(RO_COMPLEX_TYPE) type ref to /IWBEP/IF_MGW_ODATA_CMPLX_TYPE .
  interface /IWBEP/IF_MGW_MED_ODATA_TYPES load .
  methods GET_NAME
    returning
      value(RV_NAME) type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME .
  methods GET_ABAP_NAME
    returning
      value(RV_ABAP_NAME) type FIELDNAME .
  type-pools ABAP .
  methods SET_DISABLED
    importing
      !IV_DISABLED type ABAP_BOOL default ABAP_TRUE .
endinterface.
