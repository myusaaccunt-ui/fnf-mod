#version 100
precision mediump float;
uniform sampler2D bitmap;
uniform float uTime;
uniform float uStrength;
varying vec2 openfl_TextureCoordv;
void main(){ vec2 uv=openfl_TextureCoordv; float band=step(0.92,fract(sin(floor(uv.y*90.0)+uTime*3.0)*43758.5)); uv.x+= (band-0.5)*0.025*uStrength; gl_FragColor=texture2D(bitmap,uv); }
