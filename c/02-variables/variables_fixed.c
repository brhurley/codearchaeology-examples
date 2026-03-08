#include <stdio.h>
#include <stdint.h>   /* fixed-width integer types */
#include <inttypes.h> /* PRId8, PRId32, etc. format macros */

int main(void) {
    int8_t   a = -100;          /* exactly 8 bits, signed */
    uint8_t  b = 255;           /* exactly 8 bits, unsigned */
    int16_t  c = -32000;        /* exactly 16 bits, signed */
    uint16_t d = 65535;         /* exactly 16 bits, unsigned */
    int32_t  e = 2147483647;    /* exactly 32 bits, signed (INT32_MAX) */
    uint32_t f = 4294967295U;   /* exactly 32 bits, unsigned (UINT32_MAX) */
    int64_t  g = -9223372036854775807LL - 1; /* INT64_MIN */
    uint64_t h = 18446744073709551615ULL;    /* UINT64_MAX */

    printf("int8_t   a = %" PRId8  "\n", a);
    printf("uint8_t  b = %" PRIu8  "\n", b);
    printf("int16_t  c = %" PRId16 "\n", c);
    printf("uint16_t d = %" PRIu16 "\n", d);
    printf("int32_t  e = %" PRId32 "\n", e);
    printf("uint32_t f = %" PRIu32 "\n", f);
    printf("int64_t  g = %" PRId64 "\n", g);
    printf("uint64_t h = %" PRIu64 "\n", h);

    return 0;
}
