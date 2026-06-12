REPORT zfunctions.

" ============================================================
" Local class: methods (ABAP Objects)
" ============================================================
CLASS lcl_math DEFINITION.
  PUBLIC SECTION.
    " Instance method, RETURNING enables function-style calls
    METHODS add
      IMPORTING iv_a          TYPE i
                iv_b          TYPE i
      RETURNING VALUE(rv_sum) TYPE i.

    " Default parameter: iv_exp is optional, defaults to 2
    METHODS power
      IMPORTING iv_base          TYPE i
                iv_exp           TYPE i DEFAULT 2
      RETURNING VALUE(rv_result) TYPE i.

    " Static method using recursion
    CLASS-METHODS factorial
      IMPORTING iv_n             TYPE i
      RETURNING VALUE(rv_result) TYPE i.
ENDCLASS.

CLASS lcl_math IMPLEMENTATION.
  METHOD add.
    rv_sum = iv_a + iv_b.
  ENDMETHOD.

  METHOD power.
    rv_result = 1.
    DO iv_exp TIMES.
      rv_result = rv_result * iv_base.
    ENDDO.
  ENDMETHOD.

  METHOD factorial.
    " n! = n * (n-1)!  - the method calls itself
    IF iv_n <= 1.
      rv_result = 1.
    ELSE.
      rv_result = iv_n * factorial( iv_n - 1 ).
    ENDIF.
  ENDMETHOD.
ENDCLASS.

START-OF-SELECTION.

  DATA(lo_math) = NEW lcl_math( ).

  " Instance method called like a function (RETURNING)
  DATA(lv_sum) = lo_math->add( iv_a = 4 iv_b = 9 ).
  WRITE |4 + 9 = { lv_sum }|.

  " Default parameter: iv_exp omitted, so it defaults to 2
  DATA(lv_sq) = lo_math->power( iv_base = 5 ).
  WRITE / |5 squared = { lv_sq }|.

  " Default parameter overridden
  DATA(lv_cube) = lo_math->power( iv_base = 2 iv_exp = 3 ).
  WRITE / |2 cubed = { lv_cube }|.

  " Static method (=>) using recursion
  DATA(lv_fact) = lcl_math=>factorial( 5 ).
  WRITE / |5! = { lv_fact }|.

  " Classic subroutine: PERFORM ... USING ... CHANGING
  DATA lv_area TYPE i.
  PERFORM rectangle_area USING 6 7 CHANGING lv_area.
  WRITE / |Area of 6 x 7 = { lv_area }|.

  " Subroutine with input parameters only
  PERFORM show_label USING `Total` 42.

" ============================================================
" Classic subroutines (FORM ... ENDFORM) live at the end
" ============================================================
FORM rectangle_area USING    p_width  TYPE i
                             p_height TYPE i
                    CHANGING p_area   TYPE i.
  " p_local is local: visible only inside this subroutine
  DATA p_local TYPE i.
  p_local = p_width * p_height.
  p_area  = p_local.
ENDFORM.

FORM show_label USING p_text  TYPE string
                      p_value TYPE i.
  WRITE / |{ p_text }: { p_value }|.
ENDFORM.
