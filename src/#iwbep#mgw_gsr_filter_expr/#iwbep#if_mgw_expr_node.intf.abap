*"* components of interface /IWBEP/IF_MGW_EXPR_NODE
interface /IWBEP/IF_MGW_EXPR_NODE
  public .


  interfaces /IWBEP/IF_MGW_EXPR_VISITABLE .

  types:
    node_kind TYPE c LENGTH 1 .
  types:
    BEGIN OF error_information_s,
      position TYPE i,
      exception TYPE REF TO cx_root,
      text TYPE string,
    END OF error_information_s .

  constants KIND_UNARY type NODE_KIND value 'U'. "#EC NOTEXT
  constants KIND_BINARY type NODE_KIND value 'B'. "#EC NOTEXT
  constants KIND_LITERAL type NODE_KIND value 'C'. "#EC NOTEXT
  constants KIND_FUNCTION type NODE_KIND value 'F'. "#EC NOTEXT
  constants KIND_MEMBER type NODE_KIND value 'M'. "#EC NOTEXT
  constants KIND_PROPERTY type NODE_KIND value 'P'. "#EC NOTEXT
  data KIND type NODE_KIND .
  data ERROR_INFORMATION type ref to ERROR_INFORMATION_S .
  data MO_FILTER_PARSER type ref to /IWBEP/CL_MGW_FILTER_EXPRSN .

  methods PREPARE_CONVERTED_VALUES
    raising
      /IWBEP/CX_MGW_BUSI_EXCEPTION
      /IWBEP/CX_MGW_TECH_EXCEPTION .
endinterface.
