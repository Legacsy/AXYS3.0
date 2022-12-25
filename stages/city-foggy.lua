local camthing = 1

function onCreate()
makeLuaSprite('sky', 'crosslineback', -3000, -550);
makeLuaSprite('floor', 'topBuilding', -1000, -250);
makeLuaSprite('buildings', 'bgBuildings', -600, -125);
makeLuaSprite('bridge', 'bgStreet', -1500, -200);

setLuaSpriteScrollFactor('sky', 0.3, 0.3);
setLuaSpriteScrollFactor('floor', 0.9, 0.9);
setLuaSpriteScrollFactor('buildings', 0.8, 0.8);
setLuaSpriteScrollFactor('bridge', 0.65, 0.65);

scaleObject('sky', 2, 2);
scaleObject('floor', 1.15, 1.15);
scaleObject('buildings', 1, 1);
scaleObject('bridge', 1, 1);



makeLuaSprite('bgwall', 'bgWall', -900, -100);
setLuaSpriteScrollFactor('bgwall', 0.5, 0.5)
scaleObject('bgwall', 0.65, 0.65);

makeLuaSprite('fogFront', 'fogTemplate', -375, 50)
setLuaSpriteScrollFactor('fogFront', -1.5, -1.5)
scaleObject('fogFront', 1.25, 1.25);

makeLuaSprite('fogBack', 'fogTemplate', -575, 50)
setLuaSpriteScrollFactor('fogBack', 0.5, 0.5)
scaleObject('fogBack', 1.1, 1.1);

addLuaSprite('sky', false);
addLuaSprite('bgwall', false);
addLuaSprite('bridge', false);
addLuaSprite('buildings', false);
addLuaSprite('fogBack', false);
addLuaSprite('floor', false);
addLuaSprite('fogFront', true);

	end

	function onUpdate()

        if mustHitSection == true then
            setProperty('defaultCamZoom',0.85)
        else
            setProperty('defaultCamZoom',0.65)

        end
    end

    function noteMiss(id, noteData, noteType, isSustainNote)
        doTweenAlpha('hideUI', 'camHUD', camthing-0.05, 0.5, 'Linear')
        triggerEvent('Play Animation','scared','BF')

        camthing=camthing-0.05
end