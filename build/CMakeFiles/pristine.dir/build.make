# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Produce verbose output by default.
VERBOSE = 1

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
CMAKE_SOURCE_DIR = /home/plam/Projects/MOTIUS/kotblinky

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/plam/Projects/MOTIUS/kotblinky/build

# Utility rule file for pristine.

# Include the progress variables for this target.
include CMakeFiles/pristine.dir/progress.make

CMakeFiles/pristine:
	/usr/bin/cmake -P /home/plam/Projects/zephyr/cmake/pristine.cmake

pristine: CMakeFiles/pristine
pristine: CMakeFiles/pristine.dir/build.make

.PHONY : pristine

# Rule to build all files generated by this target.
CMakeFiles/pristine.dir/build: pristine

.PHONY : CMakeFiles/pristine.dir/build

CMakeFiles/pristine.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/pristine.dir/cmake_clean.cmake
.PHONY : CMakeFiles/pristine.dir/clean

CMakeFiles/pristine.dir/depend:
	cd /home/plam/Projects/MOTIUS/kotblinky/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/plam/Projects/MOTIUS/kotblinky /home/plam/Projects/MOTIUS/kotblinky /home/plam/Projects/MOTIUS/kotblinky/build /home/plam/Projects/MOTIUS/kotblinky/build /home/plam/Projects/MOTIUS/kotblinky/build/CMakeFiles/pristine.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/pristine.dir/depend

