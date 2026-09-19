#version 100
precision mediump float;
uniform sampler2D bitmap;
uniform float time;
uniform float strength;
varying vec2 vTexCoord;

void main() {
    vec2 uv = vTexCoord;
    float bands = floor(uv.y * 90.0 + time * 3.0);
    float glitch = fract(sin(bands * 12.9898) * 43758.5453);
    uv.x += (glitch - 0.5) * 0.025 * strength;
    gl_FragColor = texture2D(bitmap, uv);
}
