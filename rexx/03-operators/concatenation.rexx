/* Concatenation operators in REXX */
first = "Hello"
last  = "World"

say first || last      /* Abuttal (||):  HelloWorld   */
say first last         /* Blank concat:  Hello World  */
say first", "last"!"   /* Mixed abuttal: Hello, World! */

count = 3
say "Item" count       /* Blank + number: Item 3 */
say "ID" || count      /* No space:       ID3    */
