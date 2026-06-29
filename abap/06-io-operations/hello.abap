REPORT zinput.

PARAMETERS: p_cust TYPE string LOWER CASE,
            p_qty  TYPE i DEFAULT 1.

START-OF-SELECTION.
  WRITE / |Customer: { p_cust }|.
  WRITE / |Quantity: { p_qty }|.
