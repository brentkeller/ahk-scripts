; Microsoft Surface Pen shortcuts
; Mostly copied from https://github.com/TheTripleV/WinMods/blob/master/Pen.ahk
; Discovered from reddit: https://www.reddit.com/r/Surface/comments/h827lm/surface_pen_autohotkey_remapping_is_not_working/
#NoEnv, #Persistent, #SingleInstance

SetTitleMatchMode, 2

waitingPeriod = -600 ; Timeout to register extra clicks
numOfClicks = 0

~#F20:: ; Pen Single Click
    numOfClicks += 1
    SetTimer, redirect, Off
    Gosub, redirect
    return
~#F19:: ; Pen Double Click
    numOfClicks +=2
    SetTimer, redirect, % waitingPeriod
    return
~#F18:: ; Pen Hold
    numOfClicks += 0.5
    SetTimer, redirect, Off
    Gosub, redirect
    return

redirect: ; Hold can only be included in a combo if it comes after a DoubleClick (F19)
    act(  (numOfClicks =  0.5)?"Hold"
          :(numOfClicks =    1)?"SingleClick"
          :(numOfClicks =    2)?"DoubleClick"
          :(numOfClicks =  2.5)?"DoubleClickHold" ; Double Click then Hold on the third click
          :(numOfClicks =    3)?"TripleClick"
          :(numOfClicks =    4)?"QuadraClick"
          :(numOfClicks =  4.5)?"QuadraClickHold"
          :(numOfClicks =    5)?"PENTACLICK"
          :(numOfClicks =    6)?"HexaClick"
          :"badinput")
    numOfClicks = 0
    return

act(mode){
    ; app specific shortcut actions
    if WinActive("Windows Ink Workspace"){
        return
    }
    else if WinActive("screenClass"){
        if (mode = "SingleClick"){
            Send {Right}
            return
        }
        if (mode = "DoubleClick"){
            Send {Left}
            return
        }
        if (mode = "Hold"){
            Send {b}
            return
        }
    }
    else if WinActive("OneNote"){
        if (mode = "SingleClick"){
           Send {AppsKey}
           return
        }
        if (mode = "DoubleClick"){
            return
        }
    }
    else if WinActive("Camera"){
        if (mode = "SingleClick"){
            Send, {Enter}
            return
        }
    }
    ; default actions
    if (mode = "SingleClick"){
      return
    }
    if (mode = "DoubleClick"){
      undo()
      return
    }
    if (mode = "DoubleClickHold"){
      return
    }
    if (mode = "TripleClick"){
      return
    }
    if (mode = "QuadraClick"){
      return
    }
    if (mode = "QuadraClickHold"){
      return
    }
    if (mode = "PENTACLICK"){
      return
    }
    if (mode = "HexaClick"){
      return
    }
    if (mode = "Hold"){
       if not WinActive("OneNote"){ ; run onenote uwp if not running
         Run, onenote-cmd:
       }
    }
    return
}

undo(){
  SendInput, ^z
  return
}

defaultSingleClick(){
    if not WinActive("OneNote"){ ; run onenote uwp if not running
        Run, onenote-cmd:
    }
    return
}

defaultDoubleClick(){
    Run ms-penworkspace://Capture ; Windows Ink Screensketch
    return
}

defaultHold(){
    Run ms-penworkspace://Create ; Windows Ink Sketchpad
    return
}
