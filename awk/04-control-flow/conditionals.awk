# Classify field $3 (amount) into buckets
BEGIN { FS = "," }
NR == 1 { next }
{
    amount = $3 + 0

    if (amount >= 200) {
        bucket = "huge"
    } else if (amount >= 100) {
        bucket = "large"
    } else if (amount >= 50) {
        bucket = "medium"
    } else {
        bucket = "small"
    }

    # Ternary expression
    flag = (amount > 100) ? "*" : " "

    printf "%s id=%s amount=%-4d bucket=%s\n", flag, $1, amount, bucket
}
