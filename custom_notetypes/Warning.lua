function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Instakill Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Warning' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'warning-note_sheet'); --Change texture

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
			end
		end
	end
	--debugPrint('Script started!')
end

-- Function called when you hit a note (after note hit calculations)
-- id: The note member id, you can get whatever variable you want from this note, example: "getPropertyFromGroup('notes', id, 'strumTime')"
-- noteData: 0 = Left, 1 = Down, 2 = Up, 3 = Right
-- noteType: The note type string/tag
-- isSustainNote: If it's a hold note, can be either true or false
function noteMiss(id, noteData, noteType, isSustainNote)
	if noteType == 'Warning' then
		    health = getProperty('health')
		setProperty('health', health- 0.5);
				triggerEvent('Play Animation','attack','Dad')
		triggerEvent('Play Animation','hurt','BF')
	end
end

function goodNoteHit(id, noteData, noteType, isSustainNote)
			if noteType == 'Warning' then
						triggerEvent('Play Animation','attack','Dad')
						triggerEvent('Play Animation','dodge','BF')
	end
end