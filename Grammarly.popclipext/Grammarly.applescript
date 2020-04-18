set the clipboard to "{popclip text}"

# open Chrome if it isn't running
if application "Google Chrome" is not running then
	do shell script "/Applications/Google\\ Chrome.app/Contents/MacOS/Google\\ Chrome --profile-directory='Default'"
end if

# activate Chrome, make new tab, and go to a URL
tell application "Google Chrome"
	activate
	set myTab to make new tab at end of tabs of window 1
	set URL of myTab to "http://grammarly-check.com"
end tell

# wait 2 seconds
delay 2

# paste in selected popclip text
tell application "System Events"
	tell process "Google Chrome"
		keystroke "v" using {command down}
	end tell
end tell
