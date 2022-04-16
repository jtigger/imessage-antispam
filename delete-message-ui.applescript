set dryRun to true

set spamPhrases to {}
set spamPhrases to spamPhrases & " is my webcam!"
set spamPhrases to spamPhrases & " at my cam "
set spamPhrases to spamPhrases & " is my cam,"
set spamPhrases to spamPhrases & " on my cam."
set spamPhrases to spamPhrases & " on my cam!"
set spamPhrases to spamPhrases & " check out my camera "
set spamPhrases to spamPhrases & " on my camera"

set spamPhrases to spamPhrases & " playoncamnow.com/"
set spamPhrases to spamPhrases & " onlinelustycams.com/"
set spamPhrases to spamPhrases & " onlinefuncams.com/"
set spamPhrases to spamPhrases & " havefuninchat.com/"
set spamPhrases to spamPhrases & " tastyonlinecams.com/"
set spamPhrases to spamPhrases & " onlinewildcams.com/"
set spamPhrases to spamPhrases & " fierycamchat.com/"
set spamPhrases to spamPhrases & " myflirtycam.com/"
set spamPhrases to spamPhrases & " mynaughtychat.com/"

on delete_currently_selected_chat()
	tell application "System Events"
		tell its application process "Messages"
			click menu item "Delete Conversation…" of menu "File" of menu bar 1
			delay 0.2
			click button "Delete" of sheet 1 of window 1
			delay 0.2
		end tell
	end tell
end delete_currently_selected_chat

tell application "System Events"
	tell process "Messages"
		activate
		set frontmost to true
		
		repeat with theItem in entire contents as list -- without "as list" items are mere references
			try -- some items do not have a description, just skip those; in general, if there's an error, let's do the safe thing and skip it.
				set theClass to (get class of theItem as string)
				
				if theClass = "UI element" then
					set theDescription to (get description of theItem as string)
					repeat with spamPhrase in my spamPhrases
						if theDescription contains spamPhrase then
							if my dryRun then
								log "- " & "(class: " & theClass & ") " & theDescription
							else
								log "deleting: " & theDescription
								click theItem
								delay 1
								my delete_currently_selected_chat()
							end if
						end if
					end repeat
				end if
			on error errStr number errorNumber
				log "WARNING: " & errStr & " (" & (errorNumber as string) & ")"
			end try
		end repeat
	end tell
end tell
