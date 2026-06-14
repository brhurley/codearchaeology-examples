' Recursion and variable scope in BASIC

' A shared (global) variable, visible inside every routine
Dim Shared callCount As Integer = 0

' Classic recursive factorial
Function Factorial(n As Integer) As Integer
    callCount = callCount + 1
    If n <= 1 Then
        Return 1
    End If
    Return n * Factorial(n - 1)
End Function

Sub ShowScope()
    ' A local variable, visible only inside this Sub
    Dim localMessage As String = "I only exist inside ShowScope"
    Print localMessage
End Sub

Print "5! = " & Factorial(5)
Print "Factorial was called " & callCount & " times"
ShowScope()
