NB. Functions in J are called "verbs"

NB. Monadic verb: one argument, named y
square =: 3 : 'y * y'

NB. Dyadic verb: two arguments, x on the left and y on the right
NB. %: is square root; ^ is power
hypot =: 4 : '%: (x ^ 2) + (y ^ 2)'

NB. Multi-line explicit verb using "verb define"
NB. =. creates a LOCAL variable; the last line is the result
celsius2f =: verb define
  scaled =. y * 9 % 5
  scaled + 32
)

echo square 5
echo 3 hypot 4
echo celsius2f 100
