Sub AllStocksAnalysis()
    Worksheets("All Stocks Analysis").Activate
        Range("A1").Value = "All Stocks (2018)"
    
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
    
    Worksheets("2018").Activate
    
    RowCount = Cells(Rows.Count, "A").End(xlUp).Row

    'Find number of rows before loops
    
    For i = 0 To 11
            
            ticker = tickers(i)
            totalVolume = 0
            
            Worksheets("2018").Activate
            
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
                        
            Next j
    
        'output results at the end of all j loops
        Worksheets("All Stocks Analysis").Activate
            Cells(4 + i, 1).Value = ticker
            Cells(4 + i, 2).Value = totalVolume
            Cells(4 + i, 3).Value = EndingPrice / StartingPrice - 1
            
        'go to next ticker
        Next i
        
End Sub
