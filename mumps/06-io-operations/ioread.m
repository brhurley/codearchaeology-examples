ioread ; Reading input from the terminal
 ; Read a full line of text into a variable
 read "What is your name? ",name
 write "Hello, ",name,"!",!
 ;
 ; Read with a 5-second timeout; $TEST is 1 if input arrived, 0 if it timed out
 read "Favorite number (5s): ",num:5
 if $test write "You entered: ",num,!
 if '$test write "Timed out - no input.",!
 ;
 ; *var reads a single keystroke and stores its ASCII code
 read "Press any key to continue... ",*char
 write !
 write "You pressed character code ",char,!
 quit
