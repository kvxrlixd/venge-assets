precision mediump float;

uniform sampler2D uColorBuffer;
varying vec2 vUv;

void main() {
    vec4 c = texture2D(uColorBuffer, vUv);

    vec3 trit = vec3(
        0.95000*c.r + 0.05000*c.g + 0.00000*c.b,
        0.00000*c.r + 0.43333*c.g + 0.56667*c.b,
        0.00000*c.r + 0.47500*c.g + 0.52500*c.b
    );

    vec3 result = mix(c.rgb, trit, clamp(1.0, 0.0, 1.0));
    gl_FragColor = vec4(result, c.a);
}