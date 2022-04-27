set dryRun to false

set spamPhrases to {}

set spamPhrases to spamPhrases & " playoncamnow.com/"
set spamPhrases to spamPhrases & " onlinelustycams.com/"
set spamPhrases to spamPhrases & " onlinefuncams.com/"
set spamPhrases to spamPhrases & " havefuninchat.com/"
set spamPhrases to spamPhrases & " tastyonlinecams.com/"
set spamPhrases to spamPhrases & " onlinewildcams.com/"
set spamPhrases to spamPhrases & " fierycamchat.com/"
set spamPhrases to spamPhrases & " myflirtycam.com/"
set spamPhrases to spamPhrases & " mynaughtychat.com/"
set spamPhrases to spamPhrases & " joinmeoncam.com/"
set spamPhrases to spamPhrases & " naughtycamhere.com/"
set spamPhrases to spamPhrases & " evening.thatcamsite2022.com/"
set spamPhrases to spamPhrases & " tonight.wecamnowbabe.com/"
set spamPhrases to spamPhrases & " viewmyhotcam.com/"
set spamPhrases to spamPhrases & " chillandcam.com/"
set spamPhrases to spamPhrases & " ourcamchat.com/"
set spamPhrases to spamPhrases & " naughtycamhere.com/"
set spamPhrases to spamPhrases & " desirablecams.com/"
set spamPhrases to spamPhrases & " stunnercam.com/"
set spamPhrases to spamPhrases & " inclinedipping.com/"
set spamPhrases to spamPhrases & " justfuncams.com/"
set spamPhrases to spamPhrases & " funcamwithme.com/"
set spamPhrases to spamPhrases & " getyouritemfast.com/"
set spamPhrases to spamPhrases & " itemjust4you.com/"
set spamPhrases to spamPhrases & " lockeditems.com/"

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
	repeat
		set noSpamFound to true
		tell process "Messages"
			activate
			set frontmost to true


			-- reach deep into the UI to grab just the list of conversations.
			-- this reduces the total objects handled and significantly speeds execution.
			-- Q: is there a more direct path to this group? This seems really long compared to the levels present in the "Accessibility Inspector" output
			set theGroup to group 1 of group 1 of group 1 of group 2 of group 1 of group 1 of group 1 of group 2 of group 1 of group 1 of group 1 of group 1 of group 1 of group 1 of group 1 of window 1

			set allConversations to (UI elements of theGroup)
			repeat with theConversation in allConversations
				set theDescription to (get description of theConversation as string)
				repeat with spamPhrase in my spamPhrases
					if theDescription contains spamPhrase then
						if my dryRun then
							log "- " & theDescription
						else
							log "deleting: " & theDescription
							click theConversation
							delay 1
							my delete_currently_selected_chat()
							set noSpamFound to false
							exit repeat
						end if
					end if
				end repeat -- spamPhrases
				if not noSpamFound then
					exit repeat
				end if
			end repeat -- allConversations
			if noSpamFound then
				log "> no spam found. Done."
				exit repeat
			end if
		end tell
	end repeat -- (outer-most loop)
end tell
