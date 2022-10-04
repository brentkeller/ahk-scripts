; Win-U
#u::CopyBrowserURL()
; Ctrl-Win-U
^#u::CopyMarkdownLink()

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

; Hard to reach key shortcuts

CapsLock & j::Left
CapsLock & k::Down
CapsLock & i::Up
CapsLock & l::Right

CapsLock & u::Home
CapsLock & o::End

CapsLock & b::Backspace
CapsLock & d::Delete

CapsLock & m::PgDn
CapsLock & p::PgUp

CapsLock & 1::F1
CapsLock & 2::F2
CapsLock & 3::F3
CapsLock & 4::F4
CapsLock & 5::F5
CapsLock & 6::F6
CapsLock & 7::F7
CapsLock & 8::F8
CapsLock & 9::F9
CapsLock & 0::F10
CapsLock & =::F12
CapsLock & -::F11
; Any modifier key + CapsLock
*CapsLock::Return