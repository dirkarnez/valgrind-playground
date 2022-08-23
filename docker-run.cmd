@REM set PATH=^
@REM D:\Softwares\x86_64-8.1.0-release-posix-seh-rt_v6-rev0\mingw64;^
@REM D:\Softwares\x86_64-8.1.0-release-posix-seh-rt_v6-rev0\mingw64\bin;

@REM gcc main.cpp
docker run --rm -it -v "%~dp0:/valgrind" karek/valgrind:latest bash
pause

@REM cmake -G"Unix Makefiles" -DCMAKE_BUILD_TYPE=Debug -B./build && cd build && cmake --build . && cd memory-leak && valgrind --track-origins=yes --tool=memcheck --leak-check=full ./memory-leak && cd ../..
pause