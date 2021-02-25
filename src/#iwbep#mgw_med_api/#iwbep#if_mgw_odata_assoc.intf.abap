*"* components of interface /IWBEP/IF_MGW_ODATA_ASSOC
interface /IWBEP/IF_MGW_ODATA_ASSOC
  public .


  interfaces /IWBEP/IF_MGW_ODATA_ANNOTATABL .
  interfaces /IWBEP/IF_MGW_ODATA_ITEM .

  aliases GET_ID
    for /IWBEP/IF_MGW_ODATA_ITEM~GET_ID .
  aliases SET_LABEL_FROM_TEXT_ELEMENT
    for /IWBEP/IF_MGW_ODATA_ITEM~SET_LABEL_FROM_TEXT_ELEMENT .
  aliases SET_NAME
    for /IWBEP/IF_MGW_ODATA_ITEM~SET_NAME .

  types S type CHAR1 .

  type-pools ABAP .
  methods CREATE_REF_CONSTRAINT
    importing
      !IV_PRINCIPAL_IS_LEFT type ABAP_BOOL default ABAP_TRUE
    returning
      value(RO_REF_CONSTRAINT) type ref to /IWBEP/IF_MGW_ODATA_REF_CONSTR
    raising
      /IWBEP/CX_MGW_MED_EXCEPTION .
  methods CREATE_ASSOC_SET
    importing
      !IV_ASSOC_SET_NAME type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME
    returning
      value(RO_ASSOC_SET) type ref to /IWBEP/IF_MGW_ODATA_ASSOC_SET
    raising
      /IWBEP/CX_MGW_MED_EXCEPTION .
  methods SET_LEFT_ENTITY_ID
    importing
      !IV_ENTITY_ID type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_ID .
  methods SET_RIGHT_ENTITY_ID
    importing
      !IV_ENTITY_ID type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_ID .
  methods SET_DISABLED
    importing
      !IV_DISABLED type ABAP_BOOL default ABAP_TRUE .
  methods GET_REF_CONSTRAINT
    returning
      value(RO_REF_CONSTRAINT) type ref to /IWBEP/IF_MGW_ODATA_REF_CONSTR
    raising
      /IWBEP/CX_MGW_MED_EXCEPTION .
endinterface.
