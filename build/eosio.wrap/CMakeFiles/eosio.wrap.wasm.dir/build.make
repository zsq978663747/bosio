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
CMAKE_SOURCE_DIR = /home/ubuntu/opt/bos.contracts

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ubuntu/opt/bos.contracts/build

# Include any dependencies generated for this target.
include eosio.wrap/CMakeFiles/eosio.wrap.wasm.dir/depend.make

# Include the progress variables for this target.
include eosio.wrap/CMakeFiles/eosio.wrap.wasm.dir/progress.make

# Include the compile flags for this target's objects.
include eosio.wrap/CMakeFiles/eosio.wrap.wasm.dir/flags.make

eosio.wrap/CMakeFiles/eosio.wrap.wasm.dir/src/eosio.wrap.cpp.o: eosio.wrap/CMakeFiles/eosio.wrap.wasm.dir/flags.make
eosio.wrap/CMakeFiles/eosio.wrap.wasm.dir/src/eosio.wrap.cpp.o: ../eosio.wrap/src/eosio.wrap.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu/opt/bos.contracts/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object eosio.wrap/CMakeFiles/eosio.wrap.wasm.dir/src/eosio.wrap.cpp.o"
	cd /home/ubuntu/opt/bos.contracts/build/eosio.wrap && /usr/local/eosio.cdt/bin/eosio-cpp   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/eosio.wrap.wasm.dir/src/eosio.wrap.cpp.o -c /home/ubuntu/opt/bos.contracts/eosio.wrap/src/eosio.wrap.cpp

eosio.wrap/CMakeFiles/eosio.wrap.wasm.dir/src/eosio.wrap.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/eosio.wrap.wasm.dir/src/eosio.wrap.cpp.i"
	cd /home/ubuntu/opt/bos.contracts/build/eosio.wrap && /usr/local/eosio.cdt/bin/eosio-cpp  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubuntu/opt/bos.contracts/eosio.wrap/src/eosio.wrap.cpp > CMakeFiles/eosio.wrap.wasm.dir/src/eosio.wrap.cpp.i

eosio.wrap/CMakeFiles/eosio.wrap.wasm.dir/src/eosio.wrap.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/eosio.wrap.wasm.dir/src/eosio.wrap.cpp.s"
	cd /home/ubuntu/opt/bos.contracts/build/eosio.wrap && /usr/local/eosio.cdt/bin/eosio-cpp  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubuntu/opt/bos.contracts/eosio.wrap/src/eosio.wrap.cpp -o CMakeFiles/eosio.wrap.wasm.dir/src/eosio.wrap.cpp.s

eosio.wrap/CMakeFiles/eosio.wrap.wasm.dir/src/eosio.wrap.cpp.o.requires:

.PHONY : eosio.wrap/CMakeFiles/eosio.wrap.wasm.dir/src/eosio.wrap.cpp.o.requires

eosio.wrap/CMakeFiles/eosio.wrap.wasm.dir/src/eosio.wrap.cpp.o.provides: eosio.wrap/CMakeFiles/eosio.wrap.wasm.dir/src/eosio.wrap.cpp.o.requires
	$(MAKE) -f eosio.wrap/CMakeFiles/eosio.wrap.wasm.dir/build.make eosio.wrap/CMakeFiles/eosio.wrap.wasm.dir/src/eosio.wrap.cpp.o.provides.build
.PHONY : eosio.wrap/CMakeFiles/eosio.wrap.wasm.dir/src/eosio.wrap.cpp.o.provides

eosio.wrap/CMakeFiles/eosio.wrap.wasm.dir/src/eosio.wrap.cpp.o.provides.build: eosio.wrap/CMakeFiles/eosio.wrap.wasm.dir/src/eosio.wrap.cpp.o


# Object files for target eosio.wrap.wasm
eosio_wrap_wasm_OBJECTS = \
"CMakeFiles/eosio.wrap.wasm.dir/src/eosio.wrap.cpp.o"

# External object files for target eosio.wrap.wasm
eosio_wrap_wasm_EXTERNAL_OBJECTS =

eosio.wrap/eosio.wrap.wasm: eosio.wrap/CMakeFiles/eosio.wrap.wasm.dir/src/eosio.wrap.cpp.o
eosio.wrap/eosio.wrap.wasm: eosio.wrap/CMakeFiles/eosio.wrap.wasm.dir/build.make
eosio.wrap/eosio.wrap.wasm: eosio.wrap/CMakeFiles/eosio.wrap.wasm.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ubuntu/opt/bos.contracts/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable eosio.wrap.wasm"
	cd /home/ubuntu/opt/bos.contracts/build/eosio.wrap && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/eosio.wrap.wasm.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
eosio.wrap/CMakeFiles/eosio.wrap.wasm.dir/build: eosio.wrap/eosio.wrap.wasm

.PHONY : eosio.wrap/CMakeFiles/eosio.wrap.wasm.dir/build

eosio.wrap/CMakeFiles/eosio.wrap.wasm.dir/requires: eosio.wrap/CMakeFiles/eosio.wrap.wasm.dir/src/eosio.wrap.cpp.o.requires

.PHONY : eosio.wrap/CMakeFiles/eosio.wrap.wasm.dir/requires

eosio.wrap/CMakeFiles/eosio.wrap.wasm.dir/clean:
	cd /home/ubuntu/opt/bos.contracts/build/eosio.wrap && $(CMAKE_COMMAND) -P CMakeFiles/eosio.wrap.wasm.dir/cmake_clean.cmake
.PHONY : eosio.wrap/CMakeFiles/eosio.wrap.wasm.dir/clean

eosio.wrap/CMakeFiles/eosio.wrap.wasm.dir/depend:
	cd /home/ubuntu/opt/bos.contracts/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubuntu/opt/bos.contracts /home/ubuntu/opt/bos.contracts/eosio.wrap /home/ubuntu/opt/bos.contracts/build /home/ubuntu/opt/bos.contracts/build/eosio.wrap /home/ubuntu/opt/bos.contracts/build/eosio.wrap/CMakeFiles/eosio.wrap.wasm.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : eosio.wrap/CMakeFiles/eosio.wrap.wasm.dir/depend

