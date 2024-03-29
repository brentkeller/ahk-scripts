#Include lib\WinClipAPI.ahk
#Include lib\WinClip.ahk
#Include lib\GetActiveBrowserURL.ahk
#Include lib\UrlEncodeDecode.ahk

GDriveBase := "C:\drive"
ShortcutsPath := "C:\drive\Brent\SP6\shortcuts"
chrome := "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"
curl := "C:\Files\Apps\curl.exe"

;#Include Secrets.ahk
#Include Functions.ahk
#Include Hotkeys.ahk
#Include Expansions.ahk
#Include DR-Expansions.ahk
#Include DR-Hotkeys.ahk
#Include Pen.ahk

#MaxMem 256
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
