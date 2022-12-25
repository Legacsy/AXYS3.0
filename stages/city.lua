
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

addLuaSprite('sky', false);
addLuaSprite('bgwall', false);
addLuaSprite('bridge', false);
addLuaSprite('buildings', false);
addLuaSprite('floor', false);

	end

	function onUpdate()

        if mustHitSection == true then
            setProperty('defaultCamZoom',0.85)
        else
            setProperty('defaultCamZoom',0.65)

        end
    end