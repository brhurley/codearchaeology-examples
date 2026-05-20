NB. -- Arithmetic verbs --
echo '-- Arithmetic --'
echo 2 + 3                  NB. addition
echo 10 - 4                 NB. subtraction
echo 6 * 7                  NB. multiplication
echo 10 % 4                 NB. division (note: % not /)
echo 2 ^ 8                  NB. power (2 to the 8th)
echo 3 | 10                 NB. residue: 10 mod 3

NB. -- Monadic forms of the same symbols --
echo '-- Monadic --'
echo - 5                    NB. negate
echo % 4                    NB. reciprocal (1/4)
echo | _7                   NB. absolute value

NB. -- Comparison verbs (return 0 or 1) --
echo '-- Comparison --'
echo 5 = 5                  NB. equal
echo 5 ~: 3                 NB. not equal
echo 3 < 7                  NB. less than
echo 7 >: 7                 NB. greater than or equal

NB. -- Boolean verbs --
echo '-- Boolean --'
echo 1 *. 0                 NB. AND
echo 1 +. 0                 NB. OR
echo -. 1                   NB. NOT (monadic)

NB. -- Array extension: operators work element-wise --
echo '-- Arrays --'
echo 1 2 3 + 10 20 30
echo 2 * 1 2 3 4 5
echo 1 2 3 4 = 1 0 3 4

NB. -- Reduce adverb / : insert a verb between items --
echo '-- Reduce --'
echo +/ 1 2 3 4 5           NB. sum
echo */ 1 2 3 4 5           NB. product
echo >./ 3 1 4 1 5 9 2 6    NB. maximum
echo <./ 3 1 4 1 5 9 2 6    NB. minimum

NB. -- Right-to-left evaluation, no precedence --
echo '-- Precedence --'
echo 2 * 3 + 4              NB. 2 * (3 + 4) = 14
echo 10 - 3 - 2             NB. 10 - (3 - 2) = 9
