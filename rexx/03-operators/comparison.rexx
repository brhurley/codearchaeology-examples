/* Comparison operators in REXX (1 = true, 0 = false) */
say 5 = 5            /* Equal:             1 */
say 5 \= 4           /* Not equal:         1 */
say 5 > 4            /* Greater than:      1 */
say 5 < 4            /* Less than:         0 */
say 5 >= 5           /* Greater or equal:  1 */
say 4 <= 5           /* Less or equal:     1 */
say "abc" == "abc"   /* Strict equal:      1 */
say "abc" == "abc "  /* Strict + trailing: 0 */
say "abc" = "abc "   /* Normal (padded):   1 */
