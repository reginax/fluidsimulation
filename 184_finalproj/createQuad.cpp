#include "main.h"

GLuint createQuad() {
//    float indices[] = {
//        -0.5f, -0.5f, 0.0f, 0.0f, 0.0f,
//        0.5f, -0.5f, 0.0f,  1.0f, 0.0f,
//        -0.5f, 0.5f, 0.0f,  0.0f, 1.0f,
//        0.5f, 0.5f, 0.0f,   1.0f, 1.0f
//    };
    
    float indices[] = {
        -1.0f, -1.0f, 0.0f, 0.0f, 0.0f,
        1.0f, -1.0f, 0.0f,  1.0f, 0.0f,
        -1.0f, 1.0f, 0.0f,  0.0f, 1.0f,
        1.0f, 1.0f, 0.0f,   1.0f, 1.0f
    };
    
//    float indices[300000];
//    for (int i = 0; i < 1000; ++i) {
//        float xposition = i * 2.0f / 500 - 1.0f;
//        for (int j = 0; j < 100; ++j) {
//            float yposition = j * 2.0f / 500 - 0.1f;
//            indices[3*(100 * i + j)] = xposition;
//            indices[3*(100 * i + j) + 1] = yposition;
//            indices[3*(100 * i + j) + 2] = 0.0f;
//        }
//    }
    
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
