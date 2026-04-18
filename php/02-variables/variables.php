<?php
// Dynamic variables - no type declaration needed
$age      = 30;        // int
$price    = 19.99;     // float (internally "double")
$name     = "Alice";   // string
$isActive = true;      // bool
$nothing  = null;      // null

// Double-quoted strings interpolate $variables directly
echo "Name: $name\n";
echo "Age: $age\n";
echo "Price: \$$price\n";
echo "Active: " . ($isActive ? 'yes' : 'no') . "\n";
echo "Nothing: " . var_export($nothing, true) . "\n";

// Type inspection
echo "\n--- Types ---\n";
echo "age is "      . gettype($age)      . "\n";
echo "price is "    . gettype($price)    . "\n";
echo "name is "     . gettype($name)     . "\n";
echo "isActive is " . gettype($isActive) . "\n";
echo "nothing is "  . gettype($nothing)  . "\n";

// Explicit type casting
echo "\n--- Type Conversion ---\n";
$asInt    = (int)    "42";
$asFloat  = (float)  "3.14";
$asString = (string) 100;
$asBool   = (bool)   0;   // 0, "", "0", null, and [] are all falsy
echo "(int) '42' = $asInt\n";
echo "(float) '3.14' = $asFloat\n";
echo "(string) 100 = '$asString'\n";
echo "(bool) 0 = " . var_export($asBool, true) . "\n";

// Type juggling: PHP's weak typing in action
echo "\n--- Type Juggling ---\n";
$sum    = "5" + 3;   // arithmetic promotes "5" -> int, result is 8 (int)
$concat = "5" . 3;   // concatenation promotes 3  -> string, result is "53"
echo "'5' + 3 = $sum (" . gettype($sum) . ")\n";
echo "'5' . 3 = '$concat' (" . gettype($concat) . ")\n";

// Loose vs strict comparison
echo "\n--- Comparison ---\n";
var_dump(1 == "1");    // loose:  values compared after juggling
var_dump(1 === "1");   // strict: types must also match

// Constants: fixed values that cannot be reassigned
const MAX_USERS = 100;
define('SITE_NAME', 'CodeArchaeology');
echo "\n--- Constants ---\n";
echo "MAX_USERS = " . MAX_USERS . "\n";
echo "SITE_NAME = " . SITE_NAME . "\n";
