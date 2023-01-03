#Include lib\WinClipAPI.ahk
#Include lib\WinClip.ahk
#Include lib\GetActiveBrowserURL.ahk
#Include lib\UrlEncodeDecode.ahk

GDriveBase := "H:\My Drive"
ShortcutsPath := "H:\My Drive\Brent\SP8\shortcuts"
chrome := "C:\Program Files\Google\Chrome\Application\chrome.exe"

#Include H:\My Drive\Brent\SP8\config\Secrets.ahk
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
