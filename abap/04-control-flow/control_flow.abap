REPORT zcontrol.

" --- IF / ELSEIF / ELSE ---
DATA(lv_score) = 85.
IF lv_score >= 90.
  WRITE 'Grade: A'.
ELSEIF lv_score >= 80.
  WRITE 'Grade: B'.
ELSEIF lv_score >= 70.
  WRITE 'Grade: C'.
ELSE.
  WRITE 'Grade: F'.
ENDIF.

" --- CASE / WHEN with WHEN OTHERS ---
DATA(lv_day) = 3.
CASE lv_day.
  WHEN 1.
    WRITE / 'Monday'.
  WHEN 2.
    WRITE / 'Tuesday'.
  WHEN 3.
    WRITE / 'Wednesday'.
  WHEN OTHERS.
    WRITE / 'Unknown day'.
ENDCASE.

" --- DO ... TIMES with sy-index ---
DO 3 TIMES.
  WRITE / |Iteration { sy-index }|.
ENDDO.

" --- WHILE loop ---
DATA(lv_count) = 1.
WHILE lv_count <= 3.
  WRITE / |Count: { lv_count }|.
  lv_count = lv_count + 1.
ENDWHILE.

" --- LOOP AT an internal table ---
DATA: lt_fruits TYPE STANDARD TABLE OF string.
APPEND `apple` TO lt_fruits.
APPEND `banana` TO lt_fruits.
APPEND `cherry` TO lt_fruits.

LOOP AT lt_fruits INTO DATA(lv_fruit).
  WRITE / |Fruit: { lv_fruit }|.
ENDLOOP.

" --- EXIT and CONTINUE ---
DO 5 TIMES.
  IF sy-index = 4.
    EXIT.
  ENDIF.
  IF sy-index = 2.
    CONTINUE.
  ENDIF.
  WRITE / |Kept: { sy-index }|.
ENDDO.

" --- Nested loop with logical operators ---
DATA(lv_x) = 5.
DATA(lv_y) = 10.
IF lv_x > 0 AND lv_y > 0.
  WRITE / 'Both positive'.
ENDIF.

" --- COND expression (ABAP 7.40+) ---
DATA(lv_n) = 7.
DATA(lv_parity) = COND string(
  WHEN lv_n MOD 2 = 0 THEN `even`
  ELSE `odd` ).
WRITE / |{ lv_n } is { lv_parity }|.

" --- SWITCH expression (ABAP 7.40+) ---
DATA(lv_code) = 'B'.
DATA(lv_label) = SWITCH string( lv_code
  WHEN 'A' THEN `Alpha`
  WHEN 'B' THEN `Bravo`
  WHEN 'C' THEN `Charlie`
  ELSE `Unknown` ).
WRITE / |Code { lv_code } = { lv_label }|.
