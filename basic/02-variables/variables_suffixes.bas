' Classic BASIC type suffix convention
' $ suffix = string
' % suffix = integer (short)
' ! suffix = single-precision float
' # suffix = double-precision float

DIM name$   AS STRING
DIM count%  AS INTEGER
DIM ratio!  AS SINGLE
DIM precise# AS DOUBLE

name$   = "Dartmouth"
count%  = 1964
ratio!  = 3.14
precise# = 2.718281828459045

PRINT "Language birthplace: "; name$
PRINT "Year created:        "; count%
PRINT "Single precision:    "; ratio!
PRINT "Double precision:    "; precise#
