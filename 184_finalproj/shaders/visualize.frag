#version 330 core

out vec4 FragColor;

in vec2 TexCoords;

uniform sampler2D Sampler;
uniform vec3 fillColor;
uniform vec2 scale;

void main() {
    float s = texture(Sampler, TexCoords * scale).r;
    FragColor = vec4(fillColor, s);
}
