/* REXX ships with a rich library of built-in functions */

text = "REXX Programming"

/* String functions */
say "Length:" length(text)
say "Upper:" translate(text)
say "Word 2:" word(text, 2)
say "Word count:" words(text)
say "Substring:" substr(text, 1, 4)
say "Reversed:" reverse(text)

/* Numeric functions */
say "Max:" max(3, 17, 9, 42, 8)
say "Min:" min(3, 17, 9, 42, 8)
say "Absolute:" abs(-15)
say "Rounded:" format(3.14159, , 2)

/* Combine built-ins inside your own function */
say "Initials:" initials("ada countess lovelace")

exit

/* initials: take the first letter of each word, uppercased */
initials: procedure
  parse arg phrase
  out = ""
  do i = 1 to words(phrase)
    out = out || left(word(phrase, i), 1)
  end
  return translate(out)
