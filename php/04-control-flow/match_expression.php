<?php
$statusCode = 404;

$message = match ($statusCode) {
    200, 201 => "Success",
    301, 302 => "Redirect",
    404      => "Not Found",
    500      => "Server Error",
    default  => "Unknown Status",
};

echo "Status $statusCode: $message\n";

// match with no argument acts like chained if/elseif
$temp = 30;
$label = match (true) {
    $temp < 0   => "Freezing",
    $temp < 15  => "Cold",
    $temp < 25  => "Mild",
    default     => "Warm",
};

echo "Temperature $temp is $label\n";
