FUNCTION zbapi_fixedasset_create.
*"----------------------------------------------------------------------
*"*"Local Interface:
*"  IMPORTING
*"     VALUE(IS_KEY) LIKE  BAPI1022_KEY STRUCTURE  BAPI1022_KEY
*"     VALUE(IS_GENERALDATA) LIKE  BAPI1022_FEGLG001 STRUCTURE
*"        BAPI1022_FEGLG001 OPTIONAL
*"     VALUE(IS_GENERALDATAX) LIKE  BAPI1022_FEGLG001X STRUCTURE
*"        BAPI1022_FEGLG001X OPTIONAL
*"     VALUE(IS_TIMEDEPENDENTDATA) LIKE  BAPI1022_FEGLG003 STRUCTURE
*"        BAPI1022_FEGLG003 OPTIONAL
*"     VALUE(IS_TIMEDEPENDENTDATAX) LIKE  BAPI1022_FEGLG003X STRUCTURE
*"        BAPI1022_FEGLG003X OPTIONAL
*"  EXPORTING
*"     VALUE(EV_COMPANYCODE) LIKE  BAPI1022_1-COMP_CODE
*"     VALUE(EV_ASSET) LIKE  BAPI1022_1-ASSETMAINO
*"     VALUE(EV_SUBNUMBER) LIKE  BAPI1022_1-ASSETSUBNO
*"     VALUE(ES_ASSETCREATED) LIKE  BAPI1022_REFERENCE STRUCTURE
*"        BAPI1022_REFERENCE
*"     VALUE(ES_EXPORT) LIKE  BAPIRET2 STRUCTURE  BAPIRET2
*"----------------------------------------------------------------------

  DATA:
        ls_bapi_ret TYPE bapiret2.

  CALL FUNCTION 'BAPI_FIXEDASSET_CREATE1'
    EXPORTING
      key                = is_key
      generaldata        = is_generaldata
      generaldatax       = is_generaldatax
      timedependentdata  = is_timedependentdata
      timedependentdatax = is_timedependentdatax
    IMPORTING
      companycode        = ev_companycode
      asset              = ev_asset
      assetcreated       = es_assetcreated
*      return             = ls_bapi_ret.
*      return             = es_return.

  CALL FUNCTION 'BAPI_TRANSACTION_COMMIT'
    EXPORTING
      wait   = 'X'
    IMPORTING
      return = ls_bapi_ret.

ENDFUNCTION.