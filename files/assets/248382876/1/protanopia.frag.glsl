precision mediump float;

uniform sampler2D uColorBuffer;
varying vec2 vUv;

void main() {
    vec4 c = texture2D(uColorBuffer, vUv);

    vec3 prot = vec3(
        0.56667*c.r + 0.43333*c.g + 0.00000*c.b,
        0.55833*c.r + 0.44167*c.g + 0.00000*c.b,
        0.00000*c.r + 0.24167*c.g + 0.75833*c.b
    );

    vec3 result = mix(c.rgb, prot, clamp(1.0, 0.0, 1.0));
    gl_FragColor = vec4(result, c.a);
}