myGui := Gui()  ; Create a new GUI object in v2
myGui.Add("Button", ,"Excellent Work!").OnEvent("Click", CopyFeedback1)
myGui.Add("Button", ,"Needs Improvement").OnEvent("Click", CopyFeedback2)
myGui.Add("Button", ,"Formatting Reminder").OnEvent("Click", CopyFeedback3)
myGui.Add("Button",, "Referencing Issues").OnEvent("Click", CopyFeedback4)
myGui.Show()

; Button 1 action
CopyFeedback1(GuiCtrl) {
    Clipboard := "Excellent work on this assignment! Your analysis was thorough and well-supported by evidence."
    MsgBox "Feedback copied to clipboard: Excellent Work!"
}

; Button 2 action
CopyFeedback2(GuiCtrl) {
    Clipboard := "Your work demonstrates good understanding but needs improvement. Expand your discussion."
    MsgBox "Feedback copied to clipboard: Needs Improvement"
}

; Button 3 action
CopyFeedback3(GuiCtrl) {
    Clipboard := "Ensure your citations follow APA guidelines."
    MsgBox "Feedback copied to clipboard: Formatting Reminder"
}

; Button 4 action
CopyFeedback4(GuiCtrl) {
    Clipboard := "Your referencing is incomplete. Use APA format."
    MsgBox "Feedback copied to clipboard: Referencing Issues"
}

myGui.OnEvent("Close", () => ExitApp())  ; Close the GUI when clicked
