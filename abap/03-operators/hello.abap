REPORT zhello.

" -------- Arithmetic operators --------
DATA: lv_a TYPE i VALUE 17,
      lv_b TYPE i VALUE 4,
      lv_r TYPE i.

lv_r = lv_a + lv_b.
WRITE: / |17 +   4 = { lv_r }|.

lv_r = lv_a - lv_b.
WRITE: / |17 -   4 = { lv_r }|.

lv_r = lv_a * lv_b.
WRITE: / |17 *   4 = { lv_r }|.

lv_r = lv_a DIV lv_b.
WRITE: / |17 DIV 4 = { lv_r }|.

lv_r = lv_a MOD lv_b.
WRITE: / |17 MOD 4 = { lv_r }|.

lv_r = lv_a ** 2.
WRITE: / |17 **  2 = { lv_r }|.

" -------- Compound assignment --------
DATA: lv_counter TYPE i VALUE 10.
lv_counter = lv_counter + 5.
WRITE: / |counter after + 5: { lv_counter }|.

" -------- Comparison operators --------
" ABAP supports both symbolic and word forms.
IF lv_a > lv_b.
  WRITE: / 'a > b is true (symbolic form)'.
ENDIF.

IF lv_a GT lv_b.
  WRITE: / 'a GT b is true (word form)'.
ENDIF.

IF lv_a <> lv_b.
  WRITE: / 'a <> b is true'.
ENDIF.

IF lv_a EQ 17.
  WRITE: / 'a EQ 17 is true'.
ENDIF.

" -------- Logical operators --------
IF lv_a > 10 AND lv_b < 10.
  WRITE: / 'AND: both conditions hold'.
ENDIF.

IF lv_a < 0 OR lv_b > 0.
  WRITE: / 'OR: at least one condition holds'.
ENDIF.

IF NOT lv_a = 0.
  WRITE: / 'NOT: a is not zero'.
ENDIF.

" -------- String concatenation --------
DATA: lv_left  TYPE string VALUE 'Hello',
      lv_right TYPE string VALUE 'ABAP',
      lv_msg   TYPE string.

" The && operator concatenates without preserving trailing blanks.
lv_msg = lv_left && ', ' && lv_right && '!'.
WRITE: / lv_msg.

" -------- String templates (ABAP 7.40+) --------
DATA(lv_name)  = 'World'.
DATA(lv_hello) = |Welcome, { lv_name }!|.
WRITE: / lv_hello.

" -------- IS INITIAL predicate --------
" 'Initial' means the type-default value (empty string, 0, etc.).
DATA lv_empty TYPE string.
IF lv_empty IS INITIAL.
  WRITE: / 'lv_empty IS INITIAL'.
ENDIF.

DATA lv_zero TYPE i.
IF lv_zero IS INITIAL.
  WRITE: / 'lv_zero IS INITIAL (value 0)'.
ENDIF.

" -------- Operator precedence --------
" ** binds tighter than * /, which bind tighter than + -.
" Parentheses must have spaces around them in ABAP.
DATA lv_calc TYPE i.
lv_calc = ( 2 + 3 ) * 4.
WRITE: / |( 2 + 3 ) * 4 = { lv_calc }|.

lv_calc = 2 + 3 * 4.
WRITE: / |2 + 3 * 4   = { lv_calc }|.
