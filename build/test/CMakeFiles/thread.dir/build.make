# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.30

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\CMake\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\HP\Documents\GitHub\MQTT-Client\Mqtt\client_lib\paho.mqtt.c

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\HP\Documents\GitHub\MQTT-Client\build

# Include any dependencies generated for this target.
include test/CMakeFiles/thread.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include test/CMakeFiles/thread.dir/compiler_depend.make

# Include the progress variables for this target.
include test/CMakeFiles/thread.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/thread.dir/flags.make

test/CMakeFiles/thread.dir/thread.c.obj: test/CMakeFiles/thread.dir/flags.make
test/CMakeFiles/thread.dir/thread.c.obj: test/CMakeFiles/thread.dir/includes_C.rsp
test/CMakeFiles/thread.dir/thread.c.obj: C:/Users/HP/Documents/GitHub/MQTT-Client/Mqtt/client_lib/paho.mqtt.c/test/thread.c
test/CMakeFiles/thread.dir/thread.c.obj: test/CMakeFiles/thread.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\HP\Documents\GitHub\MQTT-Client\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object test/CMakeFiles/thread.dir/thread.c.obj"
	cd /d C:\Users\HP\Documents\GitHub\MQTT-Client\build\test && C:\msys64\ucrt64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT test/CMakeFiles/thread.dir/thread.c.obj -MF CMakeFiles\thread.dir\thread.c.obj.d -o CMakeFiles\thread.dir\thread.c.obj -c C:\Users\HP\Documents\GitHub\MQTT-Client\Mqtt\client_lib\paho.mqtt.c\test\thread.c

test/CMakeFiles/thread.dir/thread.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/thread.dir/thread.c.i"
	cd /d C:\Users\HP\Documents\GitHub\MQTT-Client\build\test && C:\msys64\ucrt64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\HP\Documents\GitHub\MQTT-Client\Mqtt\client_lib\paho.mqtt.c\test\thread.c > CMakeFiles\thread.dir\thread.c.i

test/CMakeFiles/thread.dir/thread.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/thread.dir/thread.c.s"
	cd /d C:\Users\HP\Documents\GitHub\MQTT-Client\build\test && C:\msys64\ucrt64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\HP\Documents\GitHub\MQTT-Client\Mqtt\client_lib\paho.mqtt.c\test\thread.c -o CMakeFiles\thread.dir\thread.c.s

test/CMakeFiles/thread.dir/__/src/Thread.c.obj: test/CMakeFiles/thread.dir/flags.make
test/CMakeFiles/thread.dir/__/src/Thread.c.obj: test/CMakeFiles/thread.dir/includes_C.rsp
test/CMakeFiles/thread.dir/__/src/Thread.c.obj: C:/Users/HP/Documents/GitHub/MQTT-Client/Mqtt/client_lib/paho.mqtt.c/src/Thread.c
test/CMakeFiles/thread.dir/__/src/Thread.c.obj: test/CMakeFiles/thread.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\HP\Documents\GitHub\MQTT-Client\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object test/CMakeFiles/thread.dir/__/src/Thread.c.obj"
	cd /d C:\Users\HP\Documents\GitHub\MQTT-Client\build\test && C:\msys64\ucrt64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT test/CMakeFiles/thread.dir/__/src/Thread.c.obj -MF CMakeFiles\thread.dir\__\src\Thread.c.obj.d -o CMakeFiles\thread.dir\__\src\Thread.c.obj -c C:\Users\HP\Documents\GitHub\MQTT-Client\Mqtt\client_lib\paho.mqtt.c\src\Thread.c

test/CMakeFiles/thread.dir/__/src/Thread.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/thread.dir/__/src/Thread.c.i"
	cd /d C:\Users\HP\Documents\GitHub\MQTT-Client\build\test && C:\msys64\ucrt64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\HP\Documents\GitHub\MQTT-Client\Mqtt\client_lib\paho.mqtt.c\src\Thread.c > CMakeFiles\thread.dir\__\src\Thread.c.i

test/CMakeFiles/thread.dir/__/src/Thread.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/thread.dir/__/src/Thread.c.s"
	cd /d C:\Users\HP\Documents\GitHub\MQTT-Client\build\test && C:\msys64\ucrt64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\HP\Documents\GitHub\MQTT-Client\Mqtt\client_lib\paho.mqtt.c\src\Thread.c -o CMakeFiles\thread.dir\__\src\Thread.c.s

# Object files for target thread
thread_OBJECTS = \
"CMakeFiles/thread.dir/thread.c.obj" \
"CMakeFiles/thread.dir/__/src/Thread.c.obj"

# External object files for target thread
thread_EXTERNAL_OBJECTS =

test/thread.exe: test/CMakeFiles/thread.dir/thread.c.obj
test/thread.exe: test/CMakeFiles/thread.dir/__/src/Thread.c.obj
test/thread.exe: test/CMakeFiles/thread.dir/build.make
test/thread.exe: test/CMakeFiles/thread.dir/linkLibs.rsp
test/thread.exe: test/CMakeFiles/thread.dir/objects1.rsp
test/thread.exe: test/CMakeFiles/thread.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=C:\Users\HP\Documents\GitHub\MQTT-Client\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable thread.exe"
	cd /d C:\Users\HP\Documents\GitHub\MQTT-Client\build\test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\thread.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/thread.dir/build: test/thread.exe
.PHONY : test/CMakeFiles/thread.dir/build

test/CMakeFiles/thread.dir/clean:
	cd /d C:\Users\HP\Documents\GitHub\MQTT-Client\build\test && $(CMAKE_COMMAND) -P CMakeFiles\thread.dir\cmake_clean.cmake
.PHONY : test/CMakeFiles/thread.dir/clean

test/CMakeFiles/thread.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\HP\Documents\GitHub\MQTT-Client\Mqtt\client_lib\paho.mqtt.c C:\Users\HP\Documents\GitHub\MQTT-Client\Mqtt\client_lib\paho.mqtt.c\test C:\Users\HP\Documents\GitHub\MQTT-Client\build C:\Users\HP\Documents\GitHub\MQTT-Client\build\test C:\Users\HP\Documents\GitHub\MQTT-Client\build\test\CMakeFiles\thread.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : test/CMakeFiles/thread.dir/depend

