<?php
// Create a sample file so this example is self-contained
file_put_contents("sample.txt", "apple\nbanana\ncherry\n");

// Read the whole file into one string
$contents = file_get_contents("sample.txt");
echo "Full contents:\n";
echo $contents;

// Read the file into an array of lines, dropping the newlines
$lines = file("sample.txt", FILE_IGNORE_NEW_LINES);
echo "Line count: " . count($lines) . "\n";

// Read line by line with a stream — ideal for large files
echo "Numbered lines:\n";
$handle = fopen("sample.txt", "r");
$number = 1;
while (($line = fgets($handle)) !== false) {
    echo $number . ": " . trim($line) . "\n";
    $number++;
}
fclose($handle);
