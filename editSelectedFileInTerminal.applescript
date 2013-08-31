-- editSelectedFileInTerminal.applescript
-- Services for Terminal

-- Created by yt on 13/08/30.
-- Copyright 2013 yt. All rights reserved.

on run {input, parameters}
	set filename to input as text
	-- display dialog filename
	if filename ≠ "" then
		
		set cmd to "edit " & filename
		
		tell application "Terminal"
			do script cmd in front tab of front window
		end tell
		
	end if
end run
