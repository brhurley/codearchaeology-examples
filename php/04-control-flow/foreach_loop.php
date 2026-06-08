<?php
// Indexed array
$languages = ["PHP", "Python", "Rust"];
foreach ($languages as $language) {
    echo "Language: $language\n";
}

// Associative array with key => value
$versions = [
    "PHP"    => "8.4",
    "Python" => "3.13",
    "Rust"   => "1.85",
];
foreach ($versions as $name => $version) {
    echo "$name is at version $version\n";
}
