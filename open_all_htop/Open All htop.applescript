on open_all_htops(jump_user, box_user, boxes, env)
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

				write text "ssh " & jump_user & "@jumpserver"
				write text "ssh " & box_user & "@0.0.0." & (item i of boxes)

				if env is "prod" then
					write text "echo -n -e \"\\033]6;1;bg;red;brightness;220\\a\"" # Red tab
				else if env is "staging" then
					write text "echo -n -e \"\\033]6;1;bg;red;brightness;210\\a\"" # Yellow tab
					write text "echo -n -e \"\\033]6;1;bg;green;brightness;210\\a\""
				end if
				write text "echo -ne \"\\033]0;Box No." & (item i of boxes) & "\\007\"" # Title is 'Box No. (ip)'

				write text "htop"
			end tell
		end repeat
	end tell
end open_all_htops
