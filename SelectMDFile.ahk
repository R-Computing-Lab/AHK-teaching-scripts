#NoEnv
#SingleInstance, Force
#Persistent
SendMode, Input
SetBatchLines, -1
SetWorkingDir, %A_ScriptDir%



; Set the folder path where the .md files are located
;folderPath := "C:\Path\To\Your\MD\Files" ; Change this to your folder
folderPath := A_ScriptDir

; Create the GUI with specific size
Gui, +Resize
Gui, Font, s10 ; Set font size for better visibility
Gui, Add, Text,, Select an .md file:
Gui, Add, DropDownList, vSelectedFile w300, ; Dropdown for file selection (width set to 300)
Gui, Add, Button, gCopyToClipboard, Copy to Clipboard

; Debug: Check if the folder path is being set correctly
MsgBox, Folder path: %folderPath%

; Call PopulateDropdown to fill the dropdown with files when the script starts
Gosub, PopulateDropdown

; Populate the dropdown with .md files from the folder
PopulateDropdown:
    GuiControl, -Redraw, DropDownList ; Freeze the control during update
    GuiControl,, DropDownList,  ; Clear existing content
    
    fileCount := 0 ; Initialize a counter for the files
    FileList := "" ; Initialize the file list for dropdown

    Loop, Files, %folderPath%\*.md
    {         fileCount++ ; Increment the counter for each file found

        ; Debug: Show each file found
        MsgBox, Found file: %A_LoopFileName%
               ; Append each file name to the dropdown
               FileList .= A_LoopFileName "|"
               GuiControl,, DropDownList, |%A_LoopFileName%

             ;  GuiControl,, DropDownList, %A_LoopFileName%
}
    
    ; If no files are found, display a message in the dropdown
    if (fileCount = 0) {
        FileList := "No .md files found"
        MsgBox, No .md files found in the directory.
    }
    
    ; Update the dropdown
    GuiControl,, DropDownList, %FileList% ; Now we're telling AHK to use FileList to populate the dropdown
    
    ; Show the GUI with specific width and height
    Gui, Show, w400 h150, Select an .md File
return

; Action for the "Copy to Clipboard" button
CopyToClipboard:
    Gui, Submit, NoHide
    if (SelectedFile = "" or SelectedFile = "No .md files found")
    {
        MsgBox, Please select a file first.
        return
    }
    
    filePath := folderPath "\" SelectedFile
    FileRead, fileContents, %filePath%
    
    ; Copy file contents to clipboard
    Clipboard := fileContents
    
    MsgBox, File content copied to clipboard.
return

GuiClose:
    ExitApp

