# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.22.1/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.22.1/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/rzakir/Documents/argosim/argos3-kilobot/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/rzakir/Documents/argosim/argos3-kilobot/build

# Include any dependencies generated for this target.
include examples/behaviors/CMakeFiles/sync.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include examples/behaviors/CMakeFiles/sync.dir/compiler_depend.make

# Include the progress variables for this target.
include examples/behaviors/CMakeFiles/sync.dir/progress.make

# Include the compile flags for this target's objects.
include examples/behaviors/CMakeFiles/sync.dir/flags.make

examples/behaviors/CMakeFiles/sync.dir/sync_autogen/mocs_compilation.cpp.o: examples/behaviors/CMakeFiles/sync.dir/flags.make
examples/behaviors/CMakeFiles/sync.dir/sync_autogen/mocs_compilation.cpp.o: examples/behaviors/sync_autogen/mocs_compilation.cpp
examples/behaviors/CMakeFiles/sync.dir/sync_autogen/mocs_compilation.cpp.o: examples/behaviors/CMakeFiles/sync.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/rzakir/Documents/argosim/argos3-kilobot/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/behaviors/CMakeFiles/sync.dir/sync_autogen/mocs_compilation.cpp.o"
	cd /Users/rzakir/Documents/argosim/argos3-kilobot/build/examples/behaviors && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT examples/behaviors/CMakeFiles/sync.dir/sync_autogen/mocs_compilation.cpp.o -MF CMakeFiles/sync.dir/sync_autogen/mocs_compilation.cpp.o.d -o CMakeFiles/sync.dir/sync_autogen/mocs_compilation.cpp.o -c /Users/rzakir/Documents/argosim/argos3-kilobot/build/examples/behaviors/sync_autogen/mocs_compilation.cpp

examples/behaviors/CMakeFiles/sync.dir/sync_autogen/mocs_compilation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sync.dir/sync_autogen/mocs_compilation.cpp.i"
	cd /Users/rzakir/Documents/argosim/argos3-kilobot/build/examples/behaviors && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/rzakir/Documents/argosim/argos3-kilobot/build/examples/behaviors/sync_autogen/mocs_compilation.cpp > CMakeFiles/sync.dir/sync_autogen/mocs_compilation.cpp.i

examples/behaviors/CMakeFiles/sync.dir/sync_autogen/mocs_compilation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sync.dir/sync_autogen/mocs_compilation.cpp.s"
	cd /Users/rzakir/Documents/argosim/argos3-kilobot/build/examples/behaviors && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/rzakir/Documents/argosim/argos3-kilobot/build/examples/behaviors/sync_autogen/mocs_compilation.cpp -o CMakeFiles/sync.dir/sync_autogen/mocs_compilation.cpp.s

examples/behaviors/CMakeFiles/sync.dir/sync.c.o: examples/behaviors/CMakeFiles/sync.dir/flags.make
examples/behaviors/CMakeFiles/sync.dir/sync.c.o: /Users/rzakir/Documents/argosim/argos3-kilobot/src/examples/behaviors/sync.c
examples/behaviors/CMakeFiles/sync.dir/sync.c.o: examples/behaviors/CMakeFiles/sync.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/rzakir/Documents/argosim/argos3-kilobot/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object examples/behaviors/CMakeFiles/sync.dir/sync.c.o"
	cd /Users/rzakir/Documents/argosim/argos3-kilobot/build/examples/behaviors && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT examples/behaviors/CMakeFiles/sync.dir/sync.c.o -MF CMakeFiles/sync.dir/sync.c.o.d -o CMakeFiles/sync.dir/sync.c.o -c /Users/rzakir/Documents/argosim/argos3-kilobot/src/examples/behaviors/sync.c

examples/behaviors/CMakeFiles/sync.dir/sync.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sync.dir/sync.c.i"
	cd /Users/rzakir/Documents/argosim/argos3-kilobot/build/examples/behaviors && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/rzakir/Documents/argosim/argos3-kilobot/src/examples/behaviors/sync.c > CMakeFiles/sync.dir/sync.c.i

examples/behaviors/CMakeFiles/sync.dir/sync.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sync.dir/sync.c.s"
	cd /Users/rzakir/Documents/argosim/argos3-kilobot/build/examples/behaviors && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/rzakir/Documents/argosim/argos3-kilobot/src/examples/behaviors/sync.c -o CMakeFiles/sync.dir/sync.c.s

# Object files for target sync
sync_OBJECTS = \
"CMakeFiles/sync.dir/sync_autogen/mocs_compilation.cpp.o" \
"CMakeFiles/sync.dir/sync.c.o"

# External object files for target sync
sync_EXTERNAL_OBJECTS =

examples/behaviors/sync: examples/behaviors/CMakeFiles/sync.dir/sync_autogen/mocs_compilation.cpp.o
examples/behaviors/sync: examples/behaviors/CMakeFiles/sync.dir/sync.c.o
examples/behaviors/sync: examples/behaviors/CMakeFiles/sync.dir/build.make
examples/behaviors/sync: /Library/Developer/CommandLineTools/SDKs/MacOSX11.3.sdk/usr/lib/libdl.tbd
examples/behaviors/sync: /Library/Developer/CommandLineTools/SDKs/MacOSX11.3.sdk/usr/lib/libpthread.tbd
examples/behaviors/sync: /usr/local/lib/libfreeimage.dylib
examples/behaviors/sync: /usr/local/lib/libfreeimageplus.dylib
examples/behaviors/sync: /usr/local/lib/liblua5.4.dylib
examples/behaviors/sync: /Library/Developer/CommandLineTools/SDKs/MacOSX11.3.sdk/usr/lib/libdl.tbd
examples/behaviors/sync: /Library/Developer/CommandLineTools/SDKs/MacOSX11.3.sdk/usr/lib/libpthread.tbd
examples/behaviors/sync: /usr/local/lib/libfreeimage.dylib
examples/behaviors/sync: /usr/local/lib/libfreeimageplus.dylib
examples/behaviors/sync: /usr/local/lib/liblua5.4.dylib
examples/behaviors/sync: /Library/Developer/CommandLineTools/SDKs/MacOSX11.3.sdk/usr/lib/libdl.tbd
examples/behaviors/sync: /Library/Developer/CommandLineTools/SDKs/MacOSX11.3.sdk/usr/lib/libpthread.tbd
examples/behaviors/sync: /usr/local/lib/libfreeimage.dylib
examples/behaviors/sync: /usr/local/lib/libfreeimageplus.dylib
examples/behaviors/sync: /usr/local/lib/liblua5.4.dylib
examples/behaviors/sync: /Library/Developer/CommandLineTools/SDKs/MacOSX11.3.sdk/usr/lib/libdl.tbd
examples/behaviors/sync: /Library/Developer/CommandLineTools/SDKs/MacOSX11.3.sdk/usr/lib/libpthread.tbd
examples/behaviors/sync: /usr/local/lib/libfreeimage.dylib
examples/behaviors/sync: /usr/local/lib/libfreeimageplus.dylib
examples/behaviors/sync: /usr/local/lib/liblua5.4.dylib
examples/behaviors/sync: /Library/Developer/CommandLineTools/SDKs/MacOSX11.3.sdk/usr/lib/libdl.tbd
examples/behaviors/sync: /Library/Developer/CommandLineTools/SDKs/MacOSX11.3.sdk/usr/lib/libpthread.tbd
examples/behaviors/sync: /usr/local/lib/libfreeimage.dylib
examples/behaviors/sync: /usr/local/lib/libfreeimageplus.dylib
examples/behaviors/sync: /usr/local/lib/liblua5.4.dylib
examples/behaviors/sync: /Library/Developer/CommandLineTools/SDKs/MacOSX11.3.sdk/usr/lib/libdl.tbd
examples/behaviors/sync: /Library/Developer/CommandLineTools/SDKs/MacOSX11.3.sdk/usr/lib/libpthread.tbd
examples/behaviors/sync: /usr/local/lib/libfreeimage.dylib
examples/behaviors/sync: /usr/local/lib/libfreeimageplus.dylib
examples/behaviors/sync: /usr/local/lib/liblua5.4.dylib
examples/behaviors/sync: /Library/Developer/CommandLineTools/SDKs/MacOSX11.3.sdk/usr/lib/libdl.tbd
examples/behaviors/sync: /Library/Developer/CommandLineTools/SDKs/MacOSX11.3.sdk/usr/lib/libpthread.tbd
examples/behaviors/sync: /usr/local/lib/libfreeimage.dylib
examples/behaviors/sync: /usr/local/lib/libfreeimageplus.dylib
examples/behaviors/sync: /usr/local/lib/liblua5.4.dylib
examples/behaviors/sync: /Library/Developer/CommandLineTools/SDKs/MacOSX11.3.sdk/usr/lib/libdl.tbd
examples/behaviors/sync: /Library/Developer/CommandLineTools/SDKs/MacOSX11.3.sdk/usr/lib/libpthread.tbd
examples/behaviors/sync: /usr/local/lib/libfreeimage.dylib
examples/behaviors/sync: /usr/local/lib/libfreeimageplus.dylib
examples/behaviors/sync: /usr/local/lib/liblua5.4.dylib
examples/behaviors/sync: /Library/Developer/CommandLineTools/SDKs/MacOSX11.3.sdk/usr/lib/libdl.tbd
examples/behaviors/sync: /Library/Developer/CommandLineTools/SDKs/MacOSX11.3.sdk/usr/lib/libpthread.tbd
examples/behaviors/sync: /usr/local/lib/libfreeimage.dylib
examples/behaviors/sync: /usr/local/lib/libfreeimageplus.dylib
examples/behaviors/sync: /usr/local/lib/liblua5.4.dylib
examples/behaviors/sync: /Library/Developer/CommandLineTools/SDKs/MacOSX11.3.sdk/usr/lib/libdl.tbd
examples/behaviors/sync: /Library/Developer/CommandLineTools/SDKs/MacOSX11.3.sdk/usr/lib/libpthread.tbd
examples/behaviors/sync: /usr/local/lib/libfreeimage.dylib
examples/behaviors/sync: /usr/local/lib/libfreeimageplus.dylib
examples/behaviors/sync: /usr/local/lib/liblua5.4.dylib
examples/behaviors/sync: /Library/Developer/CommandLineTools/SDKs/MacOSX11.3.sdk/usr/lib/libdl.tbd
examples/behaviors/sync: /Library/Developer/CommandLineTools/SDKs/MacOSX11.3.sdk/usr/lib/libpthread.tbd
examples/behaviors/sync: /usr/local/lib/libfreeimage.dylib
examples/behaviors/sync: /usr/local/lib/libfreeimageplus.dylib
examples/behaviors/sync: /usr/local/lib/liblua5.4.dylib
examples/behaviors/sync: /Library/Developer/CommandLineTools/SDKs/MacOSX11.3.sdk/usr/lib/libdl.tbd
examples/behaviors/sync: /Library/Developer/CommandLineTools/SDKs/MacOSX11.3.sdk/usr/lib/libpthread.tbd
examples/behaviors/sync: /usr/local/lib/libfreeimage.dylib
examples/behaviors/sync: /usr/local/lib/libfreeimageplus.dylib
examples/behaviors/sync: /usr/local/lib/liblua5.4.dylib
examples/behaviors/sync: /Library/Developer/CommandLineTools/SDKs/MacOSX11.3.sdk/usr/lib/libdl.tbd
examples/behaviors/sync: /Library/Developer/CommandLineTools/SDKs/MacOSX11.3.sdk/usr/lib/libpthread.tbd
examples/behaviors/sync: /usr/local/lib/libfreeimage.dylib
examples/behaviors/sync: /usr/local/lib/libfreeimageplus.dylib
examples/behaviors/sync: /usr/local/lib/liblua5.4.dylib
examples/behaviors/sync: /Library/Developer/CommandLineTools/SDKs/MacOSX11.3.sdk/usr/lib/libdl.tbd
examples/behaviors/sync: /Library/Developer/CommandLineTools/SDKs/MacOSX11.3.sdk/usr/lib/libpthread.tbd
examples/behaviors/sync: /usr/local/lib/libfreeimage.dylib
examples/behaviors/sync: /usr/local/lib/libfreeimageplus.dylib
examples/behaviors/sync: /usr/local/lib/liblua5.4.dylib
examples/behaviors/sync: /Library/Developer/CommandLineTools/SDKs/MacOSX11.3.sdk/usr/lib/libdl.tbd
examples/behaviors/sync: /Library/Developer/CommandLineTools/SDKs/MacOSX11.3.sdk/usr/lib/libpthread.tbd
examples/behaviors/sync: /usr/local/lib/libfreeimage.dylib
examples/behaviors/sync: /usr/local/lib/libfreeimageplus.dylib
examples/behaviors/sync: /usr/local/lib/liblua5.4.dylib
examples/behaviors/sync: /Library/Developer/CommandLineTools/SDKs/MacOSX11.3.sdk/usr/lib/libdl.tbd
examples/behaviors/sync: /Library/Developer/CommandLineTools/SDKs/MacOSX11.3.sdk/usr/lib/libpthread.tbd
examples/behaviors/sync: /usr/local/lib/libfreeimage.dylib
examples/behaviors/sync: /usr/local/lib/libfreeimageplus.dylib
examples/behaviors/sync: /usr/local/lib/liblua5.4.dylib
examples/behaviors/sync: /Library/Developer/CommandLineTools/SDKs/MacOSX11.3.sdk/usr/lib/libdl.tbd
examples/behaviors/sync: /Library/Developer/CommandLineTools/SDKs/MacOSX11.3.sdk/usr/lib/libpthread.tbd
examples/behaviors/sync: /usr/local/lib/libfreeimage.dylib
examples/behaviors/sync: /usr/local/lib/libfreeimageplus.dylib
examples/behaviors/sync: /usr/local/lib/liblua5.4.dylib
examples/behaviors/sync: /Library/Developer/CommandLineTools/SDKs/MacOSX11.3.sdk/usr/lib/libdl.tbd
examples/behaviors/sync: /Library/Developer/CommandLineTools/SDKs/MacOSX11.3.sdk/usr/lib/libpthread.tbd
examples/behaviors/sync: /usr/local/lib/libfreeimage.dylib
examples/behaviors/sync: /usr/local/lib/libfreeimageplus.dylib
examples/behaviors/sync: /usr/local/lib/liblua5.4.dylib
examples/behaviors/sync: /Library/Developer/CommandLineTools/SDKs/MacOSX11.3.sdk/usr/lib/libdl.tbd
examples/behaviors/sync: /Library/Developer/CommandLineTools/SDKs/MacOSX11.3.sdk/usr/lib/libpthread.tbd
examples/behaviors/sync: /usr/local/lib/libfreeimage.dylib
examples/behaviors/sync: /usr/local/lib/libfreeimageplus.dylib
examples/behaviors/sync: /usr/local/lib/liblua5.4.dylib
examples/behaviors/sync: /Library/Developer/CommandLineTools/SDKs/MacOSX11.3.sdk/usr/lib/libdl.tbd
examples/behaviors/sync: /Library/Developer/CommandLineTools/SDKs/MacOSX11.3.sdk/usr/lib/libpthread.tbd
examples/behaviors/sync: /usr/local/lib/libfreeimage.dylib
examples/behaviors/sync: /usr/local/lib/libfreeimageplus.dylib
examples/behaviors/sync: /usr/local/lib/liblua5.4.dylib
examples/behaviors/sync: /Library/Developer/CommandLineTools/SDKs/MacOSX11.3.sdk/usr/lib/libdl.tbd
examples/behaviors/sync: /Library/Developer/CommandLineTools/SDKs/MacOSX11.3.sdk/usr/lib/libpthread.tbd
examples/behaviors/sync: /usr/local/lib/libfreeimage.dylib
examples/behaviors/sync: /usr/local/lib/libfreeimageplus.dylib
examples/behaviors/sync: /usr/local/lib/liblua5.4.dylib
examples/behaviors/sync: /Library/Developer/CommandLineTools/SDKs/MacOSX11.3.sdk/usr/lib/libdl.tbd
examples/behaviors/sync: /Library/Developer/CommandLineTools/SDKs/MacOSX11.3.sdk/usr/lib/libpthread.tbd
examples/behaviors/sync: /usr/local/lib/libfreeimage.dylib
examples/behaviors/sync: /usr/local/lib/libfreeimageplus.dylib
examples/behaviors/sync: /usr/local/lib/liblua5.4.dylib
examples/behaviors/sync: plugins/robots/kilobot/libargos3plugin_simulator_kilolib.a
examples/behaviors/sync: /usr/local/Cellar/qt@5/5.15.2_1/lib/QtWidgets.framework/QtWidgets
examples/behaviors/sync: /usr/local/Cellar/qt@5/5.15.2_1/lib/QtGui.framework/QtGui
examples/behaviors/sync: /usr/local/Cellar/qt@5/5.15.2_1/lib/QtCore.framework/QtCore
examples/behaviors/sync: /Library/Developer/CommandLineTools/SDKs/MacOSX11.3.sdk/usr/lib/libdl.tbd
examples/behaviors/sync: /Library/Developer/CommandLineTools/SDKs/MacOSX11.3.sdk/usr/lib/libpthread.tbd
examples/behaviors/sync: /usr/local/lib/libfreeimage.dylib
examples/behaviors/sync: /usr/local/lib/libfreeimageplus.dylib
examples/behaviors/sync: /usr/local/lib/liblua5.4.dylib
examples/behaviors/sync: /Library/Developer/CommandLineTools/SDKs/MacOSX11.3.sdk/usr/lib/libdl.tbd
examples/behaviors/sync: /Library/Developer/CommandLineTools/SDKs/MacOSX11.3.sdk/usr/lib/libpthread.tbd
examples/behaviors/sync: /usr/local/lib/libfreeimage.dylib
examples/behaviors/sync: /usr/local/lib/libfreeimageplus.dylib
examples/behaviors/sync: /usr/local/lib/liblua5.4.dylib
examples/behaviors/sync: examples/behaviors/CMakeFiles/sync.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/rzakir/Documents/argosim/argos3-kilobot/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable sync"
	cd /Users/rzakir/Documents/argosim/argos3-kilobot/build/examples/behaviors && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sync.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/behaviors/CMakeFiles/sync.dir/build: examples/behaviors/sync
.PHONY : examples/behaviors/CMakeFiles/sync.dir/build

examples/behaviors/CMakeFiles/sync.dir/clean:
	cd /Users/rzakir/Documents/argosim/argos3-kilobot/build/examples/behaviors && $(CMAKE_COMMAND) -P CMakeFiles/sync.dir/cmake_clean.cmake
.PHONY : examples/behaviors/CMakeFiles/sync.dir/clean

examples/behaviors/CMakeFiles/sync.dir/depend:
	cd /Users/rzakir/Documents/argosim/argos3-kilobot/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/rzakir/Documents/argosim/argos3-kilobot/src /Users/rzakir/Documents/argosim/argos3-kilobot/src/examples/behaviors /Users/rzakir/Documents/argosim/argos3-kilobot/build /Users/rzakir/Documents/argosim/argos3-kilobot/build/examples/behaviors /Users/rzakir/Documents/argosim/argos3-kilobot/build/examples/behaviors/CMakeFiles/sync.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/behaviors/CMakeFiles/sync.dir/depend

