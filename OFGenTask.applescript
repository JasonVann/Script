-- Generate task for Omnifocus
-- Generate n more tasks for selected task
-- Jason Niu, Apr. 2017
-- This script is inspired by Bill Palmer's Ebbinghaus review scheduler
-- Assume the task has the pattern of "A num", will generate "A num + 1".... "A num + nTasks"

property pReviewDaysUntilDue : 6 -- allow two days after start date for completion
property pAutoSave : false -- set this to false for faster performance but slightly more risk
property nTasks : 3

on ProcessAction(selAction, dstProject, dateToday)
	local startDate, dueDate, i, dateToday0, num, newName
	tell application id "OFOC"
		log (get name of selAction)
		log (get name of dstProject)
		set oldName to (name of selAction)
		log {first word of oldName, last word of oldName}
		
		tell me
			--get properties of selAction
			--get name of selAction
		end tell
		--get name of selAction
		--get name of archiveProject
		set dateToday0 to dateToday
		repeat with i from 1 to nTasks
			-- print (length of pReviewIntervals)
			-- log (dateToday)
			-- tell selAction to log {note, name}
			set newAction to duplicate selAction to end of tasks of dstProject
			if newAction is null then my die("Sorry, something went wrong while copying this task.")
			if completed of selAction is true then set dateToday to completion date of selAction
			-- get dateToday
			
			-- log (get name of selAction)
			
			set newName to first word of oldName & " " & ((last word of oldName) + i)
			-- log newName
			
			set startDate to dateToday + (i * 7) * days
			
			-- log startDate
			set dueDate to startDate + pReviewDaysUntilDue * days
			--log dueDate
			tell newAction to set {name, defer date, due date, completed} to {newName, startDate, dueDate, false} -- if user already completed original, we need to make duplicate active
			set dateToday to dateToday0
		end repeat
		
	end tell
end ProcessAction

on run {}
	local dstProject
	set dateToday to (current date) - (time of (current date))
	tell application id "OFOC"
		tell front document window of default document
			repeat with oPanel in {content, sidebar}
				set lstProj to (value of selected trees of oPanel where class of its value is project)
				set lngProj to length of lstProj
				if lngProj > 0 then exit repeat
				set dstProject0 to (value of selected trees of oPanel where class of its value is project)
			end repeat
			if lngProj < 1 then return
		end tell
		
		set dstProject to (item 1 of lstProj)
		
		-- log pReviewProject
		-- log dstProject
		
		tell front document
			tell content of first document window
				set lstSelected to value of (selected trees where class of its value is task)
				-- ?? 
				-- set dstProject0 to value of (selected trees where class of its value is flattened project)
				get dstProject0
				if ((count of lstSelected) = 0) then
					display alert "No tasks selected"
					return
				end if
			end tell
			set oldWillAutosave to will autosave
			set will autosave to pAutoSave
			try -- catch any errors and restore autosave setting
				repeat with thisOne in lstSelected
					my ProcessAction(thisOne, dstProject, dateToday)
				end repeat
			end try
			set will autosave to oldWillAutosave
		end tell
	end tell
end run