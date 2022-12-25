local allowCountdown = false
function onStartCountdown()
	-- Block the first countdown and start a timer of 0.8 seconds to play the dialogue
	if not allowCountdown and isStoryMode and not seenCutscene then
		setProperty('inCutscene', true);
		runTimer('startDialogue', 0.8);
		allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'startDialogue' then -- Timer completed, play dialogue
		startDialogue('dialogue', 'wrenchSample');
	end
end

-- Dialogue (When a dialogue is finished, it calls startCountdown again)
function onNextDialogue(count)
	-- triggered when the next dialogue line starts, 'line' starts with 1
end

function onSkipDialogue(count)
	-- triggered when you press Enter and skip a dialogue line that was still being typed, dialogue line starts with 1
end

function onBeatHit()
	if curBeat==80 then
		setProperty('defaultCamZoom',0.9)
	end

	if curBeat==96 then
		setProperty('defaultCamZoom',0.75)
	end

	if curBeat==104 then
		setProperty('defaultCamZoom',0.9)
	end

	if curBeat==112 then
		setProperty('defaultCamZoom',0.4)
	end

	if curBeat==160 then
		setProperty('defaultCamZoom',0.8)
	end

	if curBeat==207 then
		setProperty('defaultCamZoom',0.5)
	end

	if curBeat==240 then
		setProperty('defaultCamZoom',0.8)
	end

	if curBeat==272 then
		setProperty('defaultCamZoom',0.4)
	end
end