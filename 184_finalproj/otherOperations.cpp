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
    
    glUniform1i(glGetUniformLocation(prog, "Velocity"), 0);
    glUniform1i(glGetUniformLocation(prog, "Source"), 1);
    
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
    
    glUniform1i(glGetUniformLocation(prog, "Pressure"), 0);
    glUniform1i(glGetUniformLocation(prog, "Divergence"), 1);
    
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
    
    glUniform1i(glGetUniformLocation(prog, "Velocity"), 0);
    glUniform1i(glGetUniformLocation(prog, "Pressure"), 1);
    
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
    
    glUniform1i(glGetUniformLocation(prog, "Velocity"), 0);
    
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
    GLint buoyancy = glGetUniformLocation(prog, "Buoyancy");
    GLint weight = glGetUniformLocation(prog, "Weight");
    
    glUniform1i(tempLoc, 1);
    glUniform1i(densLoc, 2);
    glUniform1f(normalTemp, NormalTemp);
    glUniform1f(timeStep, TimeStep);
    glUniform1f(buoyancy, SmokeBuoyancy);
    glUniform1f(weight, SmokeWeight);
    
    glBindFramebuffer(GL_FRAMEBUFFER, dest.frameBufferHandle);
    
    glActiveTexture(GL_TEXTURE0);
    glBindTexture(GL_TEXTURE_2D, velocity.textureHandle);
    
    glActiveTexture(GL_TEXTURE1);
    glBindTexture(GL_TEXTURE_2D, temperature.textureHandle);
    
    glActiveTexture(GL_TEXTURE2);
    glBindTexture(GL_TEXTURE_2D, density.textureHandle);
    
    glUniform1i(glGetUniformLocation(prog, "Velocity"), 0);
    glUniform1i(glGetUniformLocation(prog, "Temperature"), 1);
    glUniform1i(glGetUniformLocation(prog, "Density"), 2);
    
    glDrawArrays(GL_TRIANGLE_STRIP, 0, 4);
    
    resetState();
}

GLuint createQuad() {
    
    float indices[] = {
        -1.0f, -1.0f, 0.0f, 0.0f, 0.0f,
        1.0f, -1.0f, 0.0f,  1.0f, 0.0f,
        -1.0f, 1.0f, 0.0f,  0.0f, 1.0f,
        1.0f, 1.0f, 0.0f,   1.0f, 1.0f
    };
    
    unsigned int VAO, VBO;
    glGenVertexArrays(1, &VAO);
    glBindVertexArray(VAO);
    
    glGenBuffers(1, &VBO);
    glBindBuffer(GL_ARRAY_BUFFER, VBO);
    glBufferData(GL_ARRAY_BUFFER, sizeof(indices), indices, GL_STATIC_DRAW);
    
    // defines vertex indices
    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 5 * sizeof(float), (void*)0);
    glEnableVertexAttribArray(0);
    
    // defines texture coordinates
    glVertexAttribPointer(1, 2, GL_FLOAT, GL_FALSE, 5 * sizeof(float), (void*)(3 * sizeof(float)));
    glEnableVertexAttribArray(1);
    
    return VAO;
}

TwoLayer createTwoLayer(GLsizei width, GLsizei height, int numVariables) {
    TwoLayer tl;
    tl.A = createLayer(width, height, numVariables);
    tl.B = createLayer(width, height, numVariables);
    return tl;
}

Layer createLayer(GLsizei width, GLsizei height, int numVariables) {
    GLuint frameBufferHandle;
    glGenFramebuffers(1, &frameBufferHandle);
    glBindFramebuffer(GL_FRAMEBUFFER, frameBufferHandle);
    
    GLuint textureHandle;
    glGenTextures(1, &textureHandle);
    glBindTexture(GL_TEXTURE_2D, textureHandle);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
    
    if (numVariables == 1) {
        glTexImage2D(GL_TEXTURE_2D, 0, GL_R32F, width, height, 0, GL_RED, GL_FLOAT, 0);
    } else if (numVariables == 2) {
        glTexImage2D(GL_TEXTURE_2D, 0, GL_RG32F, width, height, 0, GL_RG, GL_FLOAT, 0);
    } else if (numVariables == 3) {
        glTexImage2D(GL_TEXTURE_2D, 0, GL_RGB32F, width, height, 0, GL_RGB, GL_FLOAT, 0);
    } else {
        std::cout << "Failed to create layer - incorrect number of variables" << std::endl;
    }
    
    glFramebufferTexture2D(GL_FRAMEBUFFER, GL_COLOR_ATTACHMENT0, GL_TEXTURE_2D, textureHandle, 0);
    
    if (GL_NO_ERROR != glGetError() || GL_FRAMEBUFFER_COMPLETE != glCheckFramebufferStatus(GL_FRAMEBUFFER)) {
        std::cout << "Failed to attach color buffer" << std::endl;
    }
    
    Layer layer = {frameBufferHandle, textureHandle, numVariables};
    
    glClearColor(0, 0, 0, 0);
    glClear(GL_COLOR_BUFFER_BIT);
    glBindFramebuffer(GL_FRAMEBUFFER, 0);
    
    return layer;
}

