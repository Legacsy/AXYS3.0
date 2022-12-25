function onCreate()
	-- background shit
	makeLuaSprite('crosslineback', 'crosslineback', -1600, -1300);
	setLuaSpriteScrollFactor('crosslineback', 0.6, 0.6);
	scaleObject('crosslineback', 2, 2);	

	makeLuaSprite('floor', 'brokenBuilding', -550, 0);
	setLuaSpriteScrollFactor('floor', 1, 1);
	scaleObject('floor', 1.1, 1.1);

	makeAnimatedLuaSprite('crosslinePeopleFront', 'crosslinePeopleFront', -800, 600);
	luaSpriteAddAnimationByPrefix('crosslinePeopleFront', 'dance', 'crosslinePeopleFront idle', 24, false);
	luaSpritePlayAnimation('crosslinePeopleFront', 'dance');
	scaleObject('crosslinePeopleFront', 1.5, 1.5);
	setLuaSpriteScrollFactor('crosslinePeopleFront', .5, .5);

	makeLuaSprite('wall', 'brokenWall', -2000, -1500);
	setLuaSpriteScrollFactor('wall', 0.8, 0.8)
	scaleObject('wall', 0.9, 0.9);

	makeLuaSprite('bgwall', 'bgWall', -2000, 0);
	setLuaSpriteScrollFactor('bgwall', 1, 1)
	scaleObject('bgwall', 1, 1);


	makeLuaSprite('buildings', 'bgBuildings', -1100, -500);
	setLuaSpriteScrollFactor('buildings', 0.7, 0.7);
	scaleObject('buildings', 1.6, 1.6);

	addLuaSprite('crosslineback', false);
	addLuaSprite('buildings', false);
	addLuaSprite('bgwall', false);
	addLuaSprite('floor', false);
	addLuaSprite('wall', true);
	addLuaSprite('crosslinePeopleFront', true);

end

function onBeatHit()
	-- triggered 4 times per section
	if curBeat % 2 == 0 then
		luaSpritePlayAnimation('crosslinePeopleFront', 'dance');
	end
end

function onCountdownTick(counter)
	-- counter = 0 -> "Three"
	-- counter = 1 -> "Two"
	-- counter = 2 -> "One"
	-- counter = 3 -> "Go!"
	-- counter = 4 -> Nothing happens lol, tho it is triggered at the same time as onSongStart i think
	if counter % 2 == 0 then
		luaSpritePlayAnimation('crosslinePeopleFront', 'dance');
	end
end