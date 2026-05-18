\ Arithmetic operators
." 2 + 3 = " 2 3 + . CR
." 10 - 4 = " 10 4 - . CR
." 6 * 7 = " 6 7 * . CR
." 20 / 3 = " 20 3 / . CR
." 20 MOD 3 = " 20 3 MOD . CR

\ /MOD returns both quotient and remainder
\ Stack effect: ( n1 n2 -- rem quot )
." 20 /MOD 3 -> " 20 3 /MOD . . CR

\ Negation and absolute value
." NEGATE 5 = " 5 NEGATE . CR
." ABS -7 = " -7 ABS . CR

\ Stack manipulation words
." DUP of 4: " 4 DUP . . CR
." SWAP 1 2: " 1 2 SWAP . . CR
." OVER 1 2: " 1 2 OVER . . . CR

\ Comparison operators (-1 = true, 0 = false)
." 3 = 3 -> " 3 3 = . CR
." 3 < 5 -> " 3 5 < . CR
." 5 > 3 -> " 5 3 > . CR

\ Bitwise / logical operators
." -1 AND 0 -> " -1 0 AND . CR
." -1 OR  0 -> " -1 0 OR . CR
." INVERT 0 -> " 0 INVERT . CR

\ No precedence: (2+3)*4 is just left-to-right
." (2+3)*4 = " 2 3 + 4 * . CR

bye
