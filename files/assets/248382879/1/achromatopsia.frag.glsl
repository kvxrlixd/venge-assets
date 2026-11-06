precision mediump float;

uniform sampler2D uColorBuffer;
varying vec2 vUv;

void main() {
    vec4 c = texture2D(uColorBuffer, vUv);

    float gray = dot(c.rgb, vec3(0.29900, 0.58700, 0.11400));
    vec3 result = mix(c.rgb, vec3(gray), clamp(1.0, 0.0, 1.0));

    gl_FragColor = vec4(result, c.a);
}
