**FREE
// Variables and Types in RPG IV
// Demonstrates the major built-in data types

// --- Character types ---
dcl-s firstName char(20) inz('Ada');         // Fixed-length, blank-padded
dcl-s lastName  char(20) inz('Lovelace');
dcl-s fullName  varchar(50);                 // Variable-length character

// --- Integer types ---
dcl-s smallNum   int(5)  inz(123);           // 2-byte signed integer
dcl-s mediumNum  int(10) inz(1000000);       // 4-byte signed integer
dcl-s bigNum     int(20) inz(9876543210);    // 8-byte signed integer
dcl-s posOnly    uns(10) inz(4000000000);    // 4-byte unsigned

// --- Decimal types (the workhorse of RPG) ---
dcl-s price     packed(7:2)  inz(1234.56);   // 7 digits total, 2 decimal
dcl-s quantity  zoned(5:0)   inz(42);        // 5 digits, 0 decimal
dcl-s rate      packed(9:5)  inz(0.07125);   // High-precision rate

// --- Floating-point ---
dcl-s avgScore  float(8) inz(98.6);          // 8-byte double precision

// --- Indicator (boolean) ---
dcl-s isActive ind inz(*on);                 // *ON or *OFF

// --- Date, time, timestamp ---
dcl-s birthDate date(*iso) inz(d'1815-12-10');
dcl-s startTime time(*iso) inz(t'09.30.00');
dcl-s eventTs   timestamp inz(z'2026-04-25-10.15.30.000000');

// --- Pointer ---
dcl-s ptr pointer inz(*null);

// Compose a full name (note: %trim removes trailing blanks from CHAR)
fullName = %trim(firstName) + ' ' + %trim(lastName);

// Display each value (DSPLY accepts any field)
dsply fullName;
dsply ('smallNum  = ' + %char(smallNum));
dsply ('mediumNum = ' + %char(mediumNum));
dsply ('bigNum    = ' + %char(bigNum));
dsply ('posOnly   = ' + %char(posOnly));
dsply ('price     = ' + %char(price));
dsply ('quantity  = ' + %char(quantity));
dsply ('rate      = ' + %char(rate));
dsply ('avgScore  = ' + %char(avgScore));
dsply ('isActive  = ' + %char(isActive));
dsply ('birthDate = ' + %char(birthDate));
dsply ('startTime = ' + %char(startTime));
dsply ('eventTs   = ' + %char(eventTs));

return;
