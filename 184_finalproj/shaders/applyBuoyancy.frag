#version 330 core

out vec2 FragColor;

uniform sampler2D Velocity;
uniform sampler2D Temperature;
uniform sampler2D Density;

uniform float NormalTemp;
uniform float TimeStep;
uniform float Sigma;
uniform float Kappa;

void main() {
    ivec2 X = ivec2(gl_FragCoord.xy);
    float temp = texelFetch(Temperature, X, 0).r;
    vec2 velocity = texelFetch(Velocity, X, 0).xy;
    FragColor = velocity;
    
    if (temp > NormalTemp) {
        float density = texelFetch(Density, X, 0).x;
        FragColor += (TimeStep * (temp - NormalTemp) * Sigma - density * Kappa) * vec2(0, 1);
    }
}
