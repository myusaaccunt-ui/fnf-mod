#version 100
precision mediump float;
uniform sampler2D bitmap;
uniform float time;
uniform float strength;
varying vec2 vTexCoord;

void main() {
    vec2 uv = vTexCoord;
    float wobble = sin((uv.y * 720.0) + time * 9.0) * 0.010 * strength;
    vec2 r = uv + vec2(wobble, 0.0);
    vec2 b = uv - vec2(wobble, 0.0);
    vec4 base = texture2D(bitmap, uv);
    vec4 red = texture2D(bitmap, r);
    vec4 blue = texture2D(bitmap, b);
    float scan = 1.0 - 0.12 * strength * sin(uv.y * 960.0);
    gl_FragColor = vec4((red.r + base.g + blue.b) * 0.65 * scan, base.a);
}
