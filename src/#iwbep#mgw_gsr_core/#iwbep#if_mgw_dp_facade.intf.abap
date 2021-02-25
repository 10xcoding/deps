*"* components of interface /IWBEP/IF_MGW_DP_FACADE
interface /IWBEP/IF_MGW_DP_FACADE
  public .


  methods GET_REQUEST_HEADER
    returning
      value(RT_HEADER) type TIHTTPNVP .
endinterface.
