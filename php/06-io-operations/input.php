<?php
// Prompt and read a line of text
echo "What is your name? ";
$name = trim(fgets(STDIN));

// Read a line and coerce it to an integer
echo "How old are you? ";
$age = (int) trim(fgets(STDIN));

printf("Hello, %s! Next year you will be %d.\n", $name, $age + 1);
