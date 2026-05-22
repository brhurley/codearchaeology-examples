import std/strutils

let flags = 0b1010
let mask  = 0b1100

echo "flags and mask = 0b", toBin(flags and mask, 4)
echo "flags or  mask = 0b", toBin(flags or mask, 4)
echo "flags xor mask = 0b", toBin(flags xor mask, 4)
echo "not flags (8-bit) = 0b", toBin(not flags and 0xFF, 8)
echo "flags shl 2   = ", flags shl 2
echo "flags shr 1   = ", flags shr 1
