do shell script "echo > ~/sites/configs/netNewsWire-feeds.txt"

tell application "NetNewsWire"
	set allAccounts to every account
	repeat with nthAccount in allAccounts
		set userFeeds to allFeeds of nthAccount
		repeat with feedObj in userFeeds
			set feedUrl to url of feedObj
			do shell script "echo " & quoted form of feedUrl & " >> ~/sites/configs/netNewsWire-feeds.txt"
		end repeat
	end repeat
end tell