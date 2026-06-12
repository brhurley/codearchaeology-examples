FUNCTION z_calculate_tax.
*"----------------------------------------------------------------------
*"  IMPORTING
*"     VALUE(IV_AMOUNT) TYPE  P
*"     VALUE(IV_RATE)   TYPE  P DEFAULT '0.20'
*"  EXPORTING
*"     VALUE(EV_TAX)    TYPE  P
*"----------------------------------------------------------------------
  ev_tax = iv_amount * iv_rate.
ENDFUNCTION.
