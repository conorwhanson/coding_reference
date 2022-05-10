Sub fizzBuzz():
    ' Declare our variables
    Dim num As Integer
    
    For i = 2 To 100
    
        ' Initialize
        num = Cells(i, 1).Value
        
        ' do work
        If (num Mod 15 = 0) Then
            ' MsgBox ("sweet! divisible by 15")
            Cells(i, 2).Value = "FizzBuzz"
        ElseIf (num Mod 3 = 0) Then
            ' MsgBox ("yay! divisible by 3")
            Cells(i, 2).Value = "Fizz"
        ElseIf (num Mod 5 = 0) Then
            ' MsgBox ("cool! divisible by 5")
            Cells(i, 2).Value = "Buzz"
        Else
            ' MsgBox ("not divisible by 3 or 5 or 15")
            Cells(i, 2).Value = ""
        End If
    
    Next

End Sub