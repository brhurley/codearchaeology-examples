<?php
$lines = [
    "First line",
    "Second line",
    "Third line",
];

// One-shot write: creates the file or overwrites it entirely
file_put_contents("notes.txt", implode("\n", $lines) . "\n");

// Append to an existing file with the FILE_APPEND flag
file_put_contents("notes.txt", "Appended line\n", FILE_APPEND);

// Stream-based writing gives finer control over the open file handle
$handle = fopen("log.txt", "w");
fwrite($handle, "Log entry 1\n");
fwrite($handle, "Log entry 2\n");
fclose($handle);

echo "Files written successfully\n";
