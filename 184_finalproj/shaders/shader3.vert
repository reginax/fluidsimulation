#version 330 core

layout (location = 0) in vec3 aPos;

uniform float time;

void main()
{
    gl_Position = vec4(aPos.x, sin(time + aPos.x) + aPos.y, aPos.z, 1.0);
//    gl_Position = vec4(aPos.x, aPos.y, aPos.z, 1.0);

}
