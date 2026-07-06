NB. read_input.ijs - read all of stdin, then process it as lines

NB. stdin '' returns everything piped in as one string
input =: stdin ''

NB. Split into an array of lines on the trailing LF (same idiom as before)
lines =: <;._2 input

name =: > {. lines           NB. first line, unboxed
age  =: ". > {: lines        NB. last line, parsed into a number

echo 'Hello, ' , name , '!'
echo 'Next year you will be ' , ": age + 1

exit ''
