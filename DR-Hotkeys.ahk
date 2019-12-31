; -------------- REMAP CTRL-RIGHT ALT TO CONTEXT MENU (Dell keyboard missing context key)
;RAlt Up::Send {AppsKey Up}
 
; -------------- HOTKEYS

; Open snipping tool ready to snip without clicking "new" Win-Shift-C
;#+c::
;Run, "C:\Windows\system32\SnippingTool.exe"
;WinWaitActive, ahk_class Microsoft-Windows-Tablet-SnipperToolbar
;{
;send ^n
;}
;return

; Connect to VPN (win-V)
#v::
run rasphone "devresults-azure" -d
sleep, 1000 
send {ENTER}
sleep, 1000 
send {ENTER}
sleep, 10000 
return
