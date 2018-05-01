#include "main.h"

struct Programs {
    GLuint Advection;
    GLuint Jacobi;
    GLuint SubtractGradient;
    GLuint ComputeDivergence;
    GLuint ApplyImpulse;
    GLuint ApplyBuoyancy;
    GLuint Visualize;
} Programs;

void resetLayer(Layer layer, float val) {
    glBindFramebuffer(GL_FRAMEBUFFER, layer.frameBufferHandle);
    glClearColor(val, val, val, val);
    glClear(GL_COLOR_BUFFER_BIT);
}

void resetState() {
    glActiveTexture(GL_TEXTURE2);
    glBindTexture(GL_TEXTURE_2D, 0);
    glActiveTexture(GL_TEXTURE1);
    glBindTexture(GL_TEXTURE_2D, 0);
    glActiveTexture(GL_TEXTURE0);
    glBindTexture(GL_TEXTURE_2D, 0);
    glBindFramebuffer(GL_FRAMEBUFFER, 0);
    glDisable(GL_BLEND);
}

void swapLayers(TwoLayer* twoLayer) {
    Layer temp = twoLayer->A;
    twoLayer->A = twoLayer->B;
    twoLayer->B = temp;
}

void createPrograms() {
    Programs.Advection = Shader("shaders/vertex.vert", "shaders/advection.frag").ID;
    Programs.Jacobi = Shader("shaders/vertex.vert", "shaders/jacobi.frag").ID;
    Programs.SubtractGradient = Shader("shaders/vertex.vert", "shaders/subtractGradient.frag").ID;
    Programs.ComputeDivergence = Shader("shaders/vertex.vert", "shaders/computeDivergence.frag").ID;
    Programs.ApplyImpulse = Shader("shaders/vertex.vert", "shaders/applyImpulse.frag").ID;
    Programs.ApplyBuoyancy = Shader("shaders/vertex.vert", "shaders/applyBuoyancy.frag").ID;
}

void advection(Layer velocity, Layer src, Layer dest, float dissipation) {
    GLuint prog = Programs.Advection;
    glUseProgram(prog);
    
    GLint inverseSize = glGetUniformLocation(prog, "InverseSize");
    GLint timeStep = glGetUniformLocation(prog, "TimeStep");
    GLint dissip = glGetUniformLocation(prog, "Dissipation");
    GLint source = glGetUniformLocation(prog, "Source");
    
    glUniform2f(inverseSize, 1.0f / SCR_WIDTH, 1.0f / SCR_HEIGHT);
    glUniform1f(timeStep, TimeStep);
    glUniform1f(dissip, dissipation);
    glUniform1i(source, 1);
    
    glBindFramebuffer(GL_FRAMEBUFFER, dest.frameBufferHandle);
    glActiveTexture(GL_TEXTURE0);
    glBindTexture(GL_TEXTURE_2D, velocity.textureHandle);
    glActiveTexture(GL_TEXTURE1);
    glBindTexture(GL_TEXTURE_2D, src.textureHandle);
    glDrawArrays(GL_TRIANGLE_STRIP, 0, 4);
    
    resetState();
}

void jacobi(Layer pressure, Layer divergence, Layer dest) {
    GLuint prog = Programs.Jacobi;
    glUseProgram(prog);
    
    GLint alpha = glGetUniformLocation(prog, "Alpha");
    GLint inverseBeta = glGetUniformLocation(prog, "InverseBeta");
    GLint divLoc = glGetUniformLocation(prog, "Divergence");
    
    glUniform1f(alpha, -DX * DX);
    glUniform1f(inverseBeta, 0.25f);
    glUniform1i(divLoc, 1);
    
    glBindFramebuffer(GL_FRAMEBUFFER, dest.frameBufferHandle);
    glActiveTexture(GL_TEXTURE0);
    glBindTexture(GL_TEXTURE_2D, pressure.textureHandle);
    glActiveTexture(GL_TEXTURE1);
    glBindTexture(GL_TEXTURE_2D, divergence.textureHandle);
    glDrawArrays(GL_TRIANGLE_STRIP, 0, 4);
    
    resetState();
}

void subtractGradient(Layer velocity, Layer pressure, Layer dest) {
    GLuint prog = Programs.SubtractGradient;
    glUseProgram(prog);
    
    GLint gradientScale = glGetUniformLocation(prog, "GradientScale");
    GLint sampler = glGetUniformLocation(prog, "Pressure");
    GLint inverseDX2 = glGetUniformLocation(prog, "InverseDX2");
    
    glUniform1f(gradientScale, GradientScale);
    glUniform1i(sampler, 1);
    glUniform1f(inverseDX2, 0.5f / DX);
    
    glBindFramebuffer(GL_FRAMEBUFFER, dest.frameBufferHandle);
    glActiveTexture(GL_TEXTURE0);
    glBindTexture(GL_TEXTURE_2D, velocity.textureHandle);
    glActiveTexture(GL_TEXTURE1);
    glBindTexture(GL_TEXTURE_2D, pressure.textureHandle);
    glDrawArrays(GL_TRIANGLE_STRIP, 0, 4);
    
    resetState();
}

void computeDivergence(Layer velocity, Layer dest) {
    GLuint prog = Programs.ComputeDivergence;
    glUseProgram(prog);
    
    GLint inverseDX2 = glGetUniformLocation(prog, "InverseDX2");
    glUniform1f(inverseDX2, 0.5f / DX);
    
    glBindFramebuffer(GL_FRAMEBUFFER, dest.frameBufferHandle);
    glActiveTexture(GL_TEXTURE0);
    glBindTexture(GL_TEXTURE_2D, velocity.textureHandle);
    glDrawArrays(GL_TRIANGLE_STRIP, 0, 4);
    
    resetState();
}

void applyImpulse(Layer dest, Vector2D position, float value) {
    GLuint prog = Programs.ApplyImpulse;
    glUseProgram(prog);
    
    GLint pointLoc = glGetUniformLocation(prog, "point");
    GLint radLoc = glGetUniformLocation(prog, "radius");
    GLint fillColorLoc = glGetUniformLocation(prog, "fillColor");
    
    glUniform2f(pointLoc, (float) position.x, (float) position.y);
    glUniform1f(radLoc, DrawRadius);
    glUniform3f(fillColorLoc, value, value, value);
    
    glBindFramebuffer(GL_FRAMEBUFFER, dest.frameBufferHandle);
    glEnable(GL_BLEND);
    glDrawArrays(GL_TRIANGLE_STRIP, 0, 4);
    
    resetState();
}

void applyBuoyancy(Layer velocity, Layer temperature, Layer density, Layer dest) {
    GLuint prog = Programs.ApplyBuoyancy;
    glUseProgram(prog);
    
    GLint tempLoc = glGetUniformLocation(prog, "Temperature");
    GLint densLoc = glGetUniformLocation(prog, "Density");
    GLint normalTemp = glGetUniformLocation(prog, "NormalTemp");
    GLint timeStep = glGetUniformLocation(prog, "TimeStep");
    GLint sigma = glGetUniformLocation(prog, "Sigma");
    GLint kappa = glGetUniformLocation(prog, "Kappa");
    
    glUniform1i(tempLoc, 1);
    glUniform1i(densLoc, 2);
    glUniform1f(normalTemp, NormalTemp);
    glUniform1f(timeStep, TimeStep);
    glUniform1f(sigma, SmokeBuoyancy);
    glUniform1f(kappa, SmokeWeight);
    
    glBindFramebuffer(GL_FRAMEBUFFER, dest.frameBufferHandle);
    glActiveTexture(GL_TEXTURE0);
    glBindTexture(GL_TEXTURE_2D, velocity.textureHandle);
    glActiveTexture(GL_TEXTURE1);
    glBindTexture(GL_TEXTURE_2D, temperature.textureHandle);
    glActiveTexture(GL_TEXTURE2);
    glBindTexture(GL_TEXTURE_2D, density.textureHandle);
    glDrawArrays(GL_TRIANGLE_STRIP, 0, 4);
    
    resetState();
}
