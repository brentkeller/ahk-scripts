#Include lib\WinClipAPI.ahk
#Include lib\WinClip.ahk
#Include lib\GetActiveBrowserURL.ahk
#Include lib\UrlEncodeDecode.ahk

ShortcutsPath := "C:\Dropbox\Brent\SP6\shortcuts"

;#Include Secrets.ahk
#Include Hotkeys.ahk
#Include Expansions.ahk
#Include SP4-Expansions.ahk
#Include DR-Expansions.ahk
#Include DR-Hotkeys.ahk

#MaxMem 256
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
