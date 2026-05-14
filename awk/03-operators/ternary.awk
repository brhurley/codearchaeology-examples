BEGIN {
    for (n = -2; n <= 2; n++) {
        sign = (n > 0) ? "positive" : (n < 0) ? "negative" : "zero"
        printf "%2d is %s\n", n, sign
    }

    # Combined with the unary + and concatenation
    score = 87
    grade = (score >= 90) ? "A" : (score >= 80) ? "B" : (score >= 70) ? "C" : "F"
    print "score=" score " grade=" grade
}
