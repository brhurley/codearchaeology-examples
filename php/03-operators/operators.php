<?php
// --- Arithmetic operators ---
$a = 17;
$b = 5;
echo "Arithmetic ($a, $b):\n";
echo "  a + b      = " . ($a + $b) . "\n";
echo "  a - b      = " . ($a - $b) . "\n";
echo "  a * b      = " . ($a * $b) . "\n";
echo "  a / b      = " . ($a / $b) . "\n";
echo "  a % b      = " . ($a % $b) . "\n";
echo "  intdiv     = " . intdiv($a, $b) . "\n";
echo "  a ** b     = " . ($a ** $b) . "\n";

// --- String operators ---
echo "\nString operators:\n";
$greet = "Hello";
$name  = "PHP";
$msg   = $greet . ", " . $name . "!";
echo "  concat (.) : $msg\n";
$msg .= " Welcome.";
echo "  append(.=) : $msg\n";

// --- Comparison operators ---
echo "\nComparison (loose vs strict):\n";
echo "  0 == \"0\"   : "; var_export(0 == "0");   echo "\n";
echo "  0 == \"\"    : "; var_export(0 == "");    echo "\n";
echo "  \"1\" ==  1  : "; var_export("1" == 1);   echo "\n";
echo "  \"1\" === 1  : "; var_export("1" === 1);  echo "\n";
echo "  1 <=> 2    : " . (1 <=> 2) . "\n";
echo "  2 <=> 2    : " . (2 <=> 2) . "\n";
echo "  3 <=> 2    : " . (3 <=> 2) . "\n";

// --- Logical operators ---
echo "\nLogical:\n";
$t = true;
$f = false;
echo "  t && f     : "; var_export($t && $f);  echo "\n";
echo "  t || f     : "; var_export($t || $f);  echo "\n";
echo "  !t         : "; var_export(!$t);       echo "\n";
echo "  t xor f    : "; var_export($t xor $f); echo "\n";

// --- Null coalescing, ternary, Elvis ---
echo "\nNull coalescing and ternary:\n";
$config = ['debug' => false];
$mode   = $config['mode']  ?? 'production';
$short  = $config['debug'] ?: 'default';
$age    = 20;
$status = ($age >= 18) ? 'adult' : 'minor';
echo "  mode   (??)  : $mode\n";
echo "  short  (?:)  : $short\n";
echo "  status (?:)  : $status\n";

// --- Assignment shortcuts ---
echo "\nAssignment shortcuts (start n = 10):\n";
$n = 10;
$n += 5;  echo "  n += 5   -> $n\n";
$n -= 3;  echo "  n -= 3   -> $n\n";
$n *= 2;  echo "  n *= 2   -> $n\n";
$n /= 4;  echo "  n /= 4   -> $n\n";
$n **= 2; echo "  n **= 2  -> $n\n";
$n %= 7;  echo "  n %= 7   -> $n\n";

// --- Bitwise operators ---
echo "\nBitwise (5 = 0b0101, 3 = 0b0011):\n";
echo "  5 & 3      = " . (5 & 3)   . "\n";
echo "  5 | 3      = " . (5 | 3)   . "\n";
echo "  5 ^ 3      = " . (5 ^ 3)   . "\n";
echo "  ~5         = " . (~5)      . "\n";
echo "  5 << 2     = " . (5 << 2)  . "\n";
echo "  20 >> 1    = " . (20 >> 1) . "\n";
