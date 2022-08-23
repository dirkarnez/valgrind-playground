valgrind-playground
===================
```bash
cmake -G"Unix Makefiles" -DCMAKE_BUILD_TYPE=Debug -B./build && cd build && cmake --build . && cd memory-leak && valgrind --track-origins=yes --tool=memcheck --leak-check=full ./memory-leak ; cd ../..
```
### [Memory Leak](memory-leak)
```
==711== More than 100 errors detected.  Subsequent errors
==711== will still be recorded, but in less detail than before.
==711== Use of uninitialised value of size 8
==711==    at 0x41F02E: malloc (in /valgrind/build/memory-leak/memory-leak)
==711==    by 0x401CFA: f() (main.cpp:5)
==711==    by 0x401D1C: main (main.cpp:11)
==711==  Uninitialised value was created by a stack allocation
==711==    at 0x474EEB: _dl_init_paths (in /valgrind/build/memory-leak/memory-leak)
==711==
==711== Use of uninitialised value of size 8
==711==    at 0x401D07: f() (main.cpp:6)
==711==    by 0x401D1C: main (main.cpp:11)
==711==  Uninitialised value was created by a stack allocation
==711==    at 0x474EEB: _dl_init_paths (in /valgrind/build/memory-leak/memory-leak)
```