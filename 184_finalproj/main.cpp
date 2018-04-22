#include <glad/glad.h>
#include <GLFW/glfw3.h>

#include <iostream>
#include <fstream>
#include <math.h>
#include "shader.h"

void framebuffer_size_callback(GLFWwindow* window, int width, int height);
void processInput(GLFWwindow *window);

// settings
const unsigned int SCR_WIDTH = 800;
const unsigned int SCR_HEIGHT = 600;

int main()
{
    // glfw: initialize and configure
    // ------------------------------
    glfwInit();
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);
    
#ifdef __APPLE__
    glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE); // uncomment this statement to fix compilation on OS X
#endif
    
    // glfw window creation
    // --------------------
    GLFWwindow* window = glfwCreateWindow(SCR_WIDTH, SCR_HEIGHT, "LearnOpenGL", NULL, NULL);
    if (window == NULL)
    {
        std::cout << "Failed to create GLFW window" << std::endl;
        glfwTerminate();
        return -1;
    }
    glfwMakeContextCurrent(window);
    glfwSetFramebufferSizeCallback(window, framebuffer_size_callback);
    
    // glad: load all OpenGL function pointers
    // ---------------------------------------
    if (!gladLoadGLLoader((GLADloadproc)glfwGetProcAddress))
    {
        std::cout << "Failed to initialize GLAD" << std::endl;
        return -1;
    }
    
    
    // build and compile our shader program
    Shader shader1("shaders/shader1.vert", "shaders/shader1.frag");
    Shader shader2("shaders/shader1.vert", "shaders/shader2.frag");
    Shader shader3("shaders/shader3.vert", "shaders/shader1.frag");
    
    // set up vertex data (and buffer(s)) and configure vertex attributes
    // ------------------------------------------------------------------
    float vertices[] = {
        -1.0f, -0.5f, 0.0f, // left triangle, left bottom
        0.0f, -0.5f, 0.0f, // left triangle, right bottom AND right triangle, left bottom
        -0.5f, 0.5f, 0.0f, // left triangle, top
        0.0f, -0.5f, 0.0f, // right triangle, left bottom
        1.0f, -0.5f, 0.0f, // right triangle, right bottom
        0.5f, 0.5f, 0.0f // right triangle, top
    };
    unsigned int indices[] = {  // note that we start from 0!
        0, 1, 2,   // first triangle
        1, 3, 4    // second triangle
    };
    
    // making row of dots
    float dots[300000];
    for (int i = 0; i < 1000; ++i) {
        float xposition = i * 2.0f / 500 - 1.0f;
        for (int j = 0; j < 100; ++j) {
            float yposition = j * 2.0f / 500 - 0.1f;
            dots[3*(100 * i + j)] = xposition;
            dots[3*(100 * i + j) + 1] = yposition;
            dots[3*(100 * i + j) + 2] = 0.0f;
        }
    }
    
    unsigned int VBO, VAO, EBO;
    glGenVertexArrays(1, &VAO);
    glGenBuffers(1, &VBO);
    glGenBuffers(1, &EBO);
    // bind the Vertex Array Object first, then bind and set vertex buffer(s), and then configure vertex attributes(s).
    glBindVertexArray(VAO);
    
    glBindBuffer(GL_ARRAY_BUFFER, VBO);
    glBufferData(GL_ARRAY_BUFFER, sizeof(dots), dots, GL_STATIC_DRAW);
    
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, EBO);
    glBufferData(GL_ELEMENT_ARRAY_BUFFER, sizeof(indices), indices, GL_STATIC_DRAW);
    
    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 3 * sizeof(float), (void*)0);
    glEnableVertexAttribArray(0);
    
    // note that this is allowed, the call to glVertexAttribPointer registered VBO as the vertex attribute's bound vertex buffer object so afterwards we can safely unbind
    glBindBuffer(GL_ARRAY_BUFFER, 0);
    
    // You can unbind the VAO afterwards so other VAO calls won't accidentally modify this VAO, but this rarely happens. Modifying other
    // VAOs requires a call to glBindVertexArray anyways so we generally don't unbind VAOs (nor VBOs) when it's not directly necessary.
    glBindVertexArray(0);
    
    
    // uncomment this call to draw in wireframe polygons.
//    glPolygonMode(GL_FRONT_AND_BACK, GL_LINE);
    
    // render loop
    // -----------
//    while (!glfwWindowShouldClose(window))
//    {
//        // input
//        // -----
//        processInput(window);
//
//        // render
//        // ------
//        glClearColor(0.2f, 0.3f, 0.3f, 1.0f);
//        glClear(GL_COLOR_BUFFER_BIT);
//
//        // time varying color (dynamic)
//        shader1.use();
//        float timeValue = glfwGetTime();
//        float greenValue = (sin(timeValue) / 2.0f) + 0.5f;
//        int vertexColorLocation = glGetUniformLocation(shader1.ID, "ourColor");
//        glUniform4f(vertexColorLocation, 0.0f, greenValue, 0.0f, 1.0f);
//
//        // draw our first triangle
//        glBindVertexArray(VAO); // seeing as we only have a single VAO there's no need to bind it every time, but we'll do so to keep things a bit more organized
//        glDrawArrays(GL_TRIANGLES, 0, 3);
////        glDrawElements(GL_TRIANGLES, 3, GL_UNSIGNED_INT, 0);
//
//        shader2.use();
//        glBindVertexArray(VAO);
////        glDrawElements(GL_TRIANGLES, 3, GL_UNSIGNED_INT, 0);
//        glDrawArrays(GL_TRIANGLES, 3, 3);
//        // glBindVertexArray(0); // no need to unbind it every time
//
//        // glfw: swap buffers and poll IO events (keys pressed/released, mouse moved etc.)
//        // -------------------------------------------------------------------------------
//        glfwSwapBuffers(window);
//        glfwPollEvents();
//    }
    
    while(!glfwWindowShouldClose(window)) {
        processInput(window);
        glClearColor(0.2f, 0.3f, 0.3f, 1.0f);
        glClear(GL_COLOR_BUFFER_BIT);
        shader3.use();
        float timeValue = glfwGetTime();
        float timeCount = timeValue;
        int vertexLocation = glGetUniformLocation(shader3.ID, "time");
        glUniform1f(vertexLocation, timeCount);
        glBindVertexArray(VAO);
        glDrawArrays(GL_POINTS, 0, 300000);
        glfwSwapBuffers(window);
        glfwPollEvents();
    }
    
    // optional: de-allocate all resources once they've outlived their purpose:
    // ------------------------------------------------------------------------
    glDeleteVertexArrays(1, &VAO);
    glDeleteBuffers(1, &VBO);
    glDeleteBuffers(1, &EBO);
    
    // glfw: terminate, clearing all previously allocated GLFW resources.
    // ------------------------------------------------------------------
    glfwTerminate();
    return 0;
}

// process all input: query GLFW whether relevant keys are pressed/released this frame and react accordingly
// ---------------------------------------------------------------------------------------------------------
void processInput(GLFWwindow *window)
{
    if (glfwGetKey(window, GLFW_KEY_ESCAPE) == GLFW_PRESS)
        glfwSetWindowShouldClose(window, true);
}

// glfw: whenever the window size changed (by OS or user resize) this callback function executes
// ---------------------------------------------------------------------------------------------
void framebuffer_size_callback(GLFWwindow* window, int width, int height)
{
    // make sure the viewport matches the new window dimensions; note that width and
    // height will be significantly larger than specified on retina displays.
    glViewport(0, 0, width, height);
}
