-- This AppleScript is supported by MacOS Ventura 13.4
try
	
	tell application "System Settings"
		activate
	end tell
	
	delay 1
	
	if application "System Settings" is running then
		
		tell application "System Events"
			tell application process "System Settings"
				click menu item "Trackpad" of menu "View" of menu bar item "View" of menu bar 1
				delay 0.5
				click radio button 2 of tab group 1 of group 1 of group 2 of splitter group 1 of group 1 of window "Trackpad"
				delay 0.3
				click checkbox "Natural scrolling" of group 1 of scroll area 1 of group 1 of group 2 of splitter group 1 of group 1 of window "Trackpad"
				click menu item "Close" of menu "File" of menu bar item "File" of menu bar 1
			end tell
		end tell
	end if
on error errMsg number errNum
	display alert "Error " & errNum & ": " & errMsg
end try
