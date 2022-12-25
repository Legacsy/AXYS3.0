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

-- Dialogue (When a dialogue is finished, it calls startCountdown again)
function onNextDialogue(count)
	-- triggered when the next dialogue line starts, 'line' starts with 1
end

function onSkipDialogue(count)
	-- triggered when you press Enter and skip a dialogue line that was still being typed, dialogue line starts with 1
end


local trainPart= false
local drain= 0

function onCreate()
	makeAnimatedLuaSprite('trainStage', 'trainStage', -1750, 650)
	addAnimationByPrefix('trainStage', 'animate', 'trainStage idle', 22, true)
	objectPlayAnimation('trainStage', 'animate', false)
	setLuaSpriteScrollFactor('trainStage', 1, 1)
	scaleObject('trainStage', 2, 2);	

	makeAnimatedLuaSprite('trainStage2', 'trainStage', -1850, 650)
	addAnimationByPrefix('trainStage2', 'animate', 'trainStage idle', 22, true)
	objectPlayAnimation('trainStage2', 'animate', false)
	setLuaSpriteScrollFactor('trainStage2', 1, 1)
	scaleObject('trainStage2', 2, 2);

	makeLuaSprite('topBuilding', 'topBuilding', -1000, -250);
	makeLuaSprite('bgBuildings', 'bgBuildings', -600, -125);
	makeLuaSprite('bgStreet', 'bgStreet', -1500, -200);
	setLuaSpriteScrollFactor('topBuilding', 0.9, 0.9);
	setLuaSpriteScrollFactor('bgBuildings', 0.8, 0.8);
	setLuaSpriteScrollFactor('bgStreet', 0.65, 0.65);
	scaleObject('topBuilding', 1.15, 1.15);
	scaleObject('bgBuildings', 1, 1);
	scaleObject('bgStreet', 1, 1);

	makeLuaSprite('bgBuildings3', 'bgBuildings', -600, -125);
	setLuaSpriteScrollFactor('bgBuildings3', 0.8, 0.8);
	scaleObject('bgBuildings3', 1, 1);

	makeLuaSprite('Backwall', 'bgWall', -900, -100);
	setLuaSpriteScrollFactor('Backwall', 0.5, 0.5)
	scaleObject('Backwall', 0.65, 0.65);

	makeAnimatedLuaSprite('voidBG', 'voidBG', -2000, -900)
	addAnimationByPrefix('voidBG', 'dance', 'voidBG idle', 30, true)
	objectPlayAnimation('voidBG', 'dance', false)
	setLuaSpriteScrollFactor('voidBG', -0.25, -0.25)
	scaleObject('voidBG', 9.75, 6.5);

	makeLuaSprite('VoidPlatform', 'voidPlatform', -400, -100);
	setLuaSpriteScrollFactor('VoidPlatform', 1, 1);
	scaleObject('VoidPlatform', 3, 3);

	makeLuaSprite('floor2', 'brokenBuilding', -550, 0);
	setLuaSpriteScrollFactor('floor2', 1, 1);
	scaleObject('floor2', 1.1, 1.1);

	makeAnimatedLuaSprite('crosslinePeopleFront2', 'crosslinePeopleFront', -800, 600);
	luaSpriteAddAnimationByPrefix('crosslinePeopleFront2', 'dance', 'crosslinePeopleFront idle', 24, false);
	luaSpritePlayAnimation('crosslinePeopleFront2', 'dance');
	scaleObject('crosslinePeopleFront2', 1.5, 1.5);
	setLuaSpriteScrollFactor('crosslinePeopleFront2', .5, .5);

	makeLuaSprite('wall2', 'brokenWall', -2000, -1500);
	setLuaSpriteScrollFactor('wall2', 0.8, 0.8)
	scaleObject('wall2', 0.9, 0.9);

	makeLuaSprite('bgwall2', 'bgWall', -2000, 0);
	setLuaSpriteScrollFactor('bgwall2', 1, 1)
	scaleObject('bgwall2', 1, 1);

	makeLuaSprite('buildings2', 'bgBuildings2', -1100, -500);
	setLuaSpriteScrollFactor('buildings2', 0.7, 0.7);
	scaleObject('buildings2', 1.6, 1.6);

	makeAnimatedLuaSprite('trainTransition', 'trainTransition', -1000, -600)
	addAnimationByPrefix('trainTransition', 'animate', 'trainTransition idle', 120, true)
	objectPlayAnimation('trainTransition', 'animate', false)
	setLuaSpriteScrollFactor('trainTransition', 0, 0)
	scaleObject('trainTransition', 2.75, 2.75);

	makeAnimatedLuaSprite('trainTransition1', 'trainTransition', -1000, -600)
	addAnimationByPrefix('trainTransition1', 'animate', 'trainTransition idle', 90, true)
	objectPlayAnimation('trainTransition1', 'animate', false)
	setLuaSpriteScrollFactor('trainTransition1', 0, 0)
	scaleObject('trainTransition1', 2.75, 2.75);

	makeAnimatedLuaSprite('trainTransition2', 'trainTransition', -1000, -600)
	addAnimationByPrefix('trainTransition2', 'animate', 'trainTransition idle', 90, true)
	objectPlayAnimation('trainTransition2', 'animate', false)
	setLuaSpriteScrollFactor('trainTransition2', 0, 0)
	scaleObject('trainTransition2', 2.75, 2.75);

	makeAnimatedLuaSprite('trainTransition3', 'trainTransition', -1000, -600)
	addAnimationByPrefix('trainTransition3', 'animate', 'trainTransition idle', 90, true)
	objectPlayAnimation('trainTransition3', 'animate', false)
	setLuaSpriteScrollFactor('trainTransition3', 0, 0)
	scaleObject('trainTransition3', 2.75, 2.75);

	makeAnimatedLuaSprite('trainTransition4', 'trainTransition', -1000, -600)
	addAnimationByPrefix('trainTransition4', 'animate', 'trainTransition idle', 90, true)
	objectPlayAnimation('trainTransition4', 'animate', false)
	setLuaSpriteScrollFactor('trainTransition4', 0, 0)
	scaleObject('trainTransition4', 2.75, 2.75);

	makeLuaSprite('crosslineback2', 'crosslineback', -1600, -1300);
	setLuaSpriteScrollFactor('crosslineback2', 0.6, 0.6);
	scaleObject('crosslineback2', 2, 2);	

	makeAnimatedLuaSprite('Dreigon', 'dreigonFlying', -700, 1000)
	addAnimationByPrefix('Dreigon', 'idle', 'dreigonFlying IDLE', 12, true)
	addAnimationByPrefix('Dreigon', 'attack', 'dreigonFlying ATTACK', 12, true)
	objectPlayAnimation('Dreigon', 'idle', false)
	setLuaSpriteScrollFactor('Dreigon', 0, 0)
	scaleObject('Dreigon', 0.4, 0.4);
	doTweenAngle('dRotateStart', 'Dreigon', 350, 0, 'Linear')

end



function onBeatHit()

	if curBeat==286 then-- axys 1st phase
	trainPart=true
		setProperty('health', 1)
		setProperty('defaultCamZoom',0.5)

		removeLuaSprite('buildings');
		removeLuaSprite('bgwall');
		removeLuaSprite('floor');
		removeLuaSprite('wall');
		removeLuaSprite('crosslinePeopleFront');

		addLuaSprite('trainStage', true);
		addLuaSprite('trainTransition', true);
	end

	if curBeat==288 then
		removeLuaSprite('trainTransition');	
	end

	if curBeat==447 then
		addLuaSprite('trainTransition1', true);
	end

	if curBeat==448 then--hashtag phase
	trainPart=false
		runTimer('transition2', 1.05)

		setProperty('defaultCamZoom',0.8)
		setProperty('health', 1)
		addLuaSprite('trainTransition1', true);

		removeLuaSprite('trainStage');

				addLuaSprite('Backwall', false);
				addLuaSprite('bgStreet', false);
				addLuaSprite('bgBuildings', false);
				addLuaSprite('topBuilding', false);


	end

	if curBeat==449 then
		removeLuaSprite('trainTransition1');
	end

	if curBeat==774 then
		addLuaSprite('trainTransition2', true);
	end

	if curBeat==775 then --dreigon phase
		runTimer('transition3', 1.05)

		setProperty('defaultCamZoom',0.55)
		setProperty('health', 1)

	removeLuaSprite('Backwall');
	removeLuaSprite('bgStreet');
	removeLuaSprite('bgBuildings');
	removeLuaSprite('topBuilding');
	removeLuaSprite('crosslineback');
	

	addLuaSprite('voidBG', false);
	addLuaSprite('VoidPlatform', false);
	end

--
	if curBeat==780 then
		removeLuaSprite('trainTransition2');
	end

	if curBeat==1008 then
		setProperty('defaultCamZoom',0.95)
	end

	if curBeat==1024 then
		setProperty('defaultCamZoom',0.85)
	end

	if curBeat==1028 then
		setProperty('defaultCamZoom',0.75)
	end

	if curBeat==1032 then
		setProperty('defaultCamZoom',0.55)
	end

	if curBeat==1036 then
		setProperty('defaultCamZoom',0.75)
	end

	if curBeat==1040 then
		setProperty('defaultCamZoom',0.55)
	end

--

	if curBeat==1056 then
		setProperty('defaultCamZoom',0.85)
	end

	if curBeat==1060 then
		setProperty('defaultCamZoom',0.75)
	end

	if curBeat==1064 then
		setProperty('defaultCamZoom',0.55)
	end

	if curBeat==1068 then
		setProperty('defaultCamZoom',0.75)
	end

	if curBeat==1072 then
		setProperty('defaultCamZoom',0.55)
	end
--


	if curBeat==1183 then
		addLuaSprite('trainTransition3', true);
		setProperty('defaultCamZoom',1.3)
	end

	if curBeat==1185 then -- axys final phase --
		trainPart=true

		runTimer('transition4', 1.05)

		setProperty('health', 1)

		removeLuaSprite('VoidPlatform');
		removeLuaSprite('trainTransition3');

		addLuaSprite('trainStage2', true);
		addLuaSprite('Dreigon', true);

	end

	if curBeat==1248 then
		setProperty('defaultCamZoom',0.5)
	end

	if curBeat==1328 then
		doTweenY('HUDup', 'camHUD', -50, 1, 'SineInOut')
	end

	if curBeat==1344 then

		doTweenY('HUDreset', 'camHUD', 0, 1, 'BackOut')

		doTweenAngle('dreigonRise', 'Dreigon', 715, 0.75, 'SineOut')
		doTweenY('dreigonAttack', 'Dreigon', -395, 1, 'SineOut')
	end

	if curBeat==1360 then
		doTweenY('HUDup', 'camHUD', -50, 1, 'SineInOut')
	end

	if curBeat==1376 then

		doTweenY('HUDreset', 'camHUD', 0, 1, 'BackOut')

		doTweenX('HUDloopLeft', 'camHUD', 100, 0.75, 'SineInOut')
		doTweenAngle('dreigonRise', 'Dreigon', 715, 0.75, 'SineOut')
		doTweenY('dreigonAttack', 'Dreigon', -395, 1, 'SineOut')
	end

	if curBeat==1520 then
		doTweenY('HUDup', 'camHUD', -50, 1, 'SineInOut')
	end

	if curBeat==1536 then
		doTweenY('HUDreset', 'camHUD', 0, 1, 'BackOut')
	end

	if curBeat==1824 then
		setProperty('defaultCamZoom',0.7)
	end

	if curBeat==1887 then
		trainPart=false
		addLuaSprite('trainTransition4', true);
	end


	if curBeat==1890 then --end
		runTimer('transition3', 1.05)

		setProperty('defaultCamZoom',0.4)

		removeLuaSprite('trainStage2');
		removeLuaSprite('trainTransition4');
		removeLuaSprite('voidBG');

		addLuaSprite('crosslineback2', false);
		addLuaSprite('buildings3', false);
		addLuaSprite('bgwall2', false);
		addLuaSprite('floor2', false);
		addLuaSprite('wall2', true);
		addLuaSprite('crosslinePeopleFront2', true);

		doTweenAlpha('HUDfade', 'camHUD', 0, 1, 'Linear')

		removeLuaSprite('Dreigon');
	end
end

function onStepHit()
	health = getProperty('health')
	
	setProperty('health', health- drain);
	if trainPart==true then
		triggerEvent('Screen Shake','.1','0.02')
	end
end

-- noteData: 0 = Left, 1 = Down, 2 = Up, 3 = Right
function goodNoteHit(id, noteData, noteType, isSustainNote)
	if trainPart==true then
			if noteType == 'Warning' then
					triggerEvent('Change Character','0','bf')

						triggerEvent('Play Animation','dodge','BF')

					if noteData==0 then
						triggerEvent('Play Animation','attack1','Dad')
					end

					if noteData==1 then
						triggerEvent('Play Animation','attack3','Dad')
					end

					if noteData==2 then
						triggerEvent('Play Animation','attack2','Dad')
					end

					if noteData==3 then
						triggerEvent('Play Animation','attack1','Dad')
					end
			end
	end

	if noteType == 'Drain Note' then
			health = getProperty('health')
				setProperty('health', health- 0.02);

		drain = drain+ 0.0025
		runTimer('drainTime', 15);
	end


end

function noteMiss(id, noteData, noteType, isSustainNote)
	if trainPart==true then
		if noteType == 'Warning' then
			triggerEvent('Change Character','0','bf')
					triggerEvent('Play Animation','hurt','BF')


					if noteData==0 then
						triggerEvent('Play Animation','attack1','Dad')
					end

					if noteData==1 then
						triggerEvent('Play Animation','attack3','Dad')
					end

					if noteData==2 then
						triggerEvent('Play Animation','attack2','Dad')
					end

					if noteData==3 then
						triggerEvent('Play Animation','attack1','Dad')
					end
		end
	end

	if noteType == 'Dark Note' then
			health = getProperty('health')
				setProperty('health', health- 0.02);

		drain = drain+ 0.025
		runTimer('darkTime', 2);
	end

	if noteType == 'Warning' then
		runTimer('warningTime', 5);
		drain = drain+ 0.0025
	end
end



function onTimerCompleted(tag, loops, loopsLeft)

	if tag == 'startDialogue' then -- Timer completed, play dialogue
		startDialogue('dialogue', 'wrenchSample');
	end
	
	if tag == 'drainTime' then
		drain = 0
	end

	if tag == 'darkTime' then
		drain = 0
	end

	if tag == 'warningTime' then
		drain = 0
	end

	if tag=='DAttack' then
		health = getProperty('health')
			setProperty('health', health- 1);

		objectPlayAnimation('Dreigon', 'idle', false)
		doTweenAngle('DreigonReturn', 'Dreigon', -45, 1.75, 'SineIn')
		doTweenY('DreigonDescend', 'Dreigon', 900, 1, 'SineIn')

		triggerEvent('Play Animation','hurt','BF')

		doTweenAngle('hurtHUD', 'camHUD', 25, 0.1, 'Linear')
		drain = drain+ 0.0015
	end
end

function onTweenCompleted(tag)
	if tag=='HUDup' then
		doTweenY('HUDdown1', 'camHUD', 0, 1, 'SineInOut')
	end

	if tag=='HUDdown1' then
		doTweenY('HUDup2', 'camHUD', -100, 1, 'SineInOut')
	end

	if tag=='HUDup2' then
		doTweenY('HUDdown2', 'camHUD', 0, 1, 'SineIn')
	end

	if tag=='HUDdown2' then
		doTweenY('HUDup3', 'camHUD', 40, 0.7, 'SineOut')
	end

	if tag=='HUDloopLeft' then
		doTweenX('HUDloopRight1', 'camHUD', -100, 0.75, 'SineInOut')
	end

	if tag=='HUDloopRight1' then
		doTweenX('HUDloopLeft2', 'camHUD', 100, 0.75, 'SineInOut')
	end

	if tag=='HUDloopLeft2' then
		doTweenX('HUDloopRight2', 'camHUD', -100, 0.75, 'SineInOut')
	end

	if tag=='HUDloopRight2' then
		doTweenX('HUDloopLeft3', 'camHUD', 100, 0.75, 'SineInOut')
	end

	if tag=='HUDloopLeft3' then
		doTweenX('HUDloopRight3', 'camHUD', -100, 0.75, 'SineInOut')
	end

	if tag=='HUDloopRight3' then
		doTweenX('HUDloopLeft4', 'camHUD', 100, 0.75, 'SineInOut')
	end

	if tag=='HUDloopLeft4' then
		doTweenX('HUDloopRight4', 'camHUD', -100, 0.75, 'SineInOut')
	end

	if tag=='HUDloopRight4' then
		doTweenX('HUDloopLeft5', 'camHUD', 100, 0.75, 'SineInOut')
	end

	if tag=='HUDloopLeft5' then
		doTweenX('HUDloopRight5', 'camHUD', -100, 0.75, 'SineInOut')
	end

	if tag=='HUDloopRight5' then
		doTweenX('HUDloopLeft6', 'camHUD', 100, 0.75, 'SineInOut')
	end

	if tag=='HUDloopLeft6' then
		doTweenX('HUDloopRight6', 'camHUD', -100, 0.75, 'SineInOut')
	end

	if tag=='HUDloopRight6' then
		doTweenX('HUDloopLeft7', 'camHUD', 100, 0.75, 'SineInOut')
	end

	if tag=='HUDloopLeft7' then
		doTweenX('HUDloopRight7', 'camHUD', -100, 0.75, 'SineInOut')
	end

	if tag=='HUDloopRight7' then
		doTweenX('HUDloopLeft8', 'camHUD', 0, 0.75, 'SineInOut')
	end

	if tag=='HUDloopL' then
		doTweenAngle('HUDloopR', 'camHUD', 8, 1.5, 'SineInOut')
	end

	if tag=='HUDloopR' then
		doTweenAngle('HUDloopL', 'camHUD', -8, 1.5, 'SineInOut')
	end


	if tag=='dreigonAttack' then
		objectPlayAnimation('Dreigon', 'attack', false)
		runTimer('DAttack', 0.425);
	end

	if tag=='hurtHUD' then
		doTweenAngle('healHUD', 'camHUD', 0, 2, 'SineOut')
	end
end