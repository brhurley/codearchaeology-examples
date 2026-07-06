NB. process_lines.ijs - treat file text as an array of lines

text =: 'Cherry', LF, 'Apple', LF, 'Banana', LF

NB. <;._2 splits on the final character (LF) into boxed lines
rows =: <;._2 text

echo 'Number of lines: ' , ": # rows
echo 'First line: ' , > {. rows
echo 'Last line: ' , > {: rows

NB. Membership test across every line at once: e. (is-element)
echo 'Has Apple? ' , ": (<'Apple') e. rows
