set jump_user to "jump_username"
set box_user to "box_username"
set env to "staging"
set boxes to {"1", "4", "2", "5", "3", "6"} # IPs. Order is weird b/c session numbering is weird

tell script "Open All htop" # Script from ~/Library/Script Libraries/
	open_all_htops(jump_user, box_user, boxes, env)
end tell
