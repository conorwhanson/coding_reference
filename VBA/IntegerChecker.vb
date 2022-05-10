Sub IntegerChecker()

    For i = 1 To 10
    
        If Cells(i, 1).Value Mod 2 = 0 Then
            MsgBox ("The number is even")
                Cells(i, 2).Value = "even row"
        Else
                Cells(i, 2).Value = "odd row"
            MsgBox ("The number is odd")
            
        End If
    
    Next i

End Sub