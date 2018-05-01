#version 330 core

out vec4 FragColor;

uniform float time;
uniform vec3 fillColor;

void main()
{
    FragColor = vec4(fillColor, 0.5f);
}
