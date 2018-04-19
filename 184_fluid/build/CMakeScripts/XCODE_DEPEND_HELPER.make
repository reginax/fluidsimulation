# DO NOT EDIT
# This makefile makes sure all linkable targets are
# up-to-date with anything they link to
default:
	echo "Do not invoke directly"

# Rules to remove targets that are older than anything to which they
# link.  This forces Xcode to relink the targets from scratch.  It
# does not seem to check these dependencies itself.
PostBuild.glfw.Debug:
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/Debug/libglfw3.a:
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/Debug/libglfw3.a


PostBuild.boing.Debug:
PostBuild.glfw.Debug: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/examples/Debug/boing.app/Contents/MacOS/boing
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/examples/Debug/boing.app/Contents/MacOS/boing:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/Debug/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/examples/Debug/boing.app/Contents/MacOS/boing


PostBuild.gears.Debug:
PostBuild.glfw.Debug: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/examples/Debug/gears.app/Contents/MacOS/gears
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/examples/Debug/gears.app/Contents/MacOS/gears:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/Debug/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/examples/Debug/gears.app/Contents/MacOS/gears


PostBuild.heightmap.Debug:
PostBuild.glfw.Debug: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/examples/Debug/heightmap.app/Contents/MacOS/heightmap
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/examples/Debug/heightmap.app/Contents/MacOS/heightmap:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/Debug/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/examples/Debug/heightmap.app/Contents/MacOS/heightmap


PostBuild.particles.Debug:
PostBuild.glfw.Debug: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/examples/Debug/particles.app/Contents/MacOS/particles
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/examples/Debug/particles.app/Contents/MacOS/particles:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/Debug/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/examples/Debug/particles.app/Contents/MacOS/particles


PostBuild.simple.Debug:
PostBuild.glfw.Debug: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/examples/Debug/simple.app/Contents/MacOS/simple
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/examples/Debug/simple.app/Contents/MacOS/simple:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/Debug/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/examples/Debug/simple.app/Contents/MacOS/simple


PostBuild.splitview.Debug:
PostBuild.glfw.Debug: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/examples/Debug/splitview.app/Contents/MacOS/splitview
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/examples/Debug/splitview.app/Contents/MacOS/splitview:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/Debug/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/examples/Debug/splitview.app/Contents/MacOS/splitview


PostBuild.wave.Debug:
PostBuild.glfw.Debug: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/examples/Debug/wave.app/Contents/MacOS/wave
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/examples/Debug/wave.app/Contents/MacOS/wave:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/Debug/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/examples/Debug/wave.app/Contents/MacOS/wave


PostBuild.clipboard.Debug:
PostBuild.glfw.Debug: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Debug/clipboard
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Debug/clipboard:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/Debug/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Debug/clipboard


PostBuild.cursor.Debug:
PostBuild.glfw.Debug: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Debug/cursor
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Debug/cursor:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/Debug/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Debug/cursor


PostBuild.empty.Debug:
PostBuild.glfw.Debug: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Debug/empty.app/Contents/MacOS/empty
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Debug/empty.app/Contents/MacOS/empty:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/Debug/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Debug/empty.app/Contents/MacOS/empty


PostBuild.events.Debug:
PostBuild.glfw.Debug: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Debug/events
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Debug/events:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/Debug/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Debug/events


PostBuild.gamma.Debug:
PostBuild.glfw.Debug: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Debug/gamma
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Debug/gamma:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/Debug/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Debug/gamma


PostBuild.glfwinfo.Debug:
PostBuild.glfw.Debug: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Debug/glfwinfo
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Debug/glfwinfo:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/Debug/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Debug/glfwinfo


PostBuild.icon.Debug:
PostBuild.glfw.Debug: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Debug/icon.app/Contents/MacOS/icon
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Debug/icon.app/Contents/MacOS/icon:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/Debug/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Debug/icon.app/Contents/MacOS/icon


PostBuild.iconify.Debug:
PostBuild.glfw.Debug: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Debug/iconify
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Debug/iconify:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/Debug/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Debug/iconify


PostBuild.joysticks.Debug:
PostBuild.glfw.Debug: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Debug/joysticks
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Debug/joysticks:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/Debug/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Debug/joysticks


PostBuild.monitors.Debug:
PostBuild.glfw.Debug: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Debug/monitors
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Debug/monitors:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/Debug/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Debug/monitors


PostBuild.msaa.Debug:
PostBuild.glfw.Debug: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Debug/msaa
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Debug/msaa:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/Debug/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Debug/msaa


PostBuild.reopen.Debug:
PostBuild.glfw.Debug: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Debug/reopen
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Debug/reopen:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/Debug/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Debug/reopen


PostBuild.sharing.Debug:
PostBuild.glfw.Debug: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Debug/sharing.app/Contents/MacOS/sharing
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Debug/sharing.app/Contents/MacOS/sharing:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/Debug/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Debug/sharing.app/Contents/MacOS/sharing


PostBuild.tearing.Debug:
PostBuild.glfw.Debug: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Debug/tearing.app/Contents/MacOS/tearing
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Debug/tearing.app/Contents/MacOS/tearing:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/Debug/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Debug/tearing.app/Contents/MacOS/tearing


PostBuild.threads.Debug:
PostBuild.glfw.Debug: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Debug/threads.app/Contents/MacOS/threads
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Debug/threads.app/Contents/MacOS/threads:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/Debug/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Debug/threads.app/Contents/MacOS/threads


PostBuild.timeout.Debug:
PostBuild.glfw.Debug: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Debug/timeout.app/Contents/MacOS/timeout
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Debug/timeout.app/Contents/MacOS/timeout:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/Debug/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Debug/timeout.app/Contents/MacOS/timeout


PostBuild.title.Debug:
PostBuild.glfw.Debug: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Debug/title.app/Contents/MacOS/title
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Debug/title.app/Contents/MacOS/title:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/Debug/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Debug/title.app/Contents/MacOS/title


PostBuild.windows.Debug:
PostBuild.glfw.Debug: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Debug/windows.app/Contents/MacOS/windows
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Debug/windows.app/Contents/MacOS/windows:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/Debug/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Debug/windows.app/Contents/MacOS/windows


PostBuild.glfw.Release:
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/Release/libglfw3.a:
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/Release/libglfw3.a


PostBuild.boing.Release:
PostBuild.glfw.Release: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/examples/Release/boing.app/Contents/MacOS/boing
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/examples/Release/boing.app/Contents/MacOS/boing:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/Release/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/examples/Release/boing.app/Contents/MacOS/boing


PostBuild.gears.Release:
PostBuild.glfw.Release: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/examples/Release/gears.app/Contents/MacOS/gears
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/examples/Release/gears.app/Contents/MacOS/gears:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/Release/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/examples/Release/gears.app/Contents/MacOS/gears


PostBuild.heightmap.Release:
PostBuild.glfw.Release: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/examples/Release/heightmap.app/Contents/MacOS/heightmap
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/examples/Release/heightmap.app/Contents/MacOS/heightmap:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/Release/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/examples/Release/heightmap.app/Contents/MacOS/heightmap


PostBuild.particles.Release:
PostBuild.glfw.Release: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/examples/Release/particles.app/Contents/MacOS/particles
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/examples/Release/particles.app/Contents/MacOS/particles:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/Release/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/examples/Release/particles.app/Contents/MacOS/particles


PostBuild.simple.Release:
PostBuild.glfw.Release: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/examples/Release/simple.app/Contents/MacOS/simple
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/examples/Release/simple.app/Contents/MacOS/simple:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/Release/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/examples/Release/simple.app/Contents/MacOS/simple


PostBuild.splitview.Release:
PostBuild.glfw.Release: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/examples/Release/splitview.app/Contents/MacOS/splitview
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/examples/Release/splitview.app/Contents/MacOS/splitview:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/Release/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/examples/Release/splitview.app/Contents/MacOS/splitview


PostBuild.wave.Release:
PostBuild.glfw.Release: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/examples/Release/wave.app/Contents/MacOS/wave
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/examples/Release/wave.app/Contents/MacOS/wave:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/Release/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/examples/Release/wave.app/Contents/MacOS/wave


PostBuild.clipboard.Release:
PostBuild.glfw.Release: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Release/clipboard
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Release/clipboard:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/Release/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Release/clipboard


PostBuild.cursor.Release:
PostBuild.glfw.Release: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Release/cursor
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Release/cursor:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/Release/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Release/cursor


PostBuild.empty.Release:
PostBuild.glfw.Release: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Release/empty.app/Contents/MacOS/empty
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Release/empty.app/Contents/MacOS/empty:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/Release/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Release/empty.app/Contents/MacOS/empty


PostBuild.events.Release:
PostBuild.glfw.Release: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Release/events
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Release/events:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/Release/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Release/events


PostBuild.gamma.Release:
PostBuild.glfw.Release: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Release/gamma
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Release/gamma:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/Release/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Release/gamma


PostBuild.glfwinfo.Release:
PostBuild.glfw.Release: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Release/glfwinfo
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Release/glfwinfo:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/Release/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Release/glfwinfo


PostBuild.icon.Release:
PostBuild.glfw.Release: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Release/icon.app/Contents/MacOS/icon
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Release/icon.app/Contents/MacOS/icon:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/Release/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Release/icon.app/Contents/MacOS/icon


PostBuild.iconify.Release:
PostBuild.glfw.Release: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Release/iconify
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Release/iconify:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/Release/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Release/iconify


PostBuild.joysticks.Release:
PostBuild.glfw.Release: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Release/joysticks
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Release/joysticks:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/Release/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Release/joysticks


PostBuild.monitors.Release:
PostBuild.glfw.Release: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Release/monitors
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Release/monitors:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/Release/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Release/monitors


PostBuild.msaa.Release:
PostBuild.glfw.Release: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Release/msaa
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Release/msaa:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/Release/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Release/msaa


PostBuild.reopen.Release:
PostBuild.glfw.Release: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Release/reopen
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Release/reopen:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/Release/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Release/reopen


PostBuild.sharing.Release:
PostBuild.glfw.Release: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Release/sharing.app/Contents/MacOS/sharing
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Release/sharing.app/Contents/MacOS/sharing:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/Release/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Release/sharing.app/Contents/MacOS/sharing


PostBuild.tearing.Release:
PostBuild.glfw.Release: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Release/tearing.app/Contents/MacOS/tearing
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Release/tearing.app/Contents/MacOS/tearing:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/Release/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Release/tearing.app/Contents/MacOS/tearing


PostBuild.threads.Release:
PostBuild.glfw.Release: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Release/threads.app/Contents/MacOS/threads
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Release/threads.app/Contents/MacOS/threads:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/Release/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Release/threads.app/Contents/MacOS/threads


PostBuild.timeout.Release:
PostBuild.glfw.Release: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Release/timeout.app/Contents/MacOS/timeout
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Release/timeout.app/Contents/MacOS/timeout:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/Release/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Release/timeout.app/Contents/MacOS/timeout


PostBuild.title.Release:
PostBuild.glfw.Release: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Release/title.app/Contents/MacOS/title
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Release/title.app/Contents/MacOS/title:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/Release/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Release/title.app/Contents/MacOS/title


PostBuild.windows.Release:
PostBuild.glfw.Release: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Release/windows.app/Contents/MacOS/windows
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Release/windows.app/Contents/MacOS/windows:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/Release/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/Release/windows.app/Contents/MacOS/windows


PostBuild.glfw.MinSizeRel:
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/MinSizeRel/libglfw3.a:
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/MinSizeRel/libglfw3.a


PostBuild.boing.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/examples/MinSizeRel/boing.app/Contents/MacOS/boing
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/examples/MinSizeRel/boing.app/Contents/MacOS/boing:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/MinSizeRel/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/examples/MinSizeRel/boing.app/Contents/MacOS/boing


PostBuild.gears.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/examples/MinSizeRel/gears.app/Contents/MacOS/gears
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/examples/MinSizeRel/gears.app/Contents/MacOS/gears:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/MinSizeRel/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/examples/MinSizeRel/gears.app/Contents/MacOS/gears


PostBuild.heightmap.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/examples/MinSizeRel/heightmap.app/Contents/MacOS/heightmap
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/examples/MinSizeRel/heightmap.app/Contents/MacOS/heightmap:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/MinSizeRel/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/examples/MinSizeRel/heightmap.app/Contents/MacOS/heightmap


PostBuild.particles.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/examples/MinSizeRel/particles.app/Contents/MacOS/particles
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/examples/MinSizeRel/particles.app/Contents/MacOS/particles:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/MinSizeRel/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/examples/MinSizeRel/particles.app/Contents/MacOS/particles


PostBuild.simple.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/examples/MinSizeRel/simple.app/Contents/MacOS/simple
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/examples/MinSizeRel/simple.app/Contents/MacOS/simple:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/MinSizeRel/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/examples/MinSizeRel/simple.app/Contents/MacOS/simple


PostBuild.splitview.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/examples/MinSizeRel/splitview.app/Contents/MacOS/splitview
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/examples/MinSizeRel/splitview.app/Contents/MacOS/splitview:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/MinSizeRel/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/examples/MinSizeRel/splitview.app/Contents/MacOS/splitview


PostBuild.wave.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/examples/MinSizeRel/wave.app/Contents/MacOS/wave
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/examples/MinSizeRel/wave.app/Contents/MacOS/wave:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/MinSizeRel/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/examples/MinSizeRel/wave.app/Contents/MacOS/wave


PostBuild.clipboard.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/MinSizeRel/clipboard
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/MinSizeRel/clipboard:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/MinSizeRel/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/MinSizeRel/clipboard


PostBuild.cursor.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/MinSizeRel/cursor
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/MinSizeRel/cursor:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/MinSizeRel/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/MinSizeRel/cursor


PostBuild.empty.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/MinSizeRel/empty.app/Contents/MacOS/empty
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/MinSizeRel/empty.app/Contents/MacOS/empty:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/MinSizeRel/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/MinSizeRel/empty.app/Contents/MacOS/empty


PostBuild.events.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/MinSizeRel/events
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/MinSizeRel/events:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/MinSizeRel/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/MinSizeRel/events


PostBuild.gamma.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/MinSizeRel/gamma
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/MinSizeRel/gamma:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/MinSizeRel/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/MinSizeRel/gamma


PostBuild.glfwinfo.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/MinSizeRel/glfwinfo
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/MinSizeRel/glfwinfo:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/MinSizeRel/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/MinSizeRel/glfwinfo


PostBuild.icon.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/MinSizeRel/icon.app/Contents/MacOS/icon
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/MinSizeRel/icon.app/Contents/MacOS/icon:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/MinSizeRel/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/MinSizeRel/icon.app/Contents/MacOS/icon


PostBuild.iconify.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/MinSizeRel/iconify
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/MinSizeRel/iconify:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/MinSizeRel/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/MinSizeRel/iconify


PostBuild.joysticks.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/MinSizeRel/joysticks
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/MinSizeRel/joysticks:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/MinSizeRel/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/MinSizeRel/joysticks


PostBuild.monitors.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/MinSizeRel/monitors
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/MinSizeRel/monitors:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/MinSizeRel/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/MinSizeRel/monitors


PostBuild.msaa.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/MinSizeRel/msaa
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/MinSizeRel/msaa:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/MinSizeRel/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/MinSizeRel/msaa


PostBuild.reopen.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/MinSizeRel/reopen
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/MinSizeRel/reopen:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/MinSizeRel/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/MinSizeRel/reopen


PostBuild.sharing.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/MinSizeRel/sharing.app/Contents/MacOS/sharing
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/MinSizeRel/sharing.app/Contents/MacOS/sharing:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/MinSizeRel/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/MinSizeRel/sharing.app/Contents/MacOS/sharing


PostBuild.tearing.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/MinSizeRel/tearing.app/Contents/MacOS/tearing
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/MinSizeRel/tearing.app/Contents/MacOS/tearing:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/MinSizeRel/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/MinSizeRel/tearing.app/Contents/MacOS/tearing


PostBuild.threads.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/MinSizeRel/threads.app/Contents/MacOS/threads
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/MinSizeRel/threads.app/Contents/MacOS/threads:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/MinSizeRel/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/MinSizeRel/threads.app/Contents/MacOS/threads


PostBuild.timeout.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/MinSizeRel/timeout.app/Contents/MacOS/timeout
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/MinSizeRel/timeout.app/Contents/MacOS/timeout:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/MinSizeRel/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/MinSizeRel/timeout.app/Contents/MacOS/timeout


PostBuild.title.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/MinSizeRel/title.app/Contents/MacOS/title
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/MinSizeRel/title.app/Contents/MacOS/title:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/MinSizeRel/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/MinSizeRel/title.app/Contents/MacOS/title


PostBuild.windows.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/MinSizeRel/windows.app/Contents/MacOS/windows
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/MinSizeRel/windows.app/Contents/MacOS/windows:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/MinSizeRel/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/MinSizeRel/windows.app/Contents/MacOS/windows


PostBuild.glfw.RelWithDebInfo:
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/RelWithDebInfo/libglfw3.a:
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/RelWithDebInfo/libglfw3.a


PostBuild.boing.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/examples/RelWithDebInfo/boing.app/Contents/MacOS/boing
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/examples/RelWithDebInfo/boing.app/Contents/MacOS/boing:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/RelWithDebInfo/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/examples/RelWithDebInfo/boing.app/Contents/MacOS/boing


PostBuild.gears.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/examples/RelWithDebInfo/gears.app/Contents/MacOS/gears
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/examples/RelWithDebInfo/gears.app/Contents/MacOS/gears:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/RelWithDebInfo/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/examples/RelWithDebInfo/gears.app/Contents/MacOS/gears


PostBuild.heightmap.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/examples/RelWithDebInfo/heightmap.app/Contents/MacOS/heightmap
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/examples/RelWithDebInfo/heightmap.app/Contents/MacOS/heightmap:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/RelWithDebInfo/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/examples/RelWithDebInfo/heightmap.app/Contents/MacOS/heightmap


PostBuild.particles.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/examples/RelWithDebInfo/particles.app/Contents/MacOS/particles
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/examples/RelWithDebInfo/particles.app/Contents/MacOS/particles:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/RelWithDebInfo/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/examples/RelWithDebInfo/particles.app/Contents/MacOS/particles


PostBuild.simple.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/examples/RelWithDebInfo/simple.app/Contents/MacOS/simple
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/examples/RelWithDebInfo/simple.app/Contents/MacOS/simple:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/RelWithDebInfo/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/examples/RelWithDebInfo/simple.app/Contents/MacOS/simple


PostBuild.splitview.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/examples/RelWithDebInfo/splitview.app/Contents/MacOS/splitview
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/examples/RelWithDebInfo/splitview.app/Contents/MacOS/splitview:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/RelWithDebInfo/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/examples/RelWithDebInfo/splitview.app/Contents/MacOS/splitview


PostBuild.wave.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/examples/RelWithDebInfo/wave.app/Contents/MacOS/wave
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/examples/RelWithDebInfo/wave.app/Contents/MacOS/wave:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/RelWithDebInfo/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/examples/RelWithDebInfo/wave.app/Contents/MacOS/wave


PostBuild.clipboard.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/RelWithDebInfo/clipboard
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/RelWithDebInfo/clipboard:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/RelWithDebInfo/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/RelWithDebInfo/clipboard


PostBuild.cursor.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/RelWithDebInfo/cursor
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/RelWithDebInfo/cursor:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/RelWithDebInfo/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/RelWithDebInfo/cursor


PostBuild.empty.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/RelWithDebInfo/empty.app/Contents/MacOS/empty
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/RelWithDebInfo/empty.app/Contents/MacOS/empty:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/RelWithDebInfo/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/RelWithDebInfo/empty.app/Contents/MacOS/empty


PostBuild.events.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/RelWithDebInfo/events
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/RelWithDebInfo/events:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/RelWithDebInfo/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/RelWithDebInfo/events


PostBuild.gamma.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/RelWithDebInfo/gamma
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/RelWithDebInfo/gamma:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/RelWithDebInfo/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/RelWithDebInfo/gamma


PostBuild.glfwinfo.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/RelWithDebInfo/glfwinfo
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/RelWithDebInfo/glfwinfo:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/RelWithDebInfo/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/RelWithDebInfo/glfwinfo


PostBuild.icon.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/RelWithDebInfo/icon.app/Contents/MacOS/icon
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/RelWithDebInfo/icon.app/Contents/MacOS/icon:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/RelWithDebInfo/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/RelWithDebInfo/icon.app/Contents/MacOS/icon


PostBuild.iconify.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/RelWithDebInfo/iconify
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/RelWithDebInfo/iconify:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/RelWithDebInfo/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/RelWithDebInfo/iconify


PostBuild.joysticks.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/RelWithDebInfo/joysticks
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/RelWithDebInfo/joysticks:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/RelWithDebInfo/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/RelWithDebInfo/joysticks


PostBuild.monitors.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/RelWithDebInfo/monitors
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/RelWithDebInfo/monitors:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/RelWithDebInfo/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/RelWithDebInfo/monitors


PostBuild.msaa.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/RelWithDebInfo/msaa
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/RelWithDebInfo/msaa:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/RelWithDebInfo/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/RelWithDebInfo/msaa


PostBuild.reopen.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/RelWithDebInfo/reopen
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/RelWithDebInfo/reopen:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/RelWithDebInfo/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/RelWithDebInfo/reopen


PostBuild.sharing.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/RelWithDebInfo/sharing.app/Contents/MacOS/sharing
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/RelWithDebInfo/sharing.app/Contents/MacOS/sharing:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/RelWithDebInfo/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/RelWithDebInfo/sharing.app/Contents/MacOS/sharing


PostBuild.tearing.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/RelWithDebInfo/tearing.app/Contents/MacOS/tearing
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/RelWithDebInfo/tearing.app/Contents/MacOS/tearing:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/RelWithDebInfo/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/RelWithDebInfo/tearing.app/Contents/MacOS/tearing


PostBuild.threads.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/RelWithDebInfo/threads.app/Contents/MacOS/threads
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/RelWithDebInfo/threads.app/Contents/MacOS/threads:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/RelWithDebInfo/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/RelWithDebInfo/threads.app/Contents/MacOS/threads


PostBuild.timeout.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/RelWithDebInfo/timeout.app/Contents/MacOS/timeout
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/RelWithDebInfo/timeout.app/Contents/MacOS/timeout:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/RelWithDebInfo/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/RelWithDebInfo/timeout.app/Contents/MacOS/timeout


PostBuild.title.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/RelWithDebInfo/title.app/Contents/MacOS/title
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/RelWithDebInfo/title.app/Contents/MacOS/title:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/RelWithDebInfo/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/RelWithDebInfo/title.app/Contents/MacOS/title


PostBuild.windows.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/RelWithDebInfo/windows.app/Contents/MacOS/windows
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/RelWithDebInfo/windows.app/Contents/MacOS/windows:\
	/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/RelWithDebInfo/libglfw3.a
	/bin/rm -f /Users/reginax/Downloads/glfw-3.2.1\ 2/build/tests/RelWithDebInfo/windows.app/Contents/MacOS/windows




# For each target create a dummy ruleso the target does not have to exist
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/Debug/libglfw3.a:
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/MinSizeRel/libglfw3.a:
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/RelWithDebInfo/libglfw3.a:
/Users/reginax/Downloads/glfw-3.2.1\ 2/build/src/Release/libglfw3.a:
