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
CMAKE_COMMAND = /snap/clion/121/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /snap/clion/121/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/venus/Desktop/Nastya/ft_printf

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/venus/Desktop/Nastya/ft_printf/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/ft_printf.c.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/ft_printf.c.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ft_printf.c.dir/flags.make

CMakeFiles/ft_printf.c.dir/ft_c_type.c.o: CMakeFiles/ft_printf.c.dir/flags.make
CMakeFiles/ft_printf.c.dir/ft_c_type.c.o: ../ft_c_type.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/venus/Desktop/Nastya/ft_printf/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/ft_printf.c.dir/ft_c_type.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ft_printf.c.dir/ft_c_type.c.o   -c /home/venus/Desktop/Nastya/ft_printf/ft_c_type.c

CMakeFiles/ft_printf.c.dir/ft_c_type.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ft_printf.c.dir/ft_c_type.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/venus/Desktop/Nastya/ft_printf/ft_c_type.c > CMakeFiles/ft_printf.c.dir/ft_c_type.c.i

CMakeFiles/ft_printf.c.dir/ft_c_type.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ft_printf.c.dir/ft_c_type.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/venus/Desktop/Nastya/ft_printf/ft_c_type.c -o CMakeFiles/ft_printf.c.dir/ft_c_type.c.s

CMakeFiles/ft_printf.c.dir/ft_i_d_types.c.o: CMakeFiles/ft_printf.c.dir/flags.make
CMakeFiles/ft_printf.c.dir/ft_i_d_types.c.o: ../ft_i_d_types.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/venus/Desktop/Nastya/ft_printf/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/ft_printf.c.dir/ft_i_d_types.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ft_printf.c.dir/ft_i_d_types.c.o   -c /home/venus/Desktop/Nastya/ft_printf/ft_i_d_types.c

CMakeFiles/ft_printf.c.dir/ft_i_d_types.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ft_printf.c.dir/ft_i_d_types.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/venus/Desktop/Nastya/ft_printf/ft_i_d_types.c > CMakeFiles/ft_printf.c.dir/ft_i_d_types.c.i

CMakeFiles/ft_printf.c.dir/ft_i_d_types.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ft_printf.c.dir/ft_i_d_types.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/venus/Desktop/Nastya/ft_printf/ft_i_d_types.c -o CMakeFiles/ft_printf.c.dir/ft_i_d_types.c.s

CMakeFiles/ft_printf.c.dir/ft_itoa_x_X.c.o: CMakeFiles/ft_printf.c.dir/flags.make
CMakeFiles/ft_printf.c.dir/ft_itoa_x_X.c.o: ../ft_itoa_x_X.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/venus/Desktop/Nastya/ft_printf/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/ft_printf.c.dir/ft_itoa_x_X.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ft_printf.c.dir/ft_itoa_x_X.c.o   -c /home/venus/Desktop/Nastya/ft_printf/ft_itoa_x_X.c

CMakeFiles/ft_printf.c.dir/ft_itoa_x_X.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ft_printf.c.dir/ft_itoa_x_X.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/venus/Desktop/Nastya/ft_printf/ft_itoa_x_X.c > CMakeFiles/ft_printf.c.dir/ft_itoa_x_X.c.i

CMakeFiles/ft_printf.c.dir/ft_itoa_x_X.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ft_printf.c.dir/ft_itoa_x_X.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/venus/Desktop/Nastya/ft_printf/ft_itoa_x_X.c -o CMakeFiles/ft_printf.c.dir/ft_itoa_x_X.c.s

CMakeFiles/ft_printf.c.dir/ft_printf.c.o: CMakeFiles/ft_printf.c.dir/flags.make
CMakeFiles/ft_printf.c.dir/ft_printf.c.o: ../ft_printf.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/venus/Desktop/Nastya/ft_printf/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/ft_printf.c.dir/ft_printf.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ft_printf.c.dir/ft_printf.c.o   -c /home/venus/Desktop/Nastya/ft_printf/ft_printf.c

CMakeFiles/ft_printf.c.dir/ft_printf.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ft_printf.c.dir/ft_printf.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/venus/Desktop/Nastya/ft_printf/ft_printf.c > CMakeFiles/ft_printf.c.dir/ft_printf.c.i

CMakeFiles/ft_printf.c.dir/ft_printf.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ft_printf.c.dir/ft_printf.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/venus/Desktop/Nastya/ft_printf/ft_printf.c -o CMakeFiles/ft_printf.c.dir/ft_printf.c.s

CMakeFiles/ft_printf.c.dir/ft_parser.c.o: CMakeFiles/ft_printf.c.dir/flags.make
CMakeFiles/ft_printf.c.dir/ft_parser.c.o: ../ft_parser.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/venus/Desktop/Nastya/ft_printf/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/ft_printf.c.dir/ft_parser.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ft_printf.c.dir/ft_parser.c.o   -c /home/venus/Desktop/Nastya/ft_printf/ft_parser.c

CMakeFiles/ft_printf.c.dir/ft_parser.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ft_printf.c.dir/ft_parser.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/venus/Desktop/Nastya/ft_printf/ft_parser.c > CMakeFiles/ft_printf.c.dir/ft_parser.c.i

CMakeFiles/ft_printf.c.dir/ft_parser.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ft_printf.c.dir/ft_parser.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/venus/Desktop/Nastya/ft_printf/ft_parser.c -o CMakeFiles/ft_printf.c.dir/ft_parser.c.s

CMakeFiles/ft_printf.c.dir/ft_percent_type.c.o: CMakeFiles/ft_printf.c.dir/flags.make
CMakeFiles/ft_printf.c.dir/ft_percent_type.c.o: ../ft_percent_type.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/venus/Desktop/Nastya/ft_printf/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object CMakeFiles/ft_printf.c.dir/ft_percent_type.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ft_printf.c.dir/ft_percent_type.c.o   -c /home/venus/Desktop/Nastya/ft_printf/ft_percent_type.c

CMakeFiles/ft_printf.c.dir/ft_percent_type.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ft_printf.c.dir/ft_percent_type.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/venus/Desktop/Nastya/ft_printf/ft_percent_type.c > CMakeFiles/ft_printf.c.dir/ft_percent_type.c.i

CMakeFiles/ft_printf.c.dir/ft_percent_type.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ft_printf.c.dir/ft_percent_type.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/venus/Desktop/Nastya/ft_printf/ft_percent_type.c -o CMakeFiles/ft_printf.c.dir/ft_percent_type.c.s

CMakeFiles/ft_printf.c.dir/ft_s_type.c.o: CMakeFiles/ft_printf.c.dir/flags.make
CMakeFiles/ft_printf.c.dir/ft_s_type.c.o: ../ft_s_type.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/venus/Desktop/Nastya/ft_printf/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object CMakeFiles/ft_printf.c.dir/ft_s_type.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ft_printf.c.dir/ft_s_type.c.o   -c /home/venus/Desktop/Nastya/ft_printf/ft_s_type.c

CMakeFiles/ft_printf.c.dir/ft_s_type.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ft_printf.c.dir/ft_s_type.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/venus/Desktop/Nastya/ft_printf/ft_s_type.c > CMakeFiles/ft_printf.c.dir/ft_s_type.c.i

CMakeFiles/ft_printf.c.dir/ft_s_type.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ft_printf.c.dir/ft_s_type.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/venus/Desktop/Nastya/ft_printf/ft_s_type.c -o CMakeFiles/ft_printf.c.dir/ft_s_type.c.s

CMakeFiles/ft_printf.c.dir/ft_u_type.c.o: CMakeFiles/ft_printf.c.dir/flags.make
CMakeFiles/ft_printf.c.dir/ft_u_type.c.o: ../ft_u_type.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/venus/Desktop/Nastya/ft_printf/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object CMakeFiles/ft_printf.c.dir/ft_u_type.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ft_printf.c.dir/ft_u_type.c.o   -c /home/venus/Desktop/Nastya/ft_printf/ft_u_type.c

CMakeFiles/ft_printf.c.dir/ft_u_type.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ft_printf.c.dir/ft_u_type.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/venus/Desktop/Nastya/ft_printf/ft_u_type.c > CMakeFiles/ft_printf.c.dir/ft_u_type.c.i

CMakeFiles/ft_printf.c.dir/ft_u_type.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ft_printf.c.dir/ft_u_type.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/venus/Desktop/Nastya/ft_printf/ft_u_type.c -o CMakeFiles/ft_printf.c.dir/ft_u_type.c.s

CMakeFiles/ft_printf.c.dir/ft_x_X_types.c.o: CMakeFiles/ft_printf.c.dir/flags.make
CMakeFiles/ft_printf.c.dir/ft_x_X_types.c.o: ../ft_x_X_types.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/venus/Desktop/Nastya/ft_printf/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object CMakeFiles/ft_printf.c.dir/ft_x_X_types.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ft_printf.c.dir/ft_x_X_types.c.o   -c /home/venus/Desktop/Nastya/ft_printf/ft_x_X_types.c

CMakeFiles/ft_printf.c.dir/ft_x_X_types.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ft_printf.c.dir/ft_x_X_types.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/venus/Desktop/Nastya/ft_printf/ft_x_X_types.c > CMakeFiles/ft_printf.c.dir/ft_x_X_types.c.i

CMakeFiles/ft_printf.c.dir/ft_x_X_types.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ft_printf.c.dir/ft_x_X_types.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/venus/Desktop/Nastya/ft_printf/ft_x_X_types.c -o CMakeFiles/ft_printf.c.dir/ft_x_X_types.c.s

CMakeFiles/ft_printf.c.dir/main.c.o: CMakeFiles/ft_printf.c.dir/flags.make
CMakeFiles/ft_printf.c.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/venus/Desktop/Nastya/ft_printf/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object CMakeFiles/ft_printf.c.dir/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ft_printf.c.dir/main.c.o   -c /home/venus/Desktop/Nastya/ft_printf/main.c

CMakeFiles/ft_printf.c.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ft_printf.c.dir/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/venus/Desktop/Nastya/ft_printf/main.c > CMakeFiles/ft_printf.c.dir/main.c.i

CMakeFiles/ft_printf.c.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ft_printf.c.dir/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/venus/Desktop/Nastya/ft_printf/main.c -o CMakeFiles/ft_printf.c.dir/main.c.s

CMakeFiles/ft_printf.c.dir/libft/ft_itoa.c.o: CMakeFiles/ft_printf.c.dir/flags.make
CMakeFiles/ft_printf.c.dir/libft/ft_itoa.c.o: ../libft/ft_itoa.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/venus/Desktop/Nastya/ft_printf/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building C object CMakeFiles/ft_printf.c.dir/libft/ft_itoa.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ft_printf.c.dir/libft/ft_itoa.c.o   -c /home/venus/Desktop/Nastya/ft_printf/libft/ft_itoa.c

CMakeFiles/ft_printf.c.dir/libft/ft_itoa.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ft_printf.c.dir/libft/ft_itoa.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/venus/Desktop/Nastya/ft_printf/libft/ft_itoa.c > CMakeFiles/ft_printf.c.dir/libft/ft_itoa.c.i

CMakeFiles/ft_printf.c.dir/libft/ft_itoa.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ft_printf.c.dir/libft/ft_itoa.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/venus/Desktop/Nastya/ft_printf/libft/ft_itoa.c -o CMakeFiles/ft_printf.c.dir/libft/ft_itoa.c.s

CMakeFiles/ft_printf.c.dir/libft/ft_atoi.c.o: CMakeFiles/ft_printf.c.dir/flags.make
CMakeFiles/ft_printf.c.dir/libft/ft_atoi.c.o: ../libft/ft_atoi.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/venus/Desktop/Nastya/ft_printf/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building C object CMakeFiles/ft_printf.c.dir/libft/ft_atoi.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ft_printf.c.dir/libft/ft_atoi.c.o   -c /home/venus/Desktop/Nastya/ft_printf/libft/ft_atoi.c

CMakeFiles/ft_printf.c.dir/libft/ft_atoi.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ft_printf.c.dir/libft/ft_atoi.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/venus/Desktop/Nastya/ft_printf/libft/ft_atoi.c > CMakeFiles/ft_printf.c.dir/libft/ft_atoi.c.i

CMakeFiles/ft_printf.c.dir/libft/ft_atoi.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ft_printf.c.dir/libft/ft_atoi.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/venus/Desktop/Nastya/ft_printf/libft/ft_atoi.c -o CMakeFiles/ft_printf.c.dir/libft/ft_atoi.c.s

CMakeFiles/ft_printf.c.dir/libft/ft_strlen.c.o: CMakeFiles/ft_printf.c.dir/flags.make
CMakeFiles/ft_printf.c.dir/libft/ft_strlen.c.o: ../libft/ft_strlen.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/venus/Desktop/Nastya/ft_printf/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building C object CMakeFiles/ft_printf.c.dir/libft/ft_strlen.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ft_printf.c.dir/libft/ft_strlen.c.o   -c /home/venus/Desktop/Nastya/ft_printf/libft/ft_strlen.c

CMakeFiles/ft_printf.c.dir/libft/ft_strlen.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ft_printf.c.dir/libft/ft_strlen.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/venus/Desktop/Nastya/ft_printf/libft/ft_strlen.c > CMakeFiles/ft_printf.c.dir/libft/ft_strlen.c.i

CMakeFiles/ft_printf.c.dir/libft/ft_strlen.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ft_printf.c.dir/libft/ft_strlen.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/venus/Desktop/Nastya/ft_printf/libft/ft_strlen.c -o CMakeFiles/ft_printf.c.dir/libft/ft_strlen.c.s

CMakeFiles/ft_printf.c.dir/libft/ft_strlcpy.c.o: CMakeFiles/ft_printf.c.dir/flags.make
CMakeFiles/ft_printf.c.dir/libft/ft_strlcpy.c.o: ../libft/ft_strlcpy.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/venus/Desktop/Nastya/ft_printf/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building C object CMakeFiles/ft_printf.c.dir/libft/ft_strlcpy.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ft_printf.c.dir/libft/ft_strlcpy.c.o   -c /home/venus/Desktop/Nastya/ft_printf/libft/ft_strlcpy.c

CMakeFiles/ft_printf.c.dir/libft/ft_strlcpy.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ft_printf.c.dir/libft/ft_strlcpy.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/venus/Desktop/Nastya/ft_printf/libft/ft_strlcpy.c > CMakeFiles/ft_printf.c.dir/libft/ft_strlcpy.c.i

CMakeFiles/ft_printf.c.dir/libft/ft_strlcpy.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ft_printf.c.dir/libft/ft_strlcpy.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/venus/Desktop/Nastya/ft_printf/libft/ft_strlcpy.c -o CMakeFiles/ft_printf.c.dir/libft/ft_strlcpy.c.s

CMakeFiles/ft_printf.c.dir/libft/ft_strdup.c.o: CMakeFiles/ft_printf.c.dir/flags.make
CMakeFiles/ft_printf.c.dir/libft/ft_strdup.c.o: ../libft/ft_strdup.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/venus/Desktop/Nastya/ft_printf/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building C object CMakeFiles/ft_printf.c.dir/libft/ft_strdup.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ft_printf.c.dir/libft/ft_strdup.c.o   -c /home/venus/Desktop/Nastya/ft_printf/libft/ft_strdup.c

CMakeFiles/ft_printf.c.dir/libft/ft_strdup.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ft_printf.c.dir/libft/ft_strdup.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/venus/Desktop/Nastya/ft_printf/libft/ft_strdup.c > CMakeFiles/ft_printf.c.dir/libft/ft_strdup.c.i

CMakeFiles/ft_printf.c.dir/libft/ft_strdup.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ft_printf.c.dir/libft/ft_strdup.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/venus/Desktop/Nastya/ft_printf/libft/ft_strdup.c -o CMakeFiles/ft_printf.c.dir/libft/ft_strdup.c.s

CMakeFiles/ft_printf.c.dir/ft_p_type.c.o: CMakeFiles/ft_printf.c.dir/flags.make
CMakeFiles/ft_printf.c.dir/ft_p_type.c.o: ../ft_p_type.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/venus/Desktop/Nastya/ft_printf/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Building C object CMakeFiles/ft_printf.c.dir/ft_p_type.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ft_printf.c.dir/ft_p_type.c.o   -c /home/venus/Desktop/Nastya/ft_printf/ft_p_type.c

CMakeFiles/ft_printf.c.dir/ft_p_type.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ft_printf.c.dir/ft_p_type.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/venus/Desktop/Nastya/ft_printf/ft_p_type.c > CMakeFiles/ft_printf.c.dir/ft_p_type.c.i

CMakeFiles/ft_printf.c.dir/ft_p_type.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ft_printf.c.dir/ft_p_type.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/venus/Desktop/Nastya/ft_printf/ft_p_type.c -o CMakeFiles/ft_printf.c.dir/ft_p_type.c.s

# Object files for target ft_printf.c
ft_printf_c_OBJECTS = \
"CMakeFiles/ft_printf.c.dir/ft_c_type.c.o" \
"CMakeFiles/ft_printf.c.dir/ft_i_d_types.c.o" \
"CMakeFiles/ft_printf.c.dir/ft_itoa_x_X.c.o" \
"CMakeFiles/ft_printf.c.dir/ft_printf.c.o" \
"CMakeFiles/ft_printf.c.dir/ft_parser.c.o" \
"CMakeFiles/ft_printf.c.dir/ft_percent_type.c.o" \
"CMakeFiles/ft_printf.c.dir/ft_s_type.c.o" \
"CMakeFiles/ft_printf.c.dir/ft_u_type.c.o" \
"CMakeFiles/ft_printf.c.dir/ft_x_X_types.c.o" \
"CMakeFiles/ft_printf.c.dir/main.c.o" \
"CMakeFiles/ft_printf.c.dir/libft/ft_itoa.c.o" \
"CMakeFiles/ft_printf.c.dir/libft/ft_atoi.c.o" \
"CMakeFiles/ft_printf.c.dir/libft/ft_strlen.c.o" \
"CMakeFiles/ft_printf.c.dir/libft/ft_strlcpy.c.o" \
"CMakeFiles/ft_printf.c.dir/libft/ft_strdup.c.o" \
"CMakeFiles/ft_printf.c.dir/ft_p_type.c.o"

# External object files for target ft_printf.c
ft_printf_c_EXTERNAL_OBJECTS =

ft_printf.c: CMakeFiles/ft_printf.c.dir/ft_c_type.c.o
ft_printf.c: CMakeFiles/ft_printf.c.dir/ft_i_d_types.c.o
ft_printf.c: CMakeFiles/ft_printf.c.dir/ft_itoa_x_X.c.o
ft_printf.c: CMakeFiles/ft_printf.c.dir/ft_printf.c.o
ft_printf.c: CMakeFiles/ft_printf.c.dir/ft_parser.c.o
ft_printf.c: CMakeFiles/ft_printf.c.dir/ft_percent_type.c.o
ft_printf.c: CMakeFiles/ft_printf.c.dir/ft_s_type.c.o
ft_printf.c: CMakeFiles/ft_printf.c.dir/ft_u_type.c.o
ft_printf.c: CMakeFiles/ft_printf.c.dir/ft_x_X_types.c.o
ft_printf.c: CMakeFiles/ft_printf.c.dir/main.c.o
ft_printf.c: CMakeFiles/ft_printf.c.dir/libft/ft_itoa.c.o
ft_printf.c: CMakeFiles/ft_printf.c.dir/libft/ft_atoi.c.o
ft_printf.c: CMakeFiles/ft_printf.c.dir/libft/ft_strlen.c.o
ft_printf.c: CMakeFiles/ft_printf.c.dir/libft/ft_strlcpy.c.o
ft_printf.c: CMakeFiles/ft_printf.c.dir/libft/ft_strdup.c.o
ft_printf.c: CMakeFiles/ft_printf.c.dir/ft_p_type.c.o
ft_printf.c: CMakeFiles/ft_printf.c.dir/build.make
ft_printf.c: CMakeFiles/ft_printf.c.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/venus/Desktop/Nastya/ft_printf/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "Linking C executable ft_printf.c"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ft_printf.c.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ft_printf.c.dir/build: ft_printf.c

.PHONY : CMakeFiles/ft_printf.c.dir/build

CMakeFiles/ft_printf.c.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ft_printf.c.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ft_printf.c.dir/clean

CMakeFiles/ft_printf.c.dir/depend:
	cd /home/venus/Desktop/Nastya/ft_printf/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/venus/Desktop/Nastya/ft_printf /home/venus/Desktop/Nastya/ft_printf /home/venus/Desktop/Nastya/ft_printf/cmake-build-debug /home/venus/Desktop/Nastya/ft_printf/cmake-build-debug /home/venus/Desktop/Nastya/ft_printf/cmake-build-debug/CMakeFiles/ft_printf.c.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ft_printf.c.dir/depend

