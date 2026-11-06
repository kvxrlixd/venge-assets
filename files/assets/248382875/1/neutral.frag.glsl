precision mediump float;

uniform sampler2D uColorBuffer;
varying vec2 vUv;

void main() {
    vec4 c = texture2D(uColorBuffer, vUv);
    gl_FragColor = c;
}