<?php
$path = "nonexistent/data.txt";

// The @ operator suppresses the built-in warning so we can handle it ourselves
$contents = @file_get_contents($path);
if ($contents === false) {
    fwrite(STDERR, "Error: could not read {$path}\n");
}

// Exceptions provide structured error handling around file operations
try {
    $handle = @fopen($path, "r");
    if ($handle === false) {
        throw new RuntimeException("Unable to open {$path}");
    }
    fclose($handle);
} catch (RuntimeException $e) {
    echo "Caught: " . $e->getMessage() . "\n";
}

echo "Program continues after handling the error\n";
