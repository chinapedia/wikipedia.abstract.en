QUAKEC is an interpreted language developed in 1996 by John Carmack of id Software to program parts of the video game _Quake_. Using QuakeC, a programmer is able to customize _Quake_ to great extents by adding weapons, changing game logic and physics, and programming complex scenarios. It can be used to control many aspects of the game itself, such as parts of the AI, triggers, or changes in the level. The _Quake_ engine was the only game engine to use QuakeC. Following engines used DLL game modules for customization written in C and C++ from id Tech 4 on.


Overview

The QuakeC source to the original id Software _Quake_ game logic was published in 1996 and used as the basis for modifications like capture the flag and others.[1] QuakeC source code is compiled using a tool called qcc into a bytecode kept in a file called progs.dat. The programmers of _Quake_ modifications could then publish their progs.dat bytecode without revealing their source code. Most _Quake_ mods were published this way.

QuakeC allowed the _Quake_ engine to dominate the direction of the first-person shooter genre. Thanks to Carmack's idea of extending video game life by adding unlimited expandability (extensibility already played a big role in _Doom_), an enormous Internet community of gamers and programmers alike has arisen and many modern multiplayer games are extensible in some form.

QuakeC is known as interpreted because as _Quake_ runs, it is continually interpreting the progs.dat file.[2]


Limitations and subsequent solutions

The syntax of QuakeC is based on that of the C programming language, explaining its name, but it does not support the implementation of new types, structures, arrays, or any kind of referencing other than the "entity" type (which is always a reference). QuakeC also suffers from the fact that many built-in functions (functions prototyped in the QuakeC code but actually defined within the game engine and written in C) return strings in a temporary string buffer, which can only hold one string at any given time. In other words, a construct such as

    SomeFunction (ftos (num1), ftos (num2));

will fail because the second call to ftos (which converts a floating-point value to a string) overwrites the string returned by the first call before SomeFunction can do something with it. QuakeC does not contain any string handling functions or file handling functions, which were simply not needed by the original game.

Most video games at the time had their game logic written in plain C/C++ and compiled into the executable, which is faster. However, this makes it harder for the community to create mods and it makes the process of porting the game to another platform (such as GNU/Linux) more costly.

Despite its advantages, the choice of implementing game logic using a custom scripting language and interpreter was dropped from the next generation Quake II engine in favor of compiled C code due to the overall inflexibility of QuakeC, the increasingly complex game logic, the performance to be gained by packaging game logic into a native dynamic link library, and the advantage of leveraging an already established programming language's community, tools, educational materials, and documentation.[3]

Distributing native code created new security and portability concerns. QuakeC bytecode afforded little opportunity for mischief, while native code has access to the whole machine. QuakeC bytecode also worked on any machine that could run Quake. Compiling to native code added an additional barrier to entry for novice mod developers, because they were being asked to set up a more complicated programming environment. The eventual solution, implemented by the Quake III engine, was to combine the advantages of original QuakeC with the advantages of compiling C to native code. The lcc C compiler was extended to compile standard C into bytecode, which could be interpreted by a virtual machine in a manner similar to QuakeC. This addressed the security, portability, and tool chain problems, but lost the performance advantage of native code. That was solved by further compiling the bytecode into native code at run time on supported machines.[4]


Modified compilers and language extensions

id Software released the source of qcc, their QuakeC compiler, along with the original QuakeC code in 1996. Modified versions soon sprung up, including Jonathan Roy's fastqcc and Ryan "FrikaC" Smith's FrikQCC. These added functionality, optimizations, and compiling speed boosts.

In 1999, when id Software released the code from Quake's engine under the GNU General Public License (GPL), the workings of the bytecode interpreter were examined and new QuakeC compilers were released, such as J.P. Grossman's qccx and a new version of FrikQCC. These compilers took advantage of newly discovered features in a backwards-compatible way so that the bytecode could still be properly interpreted by unmodified Quake engines. New features include arrays, pointers, integers, for loops and string manipulation.

With the _Quake_ engine source code now able to be changed, further features were added to QuakeC in the form of new built-in functions. Features long yearned for by QuakeC coders finally reached realization as QuakeC now had file and string handling functions, enlarged string buffers, more math functions, and so on. However, programmers taking advantage of these changes lost backwards compatibility with the unmodified Quake engine.

_Xonotic_ since version 0.7 uses the gmqcc compiler.[5]


Client Side QuakeC (CSQC)

Some enhanced Quake engines (notably Darkplaces and FTEQW) have support for an extension of regular QuakeC (now commonly referred to as Server Side QuakeC or SSQC) that allows client side only scripting of the Quake engine. This is especially useful for GUIs, HUDs and any visually heavy effects that do not need to be simulated on the server and transferred over the network.[6]


See also

-   Computer programming


References


External links

-   id's github repository containing the C source code of qcc (QuakeC compiler)
-   id's github repository containing the QuakeC source code to QuakeWorld game logic
-   Unofficial QuakeC specifications
-   Large collection of QC mods, including their source
-   Inside3d - nice collection of QC tutorials here
-   InsideQC - New website to inherit Inside3D's legacy after it was shut down

Category:Domain-specific programming languages Category:Quake (series) Category:Scripting languages Category:Id Tech

[1]

[2]

[3]

[4]

[5] Xonotic 0.7 Release

[6]