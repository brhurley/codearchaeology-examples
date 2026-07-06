NB. file_io.ijs - reading and writing files in J

NB. Build the file contents (LF separates the lines)
lines =: 'Apple', LF, 'Banana', LF, 'Cherry'

NB. 1!:2 replaces the file with our data (box the file name)
lines 1!:2 <'fruit.txt'
echo 'Wrote fruit.txt'

NB. 1!:1 reads the whole file back as one string
content =: 1!:1 <'fruit.txt'
echo 'File contents:'
echo content

NB. 1!:3 appends to an existing file
(LF, 'Date') 1!:3 <'fruit.txt'
echo 'After appending a line:'
echo 1!:1 <'fruit.txt'
