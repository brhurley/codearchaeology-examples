package main

import "core:fmt"

main :: proc() {
    fmt.println("Positive operands (results agree):")
    fmt.printf("  7  %%  3 = %d\n",  7 %  3)
    fmt.printf("  7 %%%% 3 = %d\n",  7 %% 3)

    fmt.println("\nNegative dividend (results differ):")
    fmt.printf(" -7  %%  3 = %d   (remainder: sign of dividend)\n", -7 %  3)
    fmt.printf(" -7 %%%% 3 = %d   (modulo:    sign of divisor)\n",  -7 %% 3)

    fmt.println("\nNegative divisor:")
    fmt.printf("  7  %%  -3 = %d\n",  7 %  -3)
    fmt.printf("  7 %%%% -3 = %d\n",  7 %% -3)
}
