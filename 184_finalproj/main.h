#include <glad/glad.h>
#include <GLFW/glfw3.h>

#include <iostream>
#include <fstream>
#include <math.h>
#include "shader.h"

typedef struct Layer_ {
    GLuint frameBufferHandle;
    GLuint textureHandle;
    int numComponents;
} Layer;

typedef struct TwoLayer_ {
    Layer A;
    Layer B;
} TwoLayer;

typedef struct Vector2D_ {
    int x;
    int y;
} Vector2D;

#define DX (1.25f)
#define DrawRadius (100.0f)

// settings
static const int pos = 0;
static const unsigned int SCR_WIDTH = 1200;
static const unsigned int SCR_HEIGHT = 1600;
static const float TimeStep = 0.125f;
static const float GradientScale = 1.125f / DX;
static const float NormalTemp = 0.0f;
static const float ImpulseTemp = 10.0f;
static const float ImpulseDensity = 1.0f;
static const float SmokeBuoyancy = 0.8f;
static const float SmokeWeight = 0.05f;
static const float VelocityDissipation = 0.99f;
static const float DensityDissipation = 0.9999f;
static const float TemperatureDissipation = 0.99f;
static const Vector2D ImpulsePosition = { SCR_WIDTH / 2, - (int) DrawRadius / 2 };

Layer createLayer(GLsizei width, GLsizei height, int numComponents);
TwoLayer createTwoLayer(GLsizei width, GLsizei height, int numComponents);
GLuint createQuad();
void resetLayer(Layer layer, float val);
void createPrograms();
void swapLayers(TwoLayer* twolayer);
void resetState();
void advection(Layer velocity, Layer src, Layer dest, float dissipation);
void jacobi(Layer pressure, Layer divergence, Layer dest);
void subtractGradient(Layer velocity, Layer pressure, Layer dest);
void computeDivergence(Layer velocity, Layer dest);
void applyImpulse(Layer dest, Vector2D position, float value);
void applyBuoyancy(Layer velocity, Layer temperature, Layer density, Layer dest);



