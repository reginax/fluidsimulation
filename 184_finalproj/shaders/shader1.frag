#version 330 core

out vec4 FragColor;

uniform vec4 ourColor;
uniform float time;

void main()
{
    FragColor = vec4((sin(4 * time) / 2.0f) + 0.5f, 0.0f, 0.0f, 1.0f);
//    FragColor = ourColor;
//    FragColor = vec4(1.0f, 0.0f, 0.0f, 1.0f);
}
