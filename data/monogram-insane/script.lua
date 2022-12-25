local allowCountdown = false
local drain = 0
function onStartCountdown()
	if not allowCountdown and isStoryMode and not seenCutscene then --Block the first countdown
		startVideo('hashtagCutscene');
		allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;
end

function onBeatHit()
	if curBeat == 96 then
		setProperty('defaultCamZoom',0.35)
	end

	if curBeat == 128 then
		setProperty('defaultCamZoom',0.55)
	end

	if curBeat == 192 then
		setProperty('defaultCamZoom',0.3)
	end

	if curBeat == 224 then
		setProperty('defaultCamZoom',0.4)
	end

	if curBeat == 280 then
		setProperty('defaultCamZoom',0.75)
	end

	if curBeat == 284 then
		setProperty('defaultCamZoom',0.95)
	end

	if curBeat == 288 then
		setProperty('defaultCamZoom',0.55)
	end

	if curBeat == 336 then
		setProperty('defaultCamZoom',0.8)
	end

	if curBeat == 344 then
		setProperty('defaultCamZoom',0.5)
	end

	if curBeat == 352 then
		setProperty('defaultCamZoom',0.4)
	end
end

function noteMiss(id, noteData, noteType, isSustainNote)
	if noteType == 'Dark Note' then
			health = getProperty('health')
				setProperty('health', health- 0.02);

		drain = drain+ 0.025
		runTimer('drainTime', 2);
	end
end

function onTimerCompleted(tag, loops, loopsLeft)

	if tag == 'drainTime' then
		drain = 0
	end
end

function onStepHit()
	health = getProperty('health')
	setProperty('health', health- drain);
end