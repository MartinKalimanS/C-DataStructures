# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.29

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
CMAKE_SOURCE_DIR = "C:\Users\marti\OneDrive\Escritorio\Universidad\Year-2\1er-semestre\Estructura-De-Datos\Labs\Lab 1\codes\TaskScheduler"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "C:\Users\marti\OneDrive\Escritorio\Universidad\Year-2\1er-semestre\Estructura-De-Datos\Labs\Lab 1\build"

# Include any dependencies generated for this target.
include CMakeFiles/task_scheduler.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/task_scheduler.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/task_scheduler.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/task_scheduler.dir/flags.make

CMakeFiles/task_scheduler.dir/src/Main.c.obj: CMakeFiles/task_scheduler.dir/flags.make
CMakeFiles/task_scheduler.dir/src/Main.c.obj: CMakeFiles/task_scheduler.dir/includes_C.rsp
CMakeFiles/task_scheduler.dir/src/Main.c.obj: C:/Users/marti/OneDrive/Escritorio/Universidad/Year-2/1er-semestre/Estructura-De-Datos/Labs/Lab\ 1/codes/TaskScheduler/src/Main.c
CMakeFiles/task_scheduler.dir/src/Main.c.obj: CMakeFiles/task_scheduler.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="C:\Users\marti\OneDrive\Escritorio\Universidad\Year-2\1er-semestre\Estructura-De-Datos\Labs\Lab 1\build\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/task_scheduler.dir/src/Main.c.obj"
	C:\msys64\ucrt64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/task_scheduler.dir/src/Main.c.obj -MF CMakeFiles\task_scheduler.dir\src\Main.c.obj.d -o CMakeFiles\task_scheduler.dir\src\Main.c.obj -c "C:\Users\marti\OneDrive\Escritorio\Universidad\Year-2\1er-semestre\Estructura-De-Datos\Labs\Lab 1\codes\TaskScheduler\src\Main.c"

CMakeFiles/task_scheduler.dir/src/Main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/task_scheduler.dir/src/Main.c.i"
	C:\msys64\ucrt64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "C:\Users\marti\OneDrive\Escritorio\Universidad\Year-2\1er-semestre\Estructura-De-Datos\Labs\Lab 1\codes\TaskScheduler\src\Main.c" > CMakeFiles\task_scheduler.dir\src\Main.c.i

CMakeFiles/task_scheduler.dir/src/Main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/task_scheduler.dir/src/Main.c.s"
	C:\msys64\ucrt64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "C:\Users\marti\OneDrive\Escritorio\Universidad\Year-2\1er-semestre\Estructura-De-Datos\Labs\Lab 1\codes\TaskScheduler\src\Main.c" -o CMakeFiles\task_scheduler.dir\src\Main.c.s

CMakeFiles/task_scheduler.dir/src/Scheduler.c.obj: CMakeFiles/task_scheduler.dir/flags.make
CMakeFiles/task_scheduler.dir/src/Scheduler.c.obj: CMakeFiles/task_scheduler.dir/includes_C.rsp
CMakeFiles/task_scheduler.dir/src/Scheduler.c.obj: C:/Users/marti/OneDrive/Escritorio/Universidad/Year-2/1er-semestre/Estructura-De-Datos/Labs/Lab\ 1/codes/TaskScheduler/src/Scheduler.c
CMakeFiles/task_scheduler.dir/src/Scheduler.c.obj: CMakeFiles/task_scheduler.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="C:\Users\marti\OneDrive\Escritorio\Universidad\Year-2\1er-semestre\Estructura-De-Datos\Labs\Lab 1\build\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/task_scheduler.dir/src/Scheduler.c.obj"
	C:\msys64\ucrt64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/task_scheduler.dir/src/Scheduler.c.obj -MF CMakeFiles\task_scheduler.dir\src\Scheduler.c.obj.d -o CMakeFiles\task_scheduler.dir\src\Scheduler.c.obj -c "C:\Users\marti\OneDrive\Escritorio\Universidad\Year-2\1er-semestre\Estructura-De-Datos\Labs\Lab 1\codes\TaskScheduler\src\Scheduler.c"

CMakeFiles/task_scheduler.dir/src/Scheduler.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/task_scheduler.dir/src/Scheduler.c.i"
	C:\msys64\ucrt64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "C:\Users\marti\OneDrive\Escritorio\Universidad\Year-2\1er-semestre\Estructura-De-Datos\Labs\Lab 1\codes\TaskScheduler\src\Scheduler.c" > CMakeFiles\task_scheduler.dir\src\Scheduler.c.i

CMakeFiles/task_scheduler.dir/src/Scheduler.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/task_scheduler.dir/src/Scheduler.c.s"
	C:\msys64\ucrt64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "C:\Users\marti\OneDrive\Escritorio\Universidad\Year-2\1er-semestre\Estructura-De-Datos\Labs\Lab 1\codes\TaskScheduler\src\Scheduler.c" -o CMakeFiles\task_scheduler.dir\src\Scheduler.c.s

CMakeFiles/task_scheduler.dir/src/Task.c.obj: CMakeFiles/task_scheduler.dir/flags.make
CMakeFiles/task_scheduler.dir/src/Task.c.obj: CMakeFiles/task_scheduler.dir/includes_C.rsp
CMakeFiles/task_scheduler.dir/src/Task.c.obj: C:/Users/marti/OneDrive/Escritorio/Universidad/Year-2/1er-semestre/Estructura-De-Datos/Labs/Lab\ 1/codes/TaskScheduler/src/Task.c
CMakeFiles/task_scheduler.dir/src/Task.c.obj: CMakeFiles/task_scheduler.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="C:\Users\marti\OneDrive\Escritorio\Universidad\Year-2\1er-semestre\Estructura-De-Datos\Labs\Lab 1\build\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/task_scheduler.dir/src/Task.c.obj"
	C:\msys64\ucrt64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/task_scheduler.dir/src/Task.c.obj -MF CMakeFiles\task_scheduler.dir\src\Task.c.obj.d -o CMakeFiles\task_scheduler.dir\src\Task.c.obj -c "C:\Users\marti\OneDrive\Escritorio\Universidad\Year-2\1er-semestre\Estructura-De-Datos\Labs\Lab 1\codes\TaskScheduler\src\Task.c"

CMakeFiles/task_scheduler.dir/src/Task.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/task_scheduler.dir/src/Task.c.i"
	C:\msys64\ucrt64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "C:\Users\marti\OneDrive\Escritorio\Universidad\Year-2\1er-semestre\Estructura-De-Datos\Labs\Lab 1\codes\TaskScheduler\src\Task.c" > CMakeFiles\task_scheduler.dir\src\Task.c.i

CMakeFiles/task_scheduler.dir/src/Task.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/task_scheduler.dir/src/Task.c.s"
	C:\msys64\ucrt64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "C:\Users\marti\OneDrive\Escritorio\Universidad\Year-2\1er-semestre\Estructura-De-Datos\Labs\Lab 1\codes\TaskScheduler\src\Task.c" -o CMakeFiles\task_scheduler.dir\src\Task.c.s

# Object files for target task_scheduler
task_scheduler_OBJECTS = \
"CMakeFiles/task_scheduler.dir/src/Main.c.obj" \
"CMakeFiles/task_scheduler.dir/src/Scheduler.c.obj" \
"CMakeFiles/task_scheduler.dir/src/Task.c.obj"

# External object files for target task_scheduler
task_scheduler_EXTERNAL_OBJECTS =

task_scheduler.exe: CMakeFiles/task_scheduler.dir/src/Main.c.obj
task_scheduler.exe: CMakeFiles/task_scheduler.dir/src/Scheduler.c.obj
task_scheduler.exe: CMakeFiles/task_scheduler.dir/src/Task.c.obj
task_scheduler.exe: CMakeFiles/task_scheduler.dir/build.make
task_scheduler.exe: CMakeFiles/task_scheduler.dir/linkLibs.rsp
task_scheduler.exe: CMakeFiles/task_scheduler.dir/objects1.rsp
task_scheduler.exe: CMakeFiles/task_scheduler.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir="C:\Users\marti\OneDrive\Escritorio\Universidad\Year-2\1er-semestre\Estructura-De-Datos\Labs\Lab 1\build\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_4) "Linking C executable task_scheduler.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\task_scheduler.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/task_scheduler.dir/build: task_scheduler.exe
.PHONY : CMakeFiles/task_scheduler.dir/build

CMakeFiles/task_scheduler.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\task_scheduler.dir\cmake_clean.cmake
.PHONY : CMakeFiles/task_scheduler.dir/clean

CMakeFiles/task_scheduler.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "C:\Users\marti\OneDrive\Escritorio\Universidad\Year-2\1er-semestre\Estructura-De-Datos\Labs\Lab 1\codes\TaskScheduler" "C:\Users\marti\OneDrive\Escritorio\Universidad\Year-2\1er-semestre\Estructura-De-Datos\Labs\Lab 1\codes\TaskScheduler" "C:\Users\marti\OneDrive\Escritorio\Universidad\Year-2\1er-semestre\Estructura-De-Datos\Labs\Lab 1\build" "C:\Users\marti\OneDrive\Escritorio\Universidad\Year-2\1er-semestre\Estructura-De-Datos\Labs\Lab 1\build" "C:\Users\marti\OneDrive\Escritorio\Universidad\Year-2\1er-semestre\Estructura-De-Datos\Labs\Lab 1\build\CMakeFiles\task_scheduler.dir\DependInfo.cmake" "--color=$(COLOR)"
.PHONY : CMakeFiles/task_scheduler.dir/depend

