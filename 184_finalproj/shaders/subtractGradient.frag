#version 330 core

out vec2 FragColor;

uniform sampler2D Velocity;
uniform sampler2D Pressure;
uniform float GradientScale;

void main() {
    ivec2 X = ivec2(gl_FragCoord.xy);
    
    float up = texelFetchOffset(Pressure, X, 0, ivec2(0, 1)).r;
    float down = texelFetchOffset(Pressure, X, 0, ivec2(0, -1)).r;
    float left = texelFetchOffset(Pressure, X, 0, ivec2(-1, 0)).r;
    float right = texelFetchOffset(Pressure, X, 0, ivec2(1, 0)).r;
    float center = texelFetch(Pressure, X, 0).r;
    
    vec2 original_velocity = texelFetch(Velocity, X, 0).xy;
    vec2 gradient = vec2(right - left, up - down) * GradientScale;
    FragColor = original_velocity - gradient;
}
