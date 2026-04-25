**FREE
// Named constants and data structures in RPG IV

// --- Named constants (no storage at runtime) ---
dcl-c MAX_RETRIES  3;
dcl-c PI           3.14159265358979;
dcl-c COMPANY_NAME 'Acme Corp';
dcl-c TAX_RATE     0.0825;

// --- Qualified data structure (subfields accessed via DS.field) ---
dcl-ds customer qualified;
  id        int(10);
  name      varchar(50);
  balance   packed(11:2);
  active    ind;
end-ds;

// --- Data structure with array subfield ---
dcl-ds order qualified;
  orderId   int(10);
  itemCount int(5);
  itemPrice packed(9:2) dim(5);              // 5-element array subfield
end-ds;

dcl-s subtotal packed(11:2);
dcl-s tax      packed(11:2);
dcl-s total    packed(11:2);
dcl-s i        int(5);

// --- Populate the customer ---
customer.id      = 1001;
customer.name    = COMPANY_NAME;
customer.balance = 5000.00;
customer.active  = *on;

dsply ('Customer ID    = ' + %char(customer.id));
dsply ('Customer name  = ' + customer.name);
dsply ('Balance        = ' + %char(customer.balance));

// --- Populate the order's array subfield ---
order.orderId   = 42;
order.itemCount = 3;
order.itemPrice(1) = 19.99;
order.itemPrice(2) = 49.95;
order.itemPrice(3) = 12.50;

// --- Sum the array (note: 1-based indexing) ---
subtotal = 0;
for i = 1 to order.itemCount;
  subtotal = subtotal + order.itemPrice(i);
endfor;

tax   = subtotal * TAX_RATE;                 // Constant used in expression
total = subtotal + tax;

dsply ('Subtotal       = ' + %char(subtotal));
dsply ('Tax (8.25%)    = ' + %char(tax));
dsply ('Total          = ' + %char(total));

// --- Trying to assign a wrong type fails at compile time ---
// customer.id = 'not a number';     // RNF7536: Operands not compatible

return;
