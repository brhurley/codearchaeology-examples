REPORT zio.

" ============================================================
" 1. Console output - WRITE and the list buffer
" ============================================================
WRITE 'Order Confirmation'.
WRITE / '=================='.

" ============================================================
" 2. Formatted output with string templates
" ============================================================
DATA(lv_customer) = `ACME Corp`.        " backticks => string type

DATA lv_unit_price TYPE p LENGTH 8 DECIMALS 2.
DATA lv_quantity   TYPE i.
lv_unit_price = '29.95'.
lv_quantity   = 3.

DATA lv_amount TYPE p LENGTH 8 DECIMALS 2.
lv_amount = lv_unit_price * lv_quantity.

" { } embeds an expression; DECIMALS pins the fraction digits
WRITE / |Customer  : { lv_customer }|.
WRITE / |Unit price: { lv_unit_price DECIMALS = 2 } EUR|.
WRITE / |Quantity  : { lv_quantity }|.
WRITE / |Amount    : { lv_amount DECIMALS = 2 } EUR|.

" ============================================================
" 3. Reading and parsing an input record
" ============================================================
" In real SAP this record would arrive from a selection screen
" or a file; here we parse a delimited string - a core I/O task.
DATA(lv_record) = `Alice,Engineering,7`.
SPLIT lv_record AT ',' INTO DATA(lv_name)
                            DATA(lv_dept)
                            DATA(lv_years).

WRITE / '------------------'.
WRITE / |Name : { lv_name }|.
WRITE / |Dept : { lv_dept }|.
WRITE / |Years: { lv_years }|.

" Reassemble fields into one line
DATA lv_summary TYPE string.
CONCATENATE lv_name lv_dept lv_years
  INTO lv_summary SEPARATED BY ` | `.
WRITE / |Summary: { lv_summary }|.

" ============================================================
" 4. Tabular output from an internal table
" ============================================================
TYPES: BEGIN OF ty_item,
         name TYPE string,
         qty  TYPE i,
         cost TYPE p LENGTH 8 DECIMALS 2,
       END OF ty_item.
DATA lt_items TYPE TABLE OF ty_item.

APPEND VALUE #( name = 'Keyboard' qty = 3 cost = '29.95' )  TO lt_items.
APPEND VALUE #( name = 'Monitor'  qty = 1 cost = '149.00' ) TO lt_items.
APPEND VALUE #( name = 'Cable'    qty = 5 cost = '4.50' )   TO lt_items.

DATA lv_grand TYPE p LENGTH 10 DECIMALS 2.

WRITE / '------------------'.
LOOP AT lt_items INTO DATA(ls_item).
  DATA lv_line TYPE p LENGTH 10 DECIMALS 2.
  lv_line  = ls_item-qty * ls_item-cost.
  lv_grand = lv_grand + lv_line.
  WRITE / |{ ls_item-name }: { ls_item-qty } x { ls_item-cost DECIMALS = 2 } = { lv_line DECIMALS = 2 }|.
ENDLOOP.

WRITE / |Grand total: { lv_grand DECIMALS = 2 } EUR|.
