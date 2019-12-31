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
