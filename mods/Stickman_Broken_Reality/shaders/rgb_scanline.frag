#version 100
precision mediump float;
uniform sampler2D bitmap;
uniform float uTime;
uniform float uStrength;
varying vec2 openfl_TextureCoordv;
void main(){ vec2 uv=openfl_TextureCoordv; float line=sin(uv.y*720.0+uTime*12.0)*0.001*uStrength; vec2 r=uv+vec2(line,0.0); vec2 b=uv-vec2(line,0.0); vec4 c=texture2D(bitmap,uv); c.r=texture2D(bitmap,r).r; c.b=texture2D(bitmap,b).b; float scan=1.0-0.08*uStrength*sin(uv.y*900.0); gl_FragColor=vec4(c.rgb*scan,c.a); }
