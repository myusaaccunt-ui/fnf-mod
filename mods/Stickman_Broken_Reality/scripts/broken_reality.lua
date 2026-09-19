local cfg = dofile('mods/Stickman_Broken_Reality/scripts/android_config.lua')
local phase = 1
local phases = {0,256,768,1280,1792,2048,2304,2528}
local mode = cfg.graphicsMode
function onCreate()
  precacheImage('characters/stickman')
  precacheImage('characters/fracture')
  precacheImage('stages/broken-reality')
  setProperty('skipCountdown', false)
  makeLuaText('sbWarning','',0,0,120); setTextAlignment('sbWarning','center'); setTextSize('sbWarning',28); addLuaText('sbWarning')
end
function onSongStart() setProperty('camGame.zoom',0.82); triggerEvent('Change Character','dad','fracture') end
function onStepHit()
  for i=#phases,1,-1 do if curStep >= phases[i] then phase=i; break end end
  if curStep==0 then triggerEvent('BrokenPhase','intro') end
  if curStep==256 then triggerEvent('BrokenPhase','battle') end
  if curStep==768 then triggerEvent('BrokenPhase','corruption') end
  if curStep==1280 then triggerEvent('BrokenPhase','breakdown') end
  if curStep==1792 then triggerEvent('BrokenPhase','final') end
  if curStep==2048 then triggerEvent('BrokenPhase','extreme') end
  if curStep==2304 then triggerEvent('BrokenPhase','apocalypse') end
  if curStep==2528 then triggerEvent('BrokenPhase','outro') end
  if phase>=7 and curStep%16==0 and mode~='LOW' then cameraShake('game',cfg.maxShake[mode],0.08) end
end
function onBeatHit()
  local z=cfg.maxZoom[mode]; setProperty('camGame.zoom',getProperty('camGame.zoom')+z)
  if curBeat%4==0 and mode~='LOW' then triggerEvent('Screen Flash','ffffff') end
end
function onEvent(n,v1,v2)
  if n=='BrokenPhase' then
    if v1=='corruption' then setProperty('sbWarning.text','REALITY BREACH') end
    if v1=='apocalypse' then setProperty('sbWarning.text','WARNING\nEXTREME DIFFICULTY') end
    if v1=='outro' then setProperty('sbWarning.text','') end
    triggerEvent('StageFX',v1)
  end
end
function goodNoteHit(id,d,t,s) if s and mode=='HIGH' then triggerEvent('NoteSplash',d) end end
