on run start_ip  # Optional commandline argument
	try
		set start_ip to start_ip as integer
	on error  # Arg is not found, e.g. run from iTerm2 menu, or start_ip is not an integer
		repeat
			set dialogResult to (display dialog "Enter a starting IP:" default answer "")
			try
				set start_ip to (text returned of dialogResult) as integer
				exit repeat
			end try
			display dialog "The number must be a valid integer" buttons {"Retry", "Cancel"} default button 1
		end repeat
	end try
	set jump_user to "jump_username"
	set box_user to "box_username"
	set boxes to {start_ip, start_ip + 3, start_ip + 1, start_ip + 4, start_ip + 2, start_ip + 5}

	tell script "OpenSixSessions"
		open_six_sessions(jump_user, box_user, boxes)
	end tell
end run
