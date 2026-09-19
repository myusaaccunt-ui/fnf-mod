function onCreate()
  makeLuaSprite('realityOverlay','',0,0); makeGraphic('realityOverlay',screenWidth,screenHeight,'101522'); setObjectCamera('realityOverlay','hud'); setProperty('realityOverlay.alpha',0.0); addLuaSprite('realityOverlay',true)
  makeLuaText('judgement','',0,0,screenHeight-150); setTextAlignment('judgement','center'); setTextSize('judgement',24); setObjectCamera('judgement','hud'); addLuaText('judgement')
end
function onUpdatePost() if getProperty('realityOverlay.alpha')>0 then setProperty('realityOverlay.angle',math.sin(os.clock()*8)*0.35) end end
function onEvent(n,v1,v2)
 if n=='StageFX' then
  if v1=='corruption' then doTweenAlpha('overlayIn','realityOverlay',0.18,1.2,'quadInOut') end
  if v1=='final' or v1=='extreme' then doTweenAlpha('overlayMax','realityOverlay',0.34,0.5,'linear') end
  if v1=='outro' then doTweenAlpha('overlayOut','realityOverlay',0,2,'linear') end
 end
end
