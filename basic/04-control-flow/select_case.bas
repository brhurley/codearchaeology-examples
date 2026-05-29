DIM grade AS INTEGER
grade = 87

SELECT CASE grade
    CASE IS >= 90
        PRINT "A"
    CASE 80 TO 89
        PRINT "B"
    CASE 70 TO 79
        PRINT "C"
    CASE 60, 61, 62, 63, 64, 65, 66, 67, 68, 69
        PRINT "D"
    CASE ELSE
        PRINT "F"
END SELECT
