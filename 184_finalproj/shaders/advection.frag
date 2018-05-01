#version 330 core

out vec4 FragColor;

uniform sampler2D Velocity;
uniform sampler2D Source;

uniform vec2 InverseSize;
uniform float TimeStep;
uniform float Dissipation;

void main() {
    vec2 fragCoord = gl_FragCoord.xy;
    vec2 u = texture(Velocity, InverseSize * fragCoord).xy;
    vec2 coord = InverseSize * (fragCoord - TimeStep * u);
    FragColor = Dissipation * texture(Source, coord);
}
