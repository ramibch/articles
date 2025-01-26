# How to import in Excel a csv file using VBA

## Intro

Sometimes you need to read some data from a cvs file with Excel but you get frustrated with how Excel automatically imports the file if you try to open it directly.

## Robust solution

You can use an Excel file with Macros. Copy and paste the following code in a module of your VBA project or under a Sheet code block (mouse right click on a sheet tab > _show code_).

```vba
Public Sub CSV_import()
' CSV_import macro function
' This function import a CSV file into a Sheet

    Dim sFile As String                                         ' sFile is the CSV file path
    Dim OpenFileError As String                                 ' This is need to handle error when the Open File Dialog Menu pops up.
    Dim MyWorkSheet As Worksheet                                ' The Sheet where data will be located, let call it Target Sheet

    Set MyWorkSheet = ActiveWorkbook.Sheets("TargetSheet")      ' Here we define the Target Sheet
    Sheets("TargetSheet").UsedRange.ClearContents               ' This deletes the sheet content in case there is something that it is disturbing


    With Application.FileDialog(msoFileDialogFilePicker)        ' This function opens the dialog window
        .InitialFileName = Application.ThisWorkbook.Path & "\"
        .AllowMultiSelect = False                               ' Enables to choose just one file
        .Filters.Add " File ", "*.txt; *.csv", 1                ' Filters just the CSV files
        If .Show = -1 Then                                      ' In case there is no error in opening the file
            sFile = .SelectedItems(1)                           ' sFile is defined as the selected file
        Else
            OpenFileError = "Error to open the file"            ' Showing errors in case the dialoaf function catched them
            MsgBox OpenFileError, , "Deferred Error Test"
            Err.Clear
            Return
        End If
    End With

    ' In the function below (Workbooks.OpenText) the content of the file is read
    ' Important parameters:
    '   StartRow (number): where to start to read
    '   Set True if you use one of these as a delimiter
    '       Tab:        Tabulation (\t) as delimiter.
    '       Semicolon:  ";" as delimiter.
    '       Comma:      "," as delimiter.
    '       Space:       " " as delimiter. There is a space between the quotation marks
    '   DecimalSeparator: ("." or ",")
    '   ThousandsSeparator (" " or "." or "," or anything else)

    Workbooks.OpenText Filename:=sFile, _
        Origin:=xlWindows, StartRow:=1, DataType:=xlDelimited, TextQualifier:=xlDoubleQuote, _
        ConsecutiveDelimiter:=False, Tab:=False, Semicolon:= _
        False, Comma:=True, Space:=False, Other:=False, FieldInfo:=Array(Array( _
        1, 1), Array(2, 1)), DecimalSeparator:=".", ThousandsSeparator:=" ", _
        TrailingMinusNumbers:=False

    ActiveSheet.UsedRange.Copy MyWorkSheet.Cells(1)         ' The data is "pasted" into our sheet
    ActiveWorkbook.Close SaveChanges:=False

End Sub

```

Assign that function `CSV_import` to a button to run it whenever you need to.

## Download a basic example

Here is an example to play around with:

- [example_import_cvs_file.xlsm]({attach}example_import_cvs_file.xlsm)

- [data.csv]({attach}data.csv)

