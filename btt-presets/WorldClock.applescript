on run arguments
	
	-- Debugger
	if class of arguments is script then set arguments to {"US/Pacific", "Pacifica", "24"}
	
	tell arguments
		
		-- Set up the location and city name
		set theLocation to item 1
		
		if theLocation does not contain "/" then return "Invalid location, Bob!"
		
		try
			set CityName to item 2
		end try
		
		-- Logic to figure out what is what
		if (count) is 1 then
			set CityName to theLocation
		else if (count) is 2 then
			try
				set CityName to CityName as integer
			end try
			if CityName's class is integer then set CityName to item 1 as string
		else if (count) ³ 3 then
			try
				item -1 as integer
			on error
				set CityName to (item 2 as string) & space & (item 3 as string) as string
			end try
		end if
		
		-- Extract city name from locationName
		try
			CityName as integer
		on error
			if CityName contains "/" then
				set AppleScript's text item delimiters to "/"
				set CityName to text item 2 of CityName
				set AppleScript's text item delimiters to ""
			end if
		end try
		
		-- Time format: the last argument. If it's not a number, set it to zero.
		set TimeFormat to item -1
		try
			set TimeFormat to TimeFormat as integer
		on error
			set TimeFormat to 0
		end try
		
	end tell
	if TimeFormat = 12 or TimeFormat = 0 then
		set format to "\"+%-l:%M %p\""
	else
		set format to "\"+%H:%M\""
	end if
	
	set outTimes to {}
	
	set theTime to do shell script "export TZ='" & theLocation & "'; date " & format & "; unset TZ"
	
	return CityName & space & theTime
end run