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
include test/CMakeFiles/test15.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include test/CMakeFiles/test15.dir/compiler_depend.make

# Include the progress variables for this target.
include test/CMakeFiles/test15.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/test15.dir/flags.make

test/CMakeFiles/test15.dir/test15.c.obj: test/CMakeFiles/test15.dir/flags.make
test/CMakeFiles/test15.dir/test15.c.obj: test/CMakeFiles/test15.dir/includes_C.rsp
test/CMakeFiles/test15.dir/test15.c.obj: C:/Users/HP/Documents/GitHub/MQTT-Client/Mqtt/client_lib/paho.mqtt.c/test/test15.c
test/CMakeFiles/test15.dir/test15.c.obj: test/CMakeFiles/test15.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\HP\Documents\GitHub\MQTT-Client\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object test/CMakeFiles/test15.dir/test15.c.obj"
	cd /d C:\Users\HP\Documents\GitHub\MQTT-Client\build\test && C:\msys64\ucrt64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT test/CMakeFiles/test15.dir/test15.c.obj -MF CMakeFiles\test15.dir\test15.c.obj.d -o CMakeFiles\test15.dir\test15.c.obj -c C:\Users\HP\Documents\GitHub\MQTT-Client\Mqtt\client_lib\paho.mqtt.c\test\test15.c

test/CMakeFiles/test15.dir/test15.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/test15.dir/test15.c.i"
	cd /d C:\Users\HP\Documents\GitHub\MQTT-Client\build\test && C:\msys64\ucrt64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\HP\Documents\GitHub\MQTT-Client\Mqtt\client_lib\paho.mqtt.c\test\test15.c > CMakeFiles\test15.dir\test15.c.i

test/CMakeFiles/test15.dir/test15.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/test15.dir/test15.c.s"
	cd /d C:\Users\HP\Documents\GitHub\MQTT-Client\build\test && C:\msys64\ucrt64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\HP\Documents\GitHub\MQTT-Client\Mqtt\client_lib\paho.mqtt.c\test\test15.c -o CMakeFiles\test15.dir\test15.c.s

# Object files for target test15
test15_OBJECTS = \
"CMakeFiles/test15.dir/test15.c.obj"

# External object files for target test15
test15_EXTERNAL_OBJECTS =

test/test15.exe: test/CMakeFiles/test15.dir/test15.c.obj
test/test15.exe: test/CMakeFiles/test15.dir/build.make
test/test15.exe: src/libpaho-mqtt3c.dll.a
test/test15.exe: test/CMakeFiles/test15.dir/linkLibs.rsp
test/test15.exe: test/CMakeFiles/test15.dir/objects1.rsp
test/test15.exe: test/CMakeFiles/test15.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=C:\Users\HP\Documents\GitHub\MQTT-Client\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable test15.exe"
	cd /d C:\Users\HP\Documents\GitHub\MQTT-Client\build\test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\test15.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/test15.dir/build: test/test15.exe
.PHONY : test/CMakeFiles/test15.dir/build

test/CMakeFiles/test15.dir/clean:
	cd /d C:\Users\HP\Documents\GitHub\MQTT-Client\build\test && $(CMAKE_COMMAND) -P CMakeFiles\test15.dir\cmake_clean.cmake
.PHONY : test/CMakeFiles/test15.dir/clean

test/CMakeFiles/test15.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\HP\Documents\GitHub\MQTT-Client\Mqtt\client_lib\paho.mqtt.c C:\Users\HP\Documents\GitHub\MQTT-Client\Mqtt\client_lib\paho.mqtt.c\test C:\Users\HP\Documents\GitHub\MQTT-Client\build C:\Users\HP\Documents\GitHub\MQTT-Client\build\test C:\Users\HP\Documents\GitHub\MQTT-Client\build\test\CMakeFiles\test15.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : test/CMakeFiles/test15.dir/depend

