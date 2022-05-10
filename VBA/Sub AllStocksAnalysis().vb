Sub AllStocksAnalysis()

    Dim startTime As Single
    Dim endTime As Single
    
    yearValue = InputBox("What year would you like to run the analysis on?")
    
        startTime = Timer
    
    Worksheets("All Stocks Analysis").Activate
        Range("A1").Value = "All Stocks (" + yearValue + ")"
    
    'create header row
        Cells(3, 1).Value = "Ticker"
        Cells(3, 2).Value = "Total Daily Volume"
        Cells(3, 3).Value = "Return"
    
    'initialize variables
        Dim tickers(11) As String
        
        tickers(0) = "AY"
        tickers(1) = "CSIQ"
        tickers(2) = "DQ"
        tickers(3) = "ENPH"
        tickers(4) = "FSLR"
        tickers(5) = "HASI"
        tickers(6) = "JKS"
        tickers(7) = "RUN"
        tickers(8) = "SEDG"
        tickers(9) = "SPWR"
        tickers(10) = "TERP"
        tickers(11) = "VSLR"
        
        Dim StartingPrice As Double
        Dim EndingPrice As Double
    
    Worksheets(yearValue).Activate
    
    'Find number of rows before loops
    RowCount = Cells(Rows.Count, "A").End(xlUp).Row

    'list tickers to loop
    For i = 0 To 11
            
            ticker = tickers(i)
            totalVolume = 0
            
            Worksheets(yearValue).Activate
            
            For j = 2 To RowCount
            
                    'get total volume for current ticker
                 If Cells(j, 1).Value = ticker Then
                    totalVolume = totalVolume + Cells(j, 8).Value
                 End If
                 
                    'get starting price for current ticker
                 If Cells(j - 1, 1).Value <> ticker And Cells(j, 1).Value = ticker Then
                    StartingPrice = Cells(j, 6).Value
                End If
                
                    'get ending price for current ticker
                If Cells(j + 1, 1).Value <> ticker And Cells(j, 1).Value = ticker Then
                    EndingPrice = Cells(j, 6).Value
                End If
                
            'go to next ticker(i)
            Next j
    
      'output results
        Worksheets("All Stocks Analysis").Activate
            Cells(4 + i, 1).Value = ticker
            Cells(4 + i, 2).Value = totalVolume
            Cells(4 + i, 3).Value = EndingPrice / StartingPrice - 1
            
        Next i
        
            endTime = Timer
            MsgBox "This code ran in " & (endTime - startTime) & " seconds for the year " & (yearValue)
        
 Worksheets("All Stocks Analysis").Activate

        Range("A1:C3").Borders(xlEdgeBottom).LineStyle = xlContinuous
        Range("A1").Font.Color = RGB(0, 255, 0)
        Range("A3").Font.FontStyle = "Bold Italic"
        Range("C3").Font.Underline = xlUnderlineStyleSingle
        Range("C4:C15").NumberFormat = "0.0%"
        Range("B4:B15").NumberFormat = "$ ##, ###, ##0.00"
        Columns("B").AutoFit
        
    For i = 4 To 15
        If Cells(i, 3) > 0 Then
            Cells(i, 3).Interior.Color = vbGreen
        End If
        
        If Cells(i, 3) < 0 Then
            Cells(i, 3).Interior.Color = vbRed
        End If
        
    Next i

End Sub
