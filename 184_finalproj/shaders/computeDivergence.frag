#version 330 core

out float FragColor;

uniform sampler2D Velocity;
uniform float InverseDX2;

void main() {
    ivec2 X = ivec2(gl_FragCoord.xy);
    
    vec2 up = texelFetchOffset(Velocity, X, 0, ivec2(0, 1)).xy;
    vec2 down = texelFetchOffset(Velocity, X, 0, ivec2(0, -1)).xy;
    vec2 right = texelFetchOffset(Velocity, X, 0, ivec2(1, 0)).xy;
    vec2 left = texelFetchOffset(Velocity, X, 0, ivec2(-1, 0)).xy;
    
    FragColor = (up.y - down.y + right.x - left.x) * InverseDX2;
}
