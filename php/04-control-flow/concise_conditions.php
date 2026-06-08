<?php
// Ternary operator: condition ? if-true : if-false
$balance = 0;
$status = $balance > 0 ? "In credit" : "Empty or overdrawn";
echo "Account: $status\n";

// Short ternary (Elvis operator): returns left side if truthy
$username = "";
$display = $username ?: "Guest";
echo "Welcome, $display\n";

// Null coalescing: use a default when a value is null or unset
$config = ["theme" => "dark"];
$theme = $config["theme"] ?? "light";
$lang = $config["lang"] ?? "en";
echo "Theme: $theme, Language: $lang\n";
