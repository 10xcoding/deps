*"* components of interface /IWBEP/IF_MGW_ENTRY_PROVIDER
interface /IWBEP/IF_MGW_ENTRY_PROVIDER
  public .


  methods READ_ENTRY_DATA
    exporting
      !ES_DATA type ANY
    raising
      /IWBEP/CX_MGW_TECH_EXCEPTION .
endinterface.
