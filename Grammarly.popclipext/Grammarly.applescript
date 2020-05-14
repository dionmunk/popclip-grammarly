set the clipboard to "{popclip text}"
set browser to "{popclip option browser}"

if (browser = "Chrome") then
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
end if

if browser = "Safari" then
	tell application "Safari"
		activate
		open location "http://grammarly-check.com"
	end tell
	
	# wait 2 seconds
	delay 2
	
	# paste in selected popclip text
	tell application "System Events"
		tell process "Safari"
			keystroke "v" using {command down}
		end tell
	end tell
end if