/* Operator precedence in REXX */
say 2 + 3 * 4      /* 14: * before +          */
say (2 + 3) * 4    /* 20: parentheses first   */
say 10 - 2 - 3     /*  5: left to right       */
say 2 * 3 ** 2     /* 18: ** before *         */
say \0 & 1         /*  1: prefix \ before &   */
