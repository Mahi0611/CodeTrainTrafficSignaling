# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_SOURCE_DIR = /workspace/TrainTrafficSignalingSystem

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /workspace/TrainTrafficSignalingSystem/build

# Utility rule file for GUIBackend_automoc.

# Include the progress variables for this target.
include GUIBackend/CMakeFiles/GUIBackend_automoc.dir/progress.make

GUIBackend/CMakeFiles/GUIBackend_automoc:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/workspace/TrainTrafficSignalingSystem/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Automatic moc and rcc for target GUIBackend"
	cd /workspace/TrainTrafficSignalingSystem/build/GUIBackend && /usr/bin/cmake -E cmake_autogen /workspace/TrainTrafficSignalingSystem/build/GUIBackend/CMakeFiles/GUIBackend_automoc.dir/ ""

GUIBackend_automoc: GUIBackend/CMakeFiles/GUIBackend_automoc
GUIBackend_automoc: GUIBackend/CMakeFiles/GUIBackend_automoc.dir/build.make

.PHONY : GUIBackend_automoc

# Rule to build all files generated by this target.
GUIBackend/CMakeFiles/GUIBackend_automoc.dir/build: GUIBackend_automoc

.PHONY : GUIBackend/CMakeFiles/GUIBackend_automoc.dir/build

GUIBackend/CMakeFiles/GUIBackend_automoc.dir/clean:
	cd /workspace/TrainTrafficSignalingSystem/build/GUIBackend && $(CMAKE_COMMAND) -P CMakeFiles/GUIBackend_automoc.dir/cmake_clean.cmake
.PHONY : GUIBackend/CMakeFiles/GUIBackend_automoc.dir/clean

GUIBackend/CMakeFiles/GUIBackend_automoc.dir/depend:
	cd /workspace/TrainTrafficSignalingSystem/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /workspace/TrainTrafficSignalingSystem /workspace/TrainTrafficSignalingSystem/GUIBackend /workspace/TrainTrafficSignalingSystem/build /workspace/TrainTrafficSignalingSystem/build/GUIBackend /workspace/TrainTrafficSignalingSystem/build/GUIBackend/CMakeFiles/GUIBackend_automoc.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : GUIBackend/CMakeFiles/GUIBackend_automoc.dir/depend

