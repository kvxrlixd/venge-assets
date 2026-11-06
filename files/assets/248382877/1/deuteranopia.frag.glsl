precision mediump float;

uniform sampler2D uColorBuffer;
varying vec2 vUv;

void main() {
    vec4 c = texture2D(uColorBuffer, vUv);

    vec3 deuteranopia = vec3(
        c.r * 0.80000 + c.g * 0.20000,
        c.r * 0.40000 + c.g * 0.60000,
        c.b                   
    );

    vec3 result = mix(c.rgb, deuteranopia, clamp(1.0, 0.0, 1.0));

    gl_FragColor = vec4(result, c.a);
}
