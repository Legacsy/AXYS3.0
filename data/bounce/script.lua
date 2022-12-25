local allowCountdown = false
function onStartCountdown()
	-- Block the first countdown and start a timer of 0.8 seconds to play the dialogue
	if not allowCountdown and isStoryMode and not seenCutscene then
		setProperty('inCutscene', true);
		runTimer('startDialogue', 1);
		allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'startDialogue' then -- Timer completed, play dialogue
		startDialogue('dialogue', '');
	end
end

-- Dialogue (When a dialogue is finished, it calls startCountdown again)
function onNextDialogue(count)
	-- triggered when the next dialogue line starts, 'line' starts with 1
end

function onSkipDialogue(count)
	-- triggered when you press Enter and skip a dialogue line that was still being typed, dialogue line starts with 1
end

function onCreate()
	makeAnimatedLuaSprite('bgAxys', 'bgAxys', -450, -40);
	luaSpriteAddAnimationByPrefix('bgAxys', 'dance', 'bgAxys normal', 24, false);
	luaSpritePlayAnimation('bgAxys', 'dance');
	addLuaSprite('bgAxys', false);
	scaleObject('bgAxys', 0.925, 0.925);

	addLuaSprite('bgAxys', false);

end

function onBeatHit()
	-- triggered 4 times per section
	if curBeat % 2 == 0 then
		luaSpritePlayAnimation('bgAxys', 'dance');
	end
end

function onCountdownTick(counter)
	-- counter = 0 -> "Three"
	-- counter = 1 -> "Two"
	-- counter = 2 -> "One"
	-- counter = 3 -> "Go!"
	-- counter = 4 -> Nothing happens lol, tho it is triggered at the same time as onSongStart i think
	if counter % 2 == 0 then
		luaSpritePlayAnimation('bgAxys', 'dance');
	end
end