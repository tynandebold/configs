# Determine the input file's path.
set srcFile to ("Macintosh HD:Users:tdb:sites:configs:" as text) & "netNewsWire-feeds.txt"

# Read lines from file.
set lns to paragraphs of (read file srcFile as Çclass utf8È)

# Loop over lines read and copy each to the clipboard.
repeat with ln in lns
	tell application "NetNewsWire"
		make new feed with data ln at account id "OnMyMac"
	end tell
end repeat