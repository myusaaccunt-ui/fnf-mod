function onCreate()
  makeLuaText('pauseTheme','STICKMAN // BROKEN REALITY',0,24,24); setTextSize('pauseTheme',18); addLuaText('pauseTheme'); setProperty('pauseTheme.visible',false)
end
function onPause() setProperty('pauseTheme.visible',true) end
function onResume() setProperty('pauseTheme.visible',false) end
function onGameOver() cameraShake('game',0.04,0.25); return Function_Continue end
