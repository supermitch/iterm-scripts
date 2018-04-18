iTerm Scripts
=============

🍏 iTerm
[Applescripting](https://developer.apple.com/library/content/documentation/AppleScript/Conceptual/AppleScriptX/AppleScriptX.html) 
automation is fun.


## Compiling Applescript

Plaintext `.applescript` files should be compiled into binary `.scpt` files to use them happily.

My preference is just to write them in Apple's Script Editor, and compile & export as a script.

If you insist on using your own editor, compile via `osacompile -o filename.scpt filename.applescript`.


## Script Libraries

To create importable _libraries_, put them in: `~/Library/Script Libraries/`

* You may have to create that folder
* These files _must_ be compiled `.scpt` format


## iTerm2 Scripts

Put `.scpt` scripts in: `~/Library/Application Support/iTerm2/Scripts/`

When you restart iTerm2 you should now see a *Scripts* menu option.

Go nuts!
