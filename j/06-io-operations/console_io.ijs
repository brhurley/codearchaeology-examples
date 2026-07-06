NB. console_io.ijs - console output and formatting in J

NB. echo and smoutput each add a trailing newline
echo 'echo adds a trailing newline'
smoutput 'smoutput does the same'

NB. 1!:2 writes raw bytes to screen (file 2) - add LF yourself
('1!:2 needs an explicit newline', LF) 1!:2 (2)

NB. echo formats numbers and arrays automatically
echo 100
echo 1 2 3 4 5
echo 2 3 $ i. 6

NB. Join strings with , (append)
echo 'Language: ' , 'J'

NB. Turn a number into text with ": before joining
echo 'Count is ' , ": 42

NB. Fixed-decimal formatting: (width)j(decimals)
echo 'Price: ' , 5j2 ": 19.5
