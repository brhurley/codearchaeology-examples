REPORT zvariables.

" --- Elementary Type Declarations ---
" Integer (i) - whole numbers
DATA lv_count TYPE i.
DATA lv_year TYPE i.

" Packed decimal (p) - fixed-point numbers for currency/precision
DATA lv_price TYPE p LENGTH 8 DECIMALS 2.
DATA lv_rate TYPE p LENGTH 5 DECIMALS 4.

" Character (c) - fixed-length text
DATA lv_code TYPE c LENGTH 5.

" String - variable-length text
DATA lv_name TYPE string.
DATA lv_message TYPE string.

" Numeric text (n) - digits stored as characters
DATA lv_zipcode TYPE n LENGTH 5.

" Date (d) - 8-character date in YYYYMMDD format
DATA lv_date TYPE d.

" Time (t) - 6-character time in HHMMSS format
DATA lv_time TYPE t.

" Float (f) - IEEE 754 floating-point
DATA lv_pi TYPE f.

" Hexadecimal (x) - raw byte data
DATA lv_hex TYPE x LENGTH 2.

" --- Assigning Values ---
WRITE: / '=== Basic Variables ==='.

lv_count = 42.
lv_year = 2026.
WRITE: / 'count:', lv_count.
WRITE: / 'year:', lv_year.

" Packed decimal for money - no floating-point rounding issues
lv_price = '1234.56'.
lv_rate = '0.0750'.
WRITE: / 'price:', lv_price.
WRITE: / 'rate:', lv_rate.

" Character types
lv_code = 'AB12'.
lv_name = 'ABAP Developer'.
WRITE: / 'code:', lv_code.
WRITE: / 'name:', lv_name.

" Numeric text - preserves leading zeros
lv_zipcode = '00501'.
WRITE: / 'zipcode:', lv_zipcode.

" Date and time
lv_date = '20260226'.
lv_time = '143000'.
WRITE: / 'date:', lv_date.
WRITE: / 'time:', lv_time.

" Float
lv_pi = '3.14159265'.
WRITE: / 'pi:', lv_pi.

" --- Chained Declarations ---
WRITE: / ''.
WRITE: / '=== Chained Declarations ==='.

" The colon-comma syntax declares multiple variables
DATA: lv_a TYPE i,
      lv_b TYPE i,
      lv_c TYPE i.

lv_a = 10.
lv_b = 20.
lv_c = lv_a + lv_b.
WRITE: / 'a:', lv_a, 'b:', lv_b, 'a + b:', lv_c.

" --- Constants ---
WRITE: / ''.
WRITE: / '=== Constants ==='.

" CONSTANTS cannot be changed after declaration
CONSTANTS: lc_max TYPE i VALUE 100,
           lc_pi TYPE p LENGTH 8 DECIMALS 5 VALUE '3.14159',
           lc_label TYPE string VALUE 'ABAP Constants'.

WRITE: / 'max:', lc_max.
WRITE: / 'pi:', lc_pi.
WRITE: / 'label:', lc_label.

" --- Type Conversions ---
WRITE: / ''.
WRITE: / '=== Type Conversions ==='.

DATA lv_int TYPE i.
DATA lv_str TYPE string.
DATA lv_packed TYPE p LENGTH 8 DECIMALS 2.
DATA lv_float TYPE f.

" String to integer
lv_str = '256'.
lv_int = lv_str.
WRITE: / 'String to int:', lv_str, '->', lv_int.

" Integer to string
lv_int = 999.
lv_str = lv_int.
WRITE: / 'Int to string:', 999, '->', lv_str.

" Integer to packed decimal
lv_int = 42.
lv_packed = lv_int.
WRITE: / 'Int to packed:', lv_int, '->', lv_packed.

" Packed to float
lv_packed = '123.45'.
lv_float = lv_packed.
WRITE: / 'Packed to float:', lv_packed, '->', lv_float.

" --- Date Arithmetic ---
WRITE: / ''.
WRITE: / '=== Date Arithmetic ==='.

DATA lv_today TYPE d.
DATA lv_future TYPE d.
DATA lv_diff TYPE i.

lv_today = '20260226'.
lv_future = '20260401'.
lv_diff = lv_future - lv_today.
WRITE: / 'Today:', lv_today.
WRITE: / 'Future:', lv_future.
WRITE: / 'Days between:', lv_diff.

" --- Structures ---
WRITE: / ''.
WRITE: / '=== Structures ==='.

" A structure groups related fields together
TYPES: BEGIN OF ty_employee,
         id TYPE i,
         name TYPE string,
         department TYPE string,
         salary TYPE p LENGTH 8 DECIMALS 2,
       END OF ty_employee.

DATA ls_emp TYPE ty_employee.
ls_emp-id = 1001.
ls_emp-name = 'Ada Lovelace'.
ls_emp-department = 'Engineering'.
ls_emp-salary = '95000.00'.

WRITE: / 'Employee ID:', ls_emp-id.
WRITE: / 'Name:', ls_emp-name.
WRITE: / 'Dept:', ls_emp-department.
WRITE: / 'Salary:', ls_emp-salary.
