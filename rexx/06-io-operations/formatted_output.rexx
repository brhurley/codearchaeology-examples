/* Formatted console output in REXX */

/* Concatenation: adjacency inserts one blank, || joins directly */
first = "Grace"
last  = "Hopper"
say first last            /* separated by a single blank */
say first || last         /* joined with no space */
say first", "last         /* literal text between the values */

/* Aligning columns with LEFT and RIGHT */
say left("Name", 10) || right("Score", 6)
say left("Ada", 10)  || right(95, 6)
say left("Alan", 10) || right(88, 6)

/* Numeric formatting with FORMAT */
say format(3.14159, 3, 2)   /* 3 digits before, 2 after the point */
say format(1000, 6)         /* right-align in a 6-character field */
