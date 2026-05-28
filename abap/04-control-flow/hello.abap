SELECT * FROM customers
  INTO TABLE @DATA(lt_customers)
  WHERE country = 'US'.

LOOP AT lt_customers INTO DATA(ls_customer).
  CHECK ls_customer-status = 'ACTIVE'.
  " process active US customers
ENDLOOP.
