#version 330 core

out vec4 FragColor;

uniform sampler2D Pressure;
uniform sampler2D Divergence;

uniform float Alpha;
uniform float InverseBeta;

void main() {
    ivec2 X = ivec2(gl_FragCoord.xy);
    
    vec4 up = texelFetchOffset(Pressure, X, 0, ivec2(0, 1));
    vec4 down = texelFetchOffset(Pressure, X, 0, ivec2(0, -1));
    vec4 left = texelFetchOffset(Pressure, X, 0, ivec2(-1, 0));
    vec4 right = texelFetchOffset(Pressure, X, 0, ivec2(1, 0));
    vec4 center = texelFetch(Pressure, X, 0);
    
    vec4 beta = texelFetch(Divergence, X, 0);
    FragColor = (up + down + left + right + Alpha * beta) * InverseBeta;
}
