# Combining user functions with AWK's record processing
function grade(score) {
    if (score >= 90) return "A"
    else if (score >= 80) return "B"
    else if (score >= 70) return "C"
    else return "F"
}

function average(arr, n,    i, sum) {
    for (i = 1; i <= n; i++)
        sum += arr[i]
    return sum / n
}

{
    scores[NR] = $2
    printf "%s: %d (%s)\n", $1, $2, grade($2)
}

END {
    printf "Class average: %.1f\n", average(scores, NR)
}
