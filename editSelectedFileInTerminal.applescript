-- editSelectedFileInTerminal.applescript
-- Services for Terminal

-- Created by yt on 13/08/30.
-- Copyright 2013 yt. All rights reserved.

on run {input, parameters}
	set filename to input as text
	--	set filename to ""
	-- display dialog filename
	if filename ≠ "" then
		
		-- drop surplus text after a filename
		set colon_count to 0
		repeat with i from 1 to (length of filename)
			set c to character i of filename
			if c = ":" then
				set colon_count to colon_count + 1
				if colon_count = 2 then
					set filename to characters 1 thru (i - 1) of filename
					exit repeat
				end if
			else if c = " " and colon_count ≥ 1 then
				set filename to characters 1 thru (i - 1) of filename
				exit repeat
			end if
		end repeat
		
		set cmd to "edit " & filename
		
		tell application "Terminal"
			do script cmd in front tab of front window
		end tell
		
	end if
end run
