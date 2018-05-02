on open_six_sessions(jump_user, box_user, boxes)
	tell application "iTerm"
		tell current window
			create tab with default profile
		end tell

		# Create sessions.
		tell current session of current window
			split vertically with default profile
			split vertically with default profile
		end tell
		tell session 1 of current tab of current window
			split horizontally with default profile
		end tell
		tell session 3 of current tab of current window
			split horizontally with default profile
		end tell
		tell session 5 of current tab of current window
			split horizontally with default profile
		end tell

		# Establish connections & execute actions.
		repeat with i from 1 to count of boxes
			tell session i of current tab of current window
				write text "ssh " & jump_user & "@<jump ip>"
				write text "ssh " & box_user & "@nnn.nnn.nnn." & (item i of boxes)

				write text "echo -ne \"\\033]0;nnn.nnn.nnn." & (item i of boxes) & "\\007\"" # Title is IP
			end tell
		end repeat
	end tell
end open_six_sessions
