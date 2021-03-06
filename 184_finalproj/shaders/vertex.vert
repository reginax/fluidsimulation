#version 330 core

layout (location = 0) in vec3 pos;
layout (location = 1) in vec2 texCoords;

out vec2 TexCoords;

in vec4 Position;

void main() {
    gl_Position = Position;
    TexCoords = texCoords;
}
