"! <p class="shorttext synchronized" lang="en">OData Channel - Response Utility</p>
interface /IWBEP/IF_MGW_RESPONSE_UTIL
  public .


  types:
    "! <p class="shorttext synchronized" lang="en">Property path segment (including key specification)</p>
    BEGIN OF ty_s_path_component,
      property_name TYPE fieldname,
      "key information needs to be filled for navigation properties with target cardinality n
      keys          TYPE /iwbep/t_mgw_name_value_pair,
    END OF ty_s_path_component .
  types:
    "! <p class="shorttext synchronized" lang="en">Property path in table format</p>
    ty_t_path_component TYPE STANDARD TABLE OF ty_s_path_component WITH KEY property_name .

  "! <p>Use method <strong>GET_TARGET_IN_ENTITY</strong> for new developments. It replaces
  "! this method and provides more flexibility.</p>
  "!
  "! <p>Constructs the message target (an URI substring pointing to a property) for
  "! a given path specified through internal (ABAP) names.
  "! Hyphen ('-') is used as a path separator.</p>
  "!
  "! <p>If a property cannot be identified an exception is raised. If a
  "! part of the property path already points to a simple property, the
  "! remainder of the path is not evaluated anymore.</p>
  "!
  "! @parameter IV_ENTITY_TYPE   | <p class="shorttext synchronized" lang="en">Entity Type</p>
  "! @parameter IV_PROPERTY_PATH | <p class="shorttext synchronized" lang="en">Path to property (internal names separated by hyphen)</p>
  "! @parameter RV_TARGET        | <p class="shorttext synchronized" lang="en">Target (URI substring)</p>
  methods GET_TARGET_FROM_INTERNAL_NAMES
    importing
      !IV_ENTITY_TYPE type /IWBEP/MGW_TECH_NAME
      !IV_PROPERTY_PATH type STRING
    returning
      value(RV_TARGET) type STRING
    raising
      /IWBEP/CX_MGW_TECH_EXCEPTION .
  "! <p>Constructs the message target (an URI substring) for an entity in an entity set or
  "! a property in such an entity.</p>
  "!
  "! <p>Either use <strong>is_key</strong> and <strong>iv_property_path</strong> or
  "! <strong>it_property_path</strong>.</p>
  "!
  "! <p>In the first case, <strong>is_key</strong> must be a structure that contains the key fields of the entity
  "! and <strong>iv_property_path</strong> is a path description based on internal (ABAP) names with hyphen ('-')
  "! as a separator.</p>
  "!
  "! <p>In the second case, <strong>it_property_path</strong> must contain a first row with empty property_name and
  "! a key specification of the entity as name/value pairs. Additional rows in <strong>it_property_path</strong>
  "! specify subsequent path segments based on internal (ABAP) names.</p>
  "!
  "! @parameter iv_entity_set_name           | <p class="shorttext synchronized" lang="en">Entity set name</p>
  "! @parameter is_key                       | <p class="shorttext synchronized" lang="en">Structure containing the key of the entity</p>
  "! @parameter iv_property_path             | <p class="shorttext synchronized" lang="en">Simple property path (internal names separated by hyphen)</p>
  "! @parameter it_property_path             | <p class="shorttext synchronized" lang="en">Property path in table format (alternative to IS_KEY + Path)</p>
  "! @parameter rv_target                    | <p class="shorttext synchronized" lang="en">Message target</p>
  "! @raising   /iwbep/cx_mgw_tech_exception | <p class="shorttext synchronized" lang="en">Technical Exception</p>
  methods GET_TARGET_IN_ENTITY_SET
    importing
      !IV_ENTITY_SET_NAME type /IWBEP/MGW_TECH_NAME
      !IS_KEY type DATA optional
      !IV_PROPERTY_PATH type STRING optional
      !IT_PROPERTY_PATH type TY_T_PATH_COMPONENT optional
    returning
      value(RV_TARGET) type STRING
    raising
      /IWBEP/CX_MGW_TECH_EXCEPTION .
   "! <p>Constructs the message target (an URI substring) for an entity or
  "! a property in an entity.</p>
  "!
  "! <p>Either use <strong>iv_property_path</strong> or
  "! <strong>it_property_path</strong> to specify the property path.</p>
  "!
  "! <p><strong>iv_property_path</strong> is a path description based on internal (ABAP) names with hyphen ('-')
  "! as a separator. It may contain navigation properties but the target cardinality of the underlying
  "! associations are restricted to 'to-one'.</p>
  "!
  "! <p><strong>it_property_path</strong> describes the property path as an ordered list. Each row contains
  "! a property based on internal (ABAP) names. If such a property describes a navigation property with
  "! target cardinality 'to-many' then the entity keys need to be specified, too.</p>
  "!
  "! @parameter iv_entity_set_name           | <p class="shorttext synchronized" lang="en">Entity set name</p>
  "! @parameter is_entity_type_name          | <p class="shorttext synchronized" lang="en">Entity type name</p>
  "! @parameter iv_property_path             | <p class="shorttext synchronized" lang="en">Simple property path (internal names separated by hyphen)</p>
  "! @parameter it_property_path             | <p class="shorttext synchronized" lang="en">Property path in table format (alternative to IS_KEY + Path)</p>
  "! @parameter rv_target                    | <p class="shorttext synchronized" lang="en">Message target</p>
  "! @raising   /iwbep/cx_mgw_tech_exception | <p class="shorttext synchronized" lang="en">Technical Exception</p>
  methods GET_TARGET_IN_ENTITY
    importing
      !IV_ENTITY_SET_NAME type /IWBEP/MGW_TECH_NAME optional
      !IV_ENTITY_TYPE_NAME type /IWBEP/MGW_TECH_NAME
      !IV_PROPERTY_PATH type STRING optional
      !IT_PROPERTY_PATH type TY_T_PATH_COMPONENT optional
    returning
      value(RV_TARGET) type STRING
    raising
      /IWBEP/CX_MGW_TECH_EXCEPTION .
endinterface.
