# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/gvlab/catkin_ws/src/dynamixel-workbench/dynamixel_workbench_toolbox/examples

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/gvlab/catkin_ws/src/dynamixel-workbench/dynamixel_workbench_toolbox/examples/build

# Include any dependencies generated for this target.
include CMakeFiles/velocity.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/velocity.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/velocity.dir/flags.make

CMakeFiles/velocity.dir/src/i_Velocity.cpp.o: CMakeFiles/velocity.dir/flags.make
CMakeFiles/velocity.dir/src/i_Velocity.cpp.o: ../src/i_Velocity.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gvlab/catkin_ws/src/dynamixel-workbench/dynamixel_workbench_toolbox/examples/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/velocity.dir/src/i_Velocity.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/velocity.dir/src/i_Velocity.cpp.o -c /home/gvlab/catkin_ws/src/dynamixel-workbench/dynamixel_workbench_toolbox/examples/src/i_Velocity.cpp

CMakeFiles/velocity.dir/src/i_Velocity.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/velocity.dir/src/i_Velocity.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gvlab/catkin_ws/src/dynamixel-workbench/dynamixel_workbench_toolbox/examples/src/i_Velocity.cpp > CMakeFiles/velocity.dir/src/i_Velocity.cpp.i

CMakeFiles/velocity.dir/src/i_Velocity.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/velocity.dir/src/i_Velocity.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gvlab/catkin_ws/src/dynamixel-workbench/dynamixel_workbench_toolbox/examples/src/i_Velocity.cpp -o CMakeFiles/velocity.dir/src/i_Velocity.cpp.s

# Object files for target velocity
velocity_OBJECTS = \
"CMakeFiles/velocity.dir/src/i_Velocity.cpp.o"

# External object files for target velocity
velocity_EXTERNAL_OBJECTS =

velocity: CMakeFiles/velocity.dir/src/i_Velocity.cpp.o
velocity: CMakeFiles/velocity.dir/build.make
velocity: libdynamixel_workbench.a
velocity: /usr/local/lib/libdxl_x64_cpp.so
velocity: CMakeFiles/velocity.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/gvlab/catkin_ws/src/dynamixel-workbench/dynamixel_workbench_toolbox/examples/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable velocity"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/velocity.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/velocity.dir/build: velocity

.PHONY : CMakeFiles/velocity.dir/build

CMakeFiles/velocity.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/velocity.dir/cmake_clean.cmake
.PHONY : CMakeFiles/velocity.dir/clean

CMakeFiles/velocity.dir/depend:
	cd /home/gvlab/catkin_ws/src/dynamixel-workbench/dynamixel_workbench_toolbox/examples/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/gvlab/catkin_ws/src/dynamixel-workbench/dynamixel_workbench_toolbox/examples /home/gvlab/catkin_ws/src/dynamixel-workbench/dynamixel_workbench_toolbox/examples /home/gvlab/catkin_ws/src/dynamixel-workbench/dynamixel_workbench_toolbox/examples/build /home/gvlab/catkin_ws/src/dynamixel-workbench/dynamixel_workbench_toolbox/examples/build /home/gvlab/catkin_ws/src/dynamixel-workbench/dynamixel_workbench_toolbox/examples/build/CMakeFiles/velocity.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/velocity.dir/depend

