#include "main.h"

void framebuffer_size_callback(GLFWwindow* window, int width, int height);
void processInput(GLFWwindow *window);

// settings

static TwoLayer Velocity, Density, Pressure, Temperature;
static Layer Divergence, TestLayer;
static GLuint QuadVAO;

int main()
{
    // glfw: initialize and configure
    glfwInit();
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);
    glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE);
    
    // glfw window creation
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
    if (!gladLoadGLLoader((GLADloadproc)glfwGetProcAddress))
    {
        std::cout << "Failed to initialize GLAD" << std::endl;
        return -1;
    }
    
    Velocity = createTwoLayer(SCR_WIDTH, SCR_HEIGHT, 2);
    Density = createTwoLayer(SCR_WIDTH, SCR_HEIGHT, 1);
    Pressure = createTwoLayer(SCR_WIDTH, SCR_HEIGHT, 1);
    Temperature = createTwoLayer(SCR_WIDTH, SCR_HEIGHT, 1);
    Divergence = createLayer(SCR_WIDTH, SCR_HEIGHT, 3);
    
    createPrograms();
    
    // build and compile our various shader programs
    Shader visualizer("shaders/vertex.vert", "shaders/visualize.frag");
    Shader shader3("shaders/shader3.vert", "shaders/shader1.frag");
    Shader shader1("shaders/vertex.vert", "shaders/shader1.frag");
    
    QuadVAO = createQuad();
    glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
    resetLayer(Temperature.A, 0.0f);
    
    // main render loop
    while(!glfwWindowShouldClose(window)) {
//        processInput(window);
//        glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
//        glClear(GL_COLOR_BUFFER_BIT);
//
//        shader1.use();
//        float timeValue = glfwGetTime();
//        float timeCount = timeValue;
//        int vertexLocation = glGetUniformLocation(shader1.ID, "time");
//        glUniform1f(vertexLocation, timeCount);
//
//        glBindVertexArray(QuadVAO);
//        glDrawArrays(GL_TRIANGLE_STRIP, 0, 300000);
//        glfwSwapBuffers(window);
//        glfwPollEvents();
        
        // update information
        glViewport(0, 0, SCR_WIDTH, SCR_HEIGHT);
        advection(Velocity.A, Velocity.A, Velocity.B, VelocityDissipation);
        swapLayers(&Velocity);
        advection(Velocity.A, Temperature.A, Temperature.B, TemperatureDissipation);
        swapLayers(&Temperature);
        advection(Velocity.A, Density.A, Density.B, DensityDissipation);
        swapLayers(&Density);
        applyBuoyancy(Velocity.A, Temperature.A, Density.A, Velocity.B);
        swapLayers(&Velocity);
        applyImpulse(Temperature.A, ImpulsePosition, ImpulseTemp);
        applyImpulse(Density.A, ImpulsePosition, ImpulseDensity);
        computeDivergence(Velocity.A, Divergence);
        resetLayer(Pressure.A, 0);
        for (int i = 0; i < 40; ++i) {
            jacobi(Pressure.A, Divergence, Pressure.B);
            swapLayers(&Pressure);
        }
        subtractGradient(Velocity.A, Pressure.A, Velocity.B);
        swapLayers(&Velocity);

        // rendering
        
        // *** NEW ***
        visualizer.use();
        // *** NEW ***
        
        // *** OLD ***
//        shader1.use();
//        float timeValue = glfwGetTime();
//        float timeCount = timeValue;
//        int vertexLocation = glGetUniformLocation(shader1.ID, "time");
//        glUniform1f(vertexLocation, timeCount);
        // *** OLD ***
        
        processInput(window);
        glBindFramebuffer(GL_DRAW_FRAMEBUFFER, 0);
        
        // *** OLD ***
//        GLint fillColor = glGetUniformLocation(shader1.ID, "fillColor");
        // *** OLD ***
        
        // *** NEW ***
        GLint fillColor = glGetUniformLocation(visualizer.ID, "fillColor");
        GLint scale = glGetUniformLocation(visualizer.ID, "scale");
        // *** NEW ***
        glEnable(GL_BLEND);

        glClearColor(0.5f, 0.5f, 0.5f, 1.0f);
        glClear(GL_COLOR_BUFFER_BIT);
        glBindVertexArray(QuadVAO);

        glActiveTexture(GL_TEXTURE0);
        glBindTexture(GL_TEXTURE_2D, Density.A.textureHandle);
        glUniform1i(glGetUniformLocation(visualizer.ID, "Sampler"), 0);
        glUniform3f(fillColor, 0.8f, 0.2f, 0.4f);
        
        // *** NEW ***
        glUniform2f(scale, 1.0f / 800, 1.0f / 600);
        // *** NEW ***
        
        glDrawArrays(GL_TRIANGLE_STRIP, 0, 4);

        glDisable(GL_BLEND);
        glfwSwapBuffers(window);
        glfwPollEvents();
    }

    glDeleteVertexArrays(1, &QuadVAO);
    glfwTerminate();
    return 0;
}

void processInput(GLFWwindow *window)
{
    if (glfwGetKey(window, GLFW_KEY_ESCAPE) == GLFW_PRESS)
        glfwSetWindowShouldClose(window, true);
}

void framebuffer_size_callback(GLFWwindow* window, int width, int height)
{
    // make sure the viewport matches the new window dimensions; note that width and
    // height will be significantly larger than specified on retina displays.
    glViewport(0, 0, width, height);
}
