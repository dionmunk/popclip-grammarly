set the clipboard to "{popclip text}"

tell application "Google Chrome"
    activate
    set myTab to make new tab at end of tabs of window 1
    set URL of myTab to "http://grammarly.dionmunk.com"
end tell

delay 1

tell application "System Events"
    tell process "Google Chrome"
        keystroke "v" using {command down}
    end tell
end tell
