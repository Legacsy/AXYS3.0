function onCreate()
	makeAnimatedLuaSprite('voidBG', 'voidBG', -1650, -900)addAnimationByPrefix('voidBG', 'dance', 'voidBG idle', 30, true)
	objectPlayAnimation('voidBG', 'dance', false)
	setLuaSpriteScrollFactor('voidBG', -0.25, -0.25)
	scaleObject('voidBG', 9.75, 6.5);

	makeLuaSprite('platform1', 'voidPlatform', 600, 475);
	setLuaSpriteScrollFactor('platform1', 1, 1);
	scaleObject('platform1', 1, 1);

	makeLuaSprite('platform2', 'voidPlatform', 150, -50);
	setLuaSpriteScrollFactor('platform2', 1, 1);
	scaleObject('platform2', 1.425, 1.425);

	makeLuaSprite('platform3', 'voidPlatform', -800, 125);
	setLuaSpriteScrollFactor('platform3', 1, 1);
	scaleObject('platform3', 1.1, 1.1);

	makeLuaSprite('platform4', 'voidPlatform', -25, -250);
	setLuaSpriteScrollFactor('platform4', 0.4, 0.4);
	scaleObject('platform4', 0.6, 0.6);

	makeLuaSprite('platform5', 'voidPlatform', 800, 100);
	setLuaSpriteScrollFactor('platform5', 0.15, 0.15);
	scaleObject('platform5', 0.4, 0.4);

	addLuaSprite('voidBG', false);
	addLuaSprite('platform4', false);
	addLuaSprite('platform5', false);
	addLuaSprite('platform2', false);
	addLuaSprite('platform1', false);
	addLuaSprite('platform3', false);
	
	close(true);
end