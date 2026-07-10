<?php
// echo prints one or more strings as-is
echo "Standard output line\n";

// printf writes a formatted string directly to output
printf("Name: %s, Age: %d\n", "Ada", 36);
printf("Pi is approximately %.2f\n", 3.14159);

// sprintf returns the formatted string instead of printing it
$padded = sprintf("%05d", 42);
echo $padded . "\n";

// Write explicitly to the standard output and standard error streams
fwrite(STDOUT, "Written to STDOUT\n");
fwrite(STDERR, "Written to STDERR\n");
