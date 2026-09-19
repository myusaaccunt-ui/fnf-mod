#!/usr/bin/env python3
"""Generate native FNF 0.8.8 section charts for the complete 192-second song.
Original deterministic patterns; no random note spam. Run from the repository root.
"""
import json, os
BPM=200; STEP_MS=60000/(BPM*4); TOTAL_STEPS=2560
DIFFS={'easy':0,'normal':1,'hard':2,'insane':3,'nightmare':4,'apocalypse':5}

def add(notes,t,lane,sustain=0): notes.append([round(t*STEP_MS,3),lane,sustain])
def pattern(step,level):
    out=[]; phase=step//256; local=step%256
    density=[16,8,4,2,1,1][level]
    if step<256:
        if step%64==0: add(out,step,local//16%4)
    else:
        for j in range(0,256,density):
            s=step+j; lane=((s//4)+(phase%2))%4
            add(out,s,lane)
            if level>=2 and s%32==0: add(out,s+2,(lane+2)%4)
            if level>=3 and s%64==16: add(out,s+4,(lane+1)%4,8)
            if level>=4 and s%48==24: add(out,s+1,(lane+3)%4)
            if level>=5 and s>=2304 and s%16==0: add(out,s+1,(lane+2)%4)
    return out
for name,level in DIFFS.items():
    sections=[]
    for start in range(0,TOTAL_STEPS,256):
        notes=pattern(start,level)
        sections.append({'lengthInSteps':256,'typeOfSection':0,'mustHitSection':True,'bpm':BPM,'changeBPM':False,'sectionNotes':notes})
    obj={'song':{'song':'broken-reality','notes':sections,'events':[], 'bpm':BPM,'needsVoices':True,'speed':2.8,'player1':'stickman','player2':'fracture','stage':'broken-reality','validScore':True}}
    path=f'mods/Stickman_Broken_Reality/data/songs/broken-reality/{name}.json'
    with open(path,'w') as f: json.dump(obj,f,separators=(',',':'))
print('generated',len(DIFFS),'full charts')
