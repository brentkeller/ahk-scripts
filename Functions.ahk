; ================ FUNCTIONS
CopyBrowserURL() {
  ; copy active browser URL
  url := GetActiveBrowserURL()
  If (url != "")
    clipboard = %url%
  Else
    WinGetClass, Clipboard, A
}

CopyMarkdownLink() {
  url := GetActiveBrowserURL()
  If (url != "") 
  {
    WinGetActiveTitle, Title
    link := "[" . Title . "](" . url . ")"
    clipboard = %link%
  }
}