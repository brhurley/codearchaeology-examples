/* Logical operators in REXX */
say 1 & 1    /* AND: both true   -> 1 */
say 1 & 0    /* AND: one false   -> 0 */
say 1 | 0    /* OR:  one true    -> 1 */
say 0 | 0    /* OR:  both false  -> 0 */
say 1 && 0   /* XOR: differ      -> 1 */
say 1 && 1   /* XOR: same        -> 0 */
say \1       /* NOT: 1 negated   -> 0 */
say \0       /* NOT: 0 negated   -> 1 */
