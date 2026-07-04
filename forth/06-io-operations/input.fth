\ Reading a line of text from standard input

CREATE name-buf 80 ALLOT     \ reserve an 80-byte input buffer

." Enter your name: "
name-buf 80 ACCEPT           ( addr max -- len )
." Hello, "
name-buf SWAP TYPE           ( len -- ; print len bytes from name-buf )
." ! Welcome to Forth." CR

bye
