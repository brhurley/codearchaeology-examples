**FREE
// Type conversions in RPG IV

dcl-s amount     packed(9:2) inz(1234.56);
dcl-s amountStr  varchar(20);
dcl-s parsed     packed(9:2);
dcl-s rounded    int(10);
dcl-s formatted  char(15);

dcl-s isoDateStr varchar(10) inz('2026-04-25');
dcl-s parsedDate date(*iso);
dcl-s dayCount   int(10);

// --- Number to string ---
amountStr = %char(amount);                   // '1234.56'
dsply ('amount as string  = ' + amountStr);

// --- String to packed decimal ---
parsed = %dec('98765.43' : 9 : 2);           // value, total digits, decimals
dsply ('parsed decimal    = ' + %char(parsed));

// --- Packed decimal to integer (truncates fraction) ---
rounded = %int(amount);                      // 1234 (NOT rounded; truncated)
dsply ('truncated to int  = ' + %char(rounded));

// --- %INTH rounds half-away-from-zero ---
rounded = %inth(amount);                     // 1235
dsply ('rounded half away = ' + %char(rounded));

// --- Edit code: format with currency, commas, decimal ---
// Edit code 'J' = comma + decimal + leading sign for negatives
formatted = %editc(amount : 'J');            // '   1,234.56'
dsply ('edited (J)        =' + formatted);

// --- Edit word: custom output template ---
// '   $0.  .  ' inserts dollar sign and decimal point
formatted = %editw(amount : '   $0.  .  ');
dsply ('edited (word)     =' + formatted);

// --- String to date and back ---
parsedDate = %date(isoDateStr : *iso);
dsply ('parsed date       = ' + %char(parsedDate));

// --- Date arithmetic: %DIFF returns difference in given units ---
dayCount = %diff(parsedDate : %date() : *days);
dsply ('days from today   = ' + %char(dayCount));

return;
