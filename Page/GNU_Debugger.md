The GNU DEBUGGER (GDB) is a portable debugger that runs on many Unix-like systems and works for many programming languages, including Ada, C, C++, Objective-C, Free Pascal, Fortran, Go[1] and partially others.[2]


History

GDB was first written by Richard Stallman in 1986 as part of his GNU system, after his GNU Emacs was "reasonably stable".[3] GDB is free software released under the GNU General Public License (GPL). It was modeled after the DBX debugger, which came with Berkeley Unix distributions.[4]

From 1990 to 1993 it was maintained by John Gilmore. Now it is maintained by the GDB Steering Committee which is appointed by the Free Software Foundation.[5]


Technical details

Features

GDB offers extensive facilities for tracing and altering the execution of computer programs. The user can monitor and modify the values of programs' internal variables, and even call functions independently of the program's normal behavior.

GDB target processors (as of 2003) include: Alpha, ARM, AVR, H8/300, Altera Nios/Nios II, System/370, System 390, X86 and its 64-bit extension X86-64, IA-64 "Itanium", Motorola 68000, MIPS, PA-RISC, PowerPC, SuperH, SPARC, and VAX. Lesser-known target processors supported in the standard release have included A29K, ARC, ETRAX CRIS, D10V, D30V, FR-30, FR-V, Intel i960, 68HC11, Motorola 88000, MCORE, MN10200, MN10300, NS32K, Stormy16, and Z8000. (Newer releases will likely not support some of these.) GDB has compiled-in simulators for even lesser-known target processors such like M32R or V850.[6]

GDB is still actively developed. As of version 7.0 new features include support for Python scripting[7] and as of version 7.8 GNU Guile scripting as well.[8] Since version 7.0, support for "reversible debugging" — allowing a debugging session to step backward, much like rewinding a crashed program to see what happened — is available.[9]

Remote debugging

GDB offers a "remote" mode often used when debugging embedded systems. Remote operation is when GDB runs on one machine and the program being debugged runs on another. GDB can communicate to the remote "stub" that understands GDB protocol through a serial device or TCP/IP.[10] A stub program can be created by linking to the appropriate stub files provided with GDB, which implement the target side of the communication protocol.[11] Alternatively, gdbserver can be used to remotely debug the program without needing to change it in any way.

The same mode is also used by KGDB for debugging a running Linux kernel on the source level with gdb. With KGDB, kernel developers can debug a kernel in much the same way as they debug application programs. It makes it possible to place breakpoints in kernel code, step through the code and observe variables. On architectures where hardware debugging registers are available, watchpoints can be set which trigger breakpoints when specified memory addresses are executed or accessed. KGDB requires an additional machine which is connected to the machine to be debugged using a serial cable or Ethernet. On FreeBSD, it is also possible to debug using Firewire direct memory access (DMA).[12]

Graphical user interface

The debugger does not contain its own graphical user interface, and defaults to a command-line interface. Several front-ends have been built for it, such as UltraGDB, Xxgdb, Data Display Debugger (DDD), Nemiver, KDbg, the Xcode debugger, GDBtk/Insight and the HP Wildebeest Debugger GUI (WDB GUI). IDEs such as Codelite, Code::Blocks, Dev-C++, Geany, GNAT Programming Studio (GPS), KDevelop, Qt Creator, Lazarus, MonoDevelop, Eclipse, NetBeans and Visual Studio can interface with GDB. GNU Emacs has a "GUD mode" and tools for VIM exist (e.g. clewn). These offer facilities similar to debuggers found in IDEs.

Some other debugging tools have been designed to work with GDB, such as memory leak detectors.


Examples of commands

  gdb program            Debug "program" (from the shell)
  ---------------------- --------------------------------------------
  run -v                 Run the loaded program with the parameters
  bt                     Backtrace (in case the program crashed)
  info registers         Dump all registers
  disas $pc-32, $pc+32   Disassemble


An example session

Consider the following source-code written in C:

    #include <stdio.h>
    #include <stdlib.h>
    #include <string.h>

    size_t foo_len( const char *s )
    {
      return strlen( s );
    }

    int main( int argc, char *argv[] )
    {
      const char *a = NULL;

      printf( "size of a = %lu\n", foo_len(a) );

      exit( 0 );
    }

Using the GCC compiler on Linux, the code above must be compiled using the -g flag in order to include appropriate debug information on the binary generated, thus making it possible to inspect it using GDB. Assuming that the file containing the code above is named example.c, the command for the compilation could be:

    $ gcc example.c -Og -g -o example

And the binary can now be run:

    $ ./example
    Segmentation fault

Since the example code, when executed, generates a segmentation fault, GDB can be used to inspect the problem.

    $ gdb ./example
    GNU gdb (GDB) Fedora (7.3.50.20110722-13.fc16)
    Copyright (C) 2011 Free Software Foundation, Inc.
    License GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>
    This is free software: you are free to change and redistribute it.
    There is NO WARRANTY, to the extent permitted by law.  Type "show copying"
    and "show warranty" for details.
    This GDB was configured as "x86_64-redhat-linux-gnu".
    For bug reporting instructions, please see:
    <https://www.gnu.org/software/gdb/bugs/>...
    Reading symbols from /path/example...done.
    (gdb) run
    Starting program: /path/example

    Program received signal SIGSEGV, Segmentation fault.
    0x0000000000400527 in foo_len (s=0x0) at example.c:8
    8     return strlen (s);
    (gdb) print s
    $1 = 0x0

The problem is present in line 8, and occurs when calling the function strlen (because its argument, s, is NULL). Depending on the implementation of strlen (inline or not), the output can be different, e.g.:

    GNU gdb (GDB) 7.3.1
    Copyright (C) 2011 Free Software Foundation, Inc.
    License GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>
    This is free software: you are free to change and redistribute it.
    There is NO WARRANTY, to the extent permitted by law.  Type "show copying"
    and "show warranty" for details.
    This GDB was configured as "i686-pc-linux-gnu".
    For bug reporting instructions, please see:
    <https://www.gnu.org/software/gdb/bugs/>...
    Reading symbols from /tmp/gdb/example...done.
    (gdb) run
    Starting program: /tmp/gdb/example

    Program received signal SIGSEGV, Segmentation fault.
    0xb7ee94f3 in strlen () from /lib/i686/cmov/libc.so.6
    (gdb) bt
    #0  0xb7ee94f3 in strlen () from /lib/i686/cmov/libc.so.6
    #1  0x08048435 in foo_len (s=0x0) at example.c:8
    #2  0x0804845a in main (argc=<optimized out>, argv=<optimized out>) at example.c:16

To fix the problem, the variable a (in the function main) must contain a valid string. Here is a fixed version of the code:

    #include <stdio.h>
    #include <stdlib.h>
    #include <string.h>

    size_t foo_len( const char *s )
    {
      return strlen(s);
    }

    int main( int argc, char *argv[] )
    {
      const char *a = "This is a test string";

      printf( "size of a = %lu\n", foo_len(a) );

      exit( 0 );
    }

Recompiling and running the executable again inside GDB now gives a correct result:

GNU gdb (GDB) Fedora (7.3.50.20110722-13.fc16)
Copyright (C) 2011 Free Software Foundation, Inc.
License GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.  Type "show copying"
and "show warranty" for details.
This GDB was configured as "x86_64-redhat-linux-gnu".
For bug reporting instructions, please see:
<https://www.gnu.org/software/gdb/bugs/>...
Reading symbols from /path/example...done.
(gdb) run
Starting program: /path/example
size of a = 21
[Inferior 1 (process 14290) exited normally]

GDB prints the output of printf in the screen, and then informs the user that the program exited normally.


See also

-   Binary File Descriptor library (libbfd)
-   dbx
-   ddd, a GUI for gdb and other debuggers
-   gdbserver


References


External links

-   -   UltraGDB: Visual C/C++ Debugging with GDB on Windows and Linux
-   KGDB: Linux Kernel Source Level Debugger
-   The website for "MyGDB: GDB Frontend" in the Korean language
-   A Visual Studio plugin for debugging with GDB
-   Comparison of GDB front-ends, 2013
-   Using Eclipse as a Front-End to the GDB Debugger

Documentation

-   Richard M. Stallman, Roland Pesch, Stan Shebs, et al., _Debugging with GDB_ (Free Software Foundation, 2011)
-   GDB Internals

Tutorials

-   _RMS's gdb Tutorial_ (Ryan Michael Schmidt, not Richard Matthew Stallman)

Category:Debuggers Debugger Category:Unix programming tools Category:Video game development software for Linux Category:Software that was rewritten in C++

[1]

[2]

[3]

[4]

[5]

[6]

[7]

[8]

[9]

[10]

[11]

[12]