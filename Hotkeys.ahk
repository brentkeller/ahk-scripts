chrome := "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"
curl := "C:\Files\Apps\curl.exe"

; -------------- Allow paste in CMD
#IfWinActive ahk_class ConsoleWindowClass
^v::
SendInput {Raw}%clipboard%
return
#IfWinActive

; Open Spotify: Ctrl-Win-Q
^#q::
IfWinExist Spotify
WinActivate
else
Run spot
return

; Reload AutoHotKey script: Ctrl-Win-r
^#r::Reload



; Create shortcuts: Ctrl-Win-s
^#s::
If !WinActive("ahk_class CabinetWClass") and !WinActive("ahk_class Chrome_WidgetWin_1") 
Return
KeyWait Control
KeyWait Shift
Sleep 5
Send ^l ; Select the address textbox
Sleep 5
Send ^c ; Copy the address
ClipWait 0.01
InputBox, UserInput, Shortcut Name,Please enter a name for this shortcut: `n%Clipboard%,150,350 
If %UserInput% <> "" 
{
If WinActive("ahk_class CabinetWClass") ; Make shortcut to current folder
FileCreateShortcut, %Clipboard%, %ShortcutsPath%\%UserInput%.lnk, 
If WinActive("ahk_class Chrome_WidgetWin_1") ; Make shortcut to current URL in Chrome
FileCreateShortcut, %chrome%, %ShortcutsPath%\%UserInput%.lnk, , %Clipboard%
}
Return

; Add task to Asana (Keller Home): Ctrl-Win-P
; Note: this does not work anymore, need to use a newer API.
; Check Herb's AHK setup if you want this back: https://github.com/HerbCaudill/ahk-scripts
;^#p::
; Requires cURL http://www.confusedbycode.com/curl/#downloads
;Send ^c
;InputBox,UserInput,Task,Enter a task to add to Asana (Keller Home):,100,350,,,,,, %Clipboard% 
;CurlCommand = "C:\Files\Apps\curl.exe" -u %KellerHome_ApiKey%: https://app.asana.com/api/1.0/tasks -d "name=%UserInput%" -d "workspace=%KellerHome_Workspace%" -d "assignee=%KellerHome_Assignee%" 
;Run %CurlCommand%
;Pause
;Return


