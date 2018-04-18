Open All htop
=============

This script quickly fires up `htop` to monitor a set of 6 nodes:

* Create 6 _sessions_ (iTerm-speak for the panes of a split window)
* On each of these:
  * `ssh` into a jump server
  * `ssh` into the actual node
  * Colorize the session
  * Name the session with IP address
  * Run `htop`

The script `Open All htop` is a library script, the other two
just call this script with different arguments; one for
production, one for staging.
