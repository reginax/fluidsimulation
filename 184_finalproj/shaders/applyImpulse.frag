#version 330 core

in vec2 TexCoords;

out vec4 FragColor;

uniform vec2 point;
uniform float radius;
uniform vec3 fillColor;

void main() {
    float d = distance(point, gl_FragCoord.xy);
    if (d < radius) {
        float a = 0.5 * (radius - d);
        a = min(a, 1.0);
        FragColor = vec4(fillColor, a);
    } else {
        FragColor = vec4(0);
    }
}
