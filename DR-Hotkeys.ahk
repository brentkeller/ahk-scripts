; -------------- REMAP CTRL-RIGHT ALT TO CONTEXT MENU (Dell keyboard missing context key)
;RAlt Up::Send {AppsKey Up}
 
 
; -------------- HOTKEYS
 
; Google Drive: Ctrl-Win-D
; ^#d:: 
; Run "G:\My Drive"
; return
 

; Add task to Asana (caudillweb.com): Ctrl-Win-T
; Note: this does not work anymore, need to use a newer API.
; Check Herb's AHK setup if you want this back: https://github.com/HerbCaudill/ahk-scripts
;^#t::
;; Requires cURL http://www.confusedbycode.com/curl/#downloads
;Send ^c
;InputBox,UserInput,Task,Enter a task to add to Asana (caudillweb.com):,100,350,,,,,, %Clipboard% 
;CurlCommand = "C:\Files\Apps\curl.exe" -u %DevResults_ApiKey%: https://app.asana.com/api/1.0/tasks -d "name=%UserInput%" -d "workspace=%DevResults_Workspace%" -d "assignee=%DevResults_Assignee%" 
;Run %CurlCommand%
;Pause
;Return
 

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

