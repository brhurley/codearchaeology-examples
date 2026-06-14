' Functions and subroutines in BASIC

' A Function returns a value
Function Square(n As Integer) As Integer
    Return n * n
End Function

' A Sub performs an action and returns nothing
Sub Greet(personName As String)
    Print "Hello, " & personName & "!"
End Sub

' A default argument value: exponent defaults to 2
Function Power(base As Integer, exponent As Integer = 2) As Integer
    Dim result As Integer = 1
    Dim i As Integer
    For i = 1 To exponent
        result = result * base
    Next i
    Return result
End Function

' ByRef lets a Sub modify the caller's variable
Sub DoubleValue(ByRef x As Integer)
    x = x * 2
End Sub

' --- Main program ---
Print "Square of 5: " & Square(5)
Greet("Ada")
Print "Power default (3^2): " & Power(3)
Print "Power explicit (2^5): " & Power(2, 5)

Dim value As Integer = 10
DoubleValue(value)
Print "After doubling 10: " & value
