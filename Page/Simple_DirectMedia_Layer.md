SIMPLE DIRECTMEDIA LAYER (SDL) is a cross-platform software development library designed to provide a hardware abstraction layer for computer multimedia hardware components. Software developers can use it to write high-performance computer games and other multimedia applications that can run on many operating systems such as Android, iOS, Linux, macOS, and Windows.[1]

SDL manages video, audio, input devices, CD-ROM, threads, shared object loading, networking and timers.[2] For 3D graphics, it can handle an OpenGL, Vulkan[3] or Direct3D context. A common misconception is that SDL is a game engine, but this is not true. However, the library is suited to building games directly, or is usable _indirectly_ by engines built on top of it.

The library is internally written in C and possibly, depending on the target platform, C++ or Objective-C, and provides the application programming interface in C, with bindings to other languages available.[4] It is free and open-source software subject to the requirements of the zlib License since version 2.0, and with prior versions subject to the GNU Lesser General Public License.[5] Under the zlib License, SDL 2.0 is freely available for static linking in closed-source projects, unlike SDL 1.2.[6]

SDL is extensively used in the industry in both large and small projects. Over 700 games, 180 applications, and 120 demos have been posted on the library website.


History

Sam Lantinga created the library, first releasing it in early 1998, while working for Loki Software. He got the idea while porting a Windows application to Macintosh. He then used SDL to port _Doom_ to BeOS (see Doom source ports). Several other free libraries were developed to work alongside SDL, such as SMPEG and OpenAL. He also founded Galaxy Gameworks in 2008 to help commercially support SDL, although the company plans are currently on hold due to time constraints.[7] Soon after putting Galaxy Gameworks on hold, Lantinga announced that SDL 1.3 (which would then later become SDL 2.0) would be licensed under the zlib License.[8] Lantinga announced SDL 2.0 on 14 July 2012, at the same time announcing that he was joining Valve Corporation, the first version of which was announced the same day he joined the company.[9] Lantinga announced the stable release of SDL 2.0.0 on 13 August 2013.[10]

SDL 2.0 is a major update to the SDL 1.2 codebase with a different, not backwards-compatible[11] API. It replaces several parts of the 1.2 API with more general support for multiple input and output options.

Some feature additions include multiple window support, hardware-accelerated 2D graphics, and better Unicode support.[12]

Support for Mir and Wayland was added in SDL 2.0.2[13] and enabled by default in SDL 2.0.4.[14]

Version 2.0.4 also provided better support for Android.[15]


Software architecture

SDL is a wrapper around the operating-system-specific functions that the game needs to access. The only purpose of SDL is to provide a common framework for accessing these functions for multiple operating systems (cross-platform).[16] SDL provides support for 2D pixel operations, sound, file access, event handling, timing and threading. It is often used to complement OpenGL by setting up the graphical output and providing mouse and keyboard input, since OpenGL comprises only rendering.

A game using the Simple DirectMedia Layer will _not_ automatically run on every operating system, further adaptations must be applied. These are reduced to the minimum, since SDL also contains a few abstraction APIs for frequent functions offered by an operating system.

The syntax of SDL is function-based: all operations done in SDL are done by passing parameters to subroutines (functions). Special structures are also used to store the specific information SDL needs to handle. SDL functions are categorized under several different subsystems.

Subsystems

SDL is divided into several subsystems:[17]

Basics: Initialization and Shutdown, Configuration Variables, Error Handling, Log Handling
Video: Display and Window Management, surface functions, rendering acceleration, etc.
Input Events: Event handling, Support for Keyboard, Mouse, Joystick and Game controller
Force Feedback: SDL_haptic.h implements support for "Force Feedback"
Audio: SDL_audio.h implements Audio Device Management, Playing and Recording
Threads: multi-threading: Thread Management, Thread Synchronization Primitives, Atomic Operations
Timers: Timer Support
File Abstraction: Filesystem Paths, File I/O Abstraction
Shared Object Support: Shared Object Loading and Function Lookup
Platform and CPU Information: Platform Detection, CPU Feature Detection, Byte Order and Byte Swapping, Bit Manipulation
Power Management: Power Management Status
Additional: Platform-specific functionality

Besides this basic, low-level support, there also are a few separate official libraries that provide some more functions. These comprise the "standard library", and are provided on the official website and included in the official documentation:

-   _SDL_image_ — support for multiple image formats[18]
-   _SDL_mixer_ — complex audio functions, mainly for sound mixing[19]
-   _SDL_net_ — networking support[20]
-   _SDL_ttf_ — TrueType font rendering support[21]
-   _SDL_rtf_ — simple Rich Text Format rendering[22]

Other, non-standard libraries also exist. For example: SDL_Collide on Sourceforge created by Amir Taaki.

Language bindings

The SDL 2.0 library has language bindings for:

-   Ada[23]
-   C
-   C++
-   C#[24]
-   D[25]
-   Genie
-   Go[26]
-   Haskell[27][28]
-   Lua[29]
-   Nim
-   OCaml[30]
-   Pascal[31]
-   Perl (via SDL)[32]
-   Python (several, e.g. pygame_sdl2 and sdl2hl)[33]
-   Rust[34]
-   Vala
-   Common Lisp [35]

Supported back-ends

Because of the way SDL is designed, much of its source code is split into separate modules for each operating system, to make calls to the underlying system. When SDL is compiled, the appropriate modules are selected for the target system. Following back-ends are available:[36]

-   GDI back-end for Microsoft Windows.
-   DirectX back-end; but SDL 1.2 requires DirectX 7 by default. Sam Lantinga has stated that he plans to use DirectX 8 in future SDL releases.[37]
-   Quartz back-end for macOS.
-   Xlib back-end for X11-based windowing system on various operating systems.[38]
-   OpenGL contexts on various platforms.[39]
-   EGL back-end when used in conjunction with Wayland-based windowing system.,[40] Raspberry Pi[41] and other systems.
-   Vulkan contexts on platforms that support it.[42]
-   sceGu back-end, a Sony OpenGL-like backend native to the PSP.

SDL 1.2 has support for RISC OS (dropped in 2.0).

An unofficial Sixel back-end is available for SDL 1.2.[43]


Reception and adoption

]] Over the years SDL was used for many commercial and non-commercial video game projects. For instance, MobyGames listed 120 games using SDL in 2013,[44] and the SDL website itself listed around 700 games in 2012.[45] Important commercial examples are _Angry Birds_[46] and _Unreal Tournament_; ones from the open-source domain are _OpenTTD_,[47] _The Battle for Wesnoth_[48] or _Freeciv_.[49]

The cross-platform game releases of the popular Humble Indie Bundles for Linux, Mac and Android are often SDL based.

SDL is also often used for later ports on new platforms with legacy code. For instance, the PC game Homeworld was ported to the Pandora handheld[50] and Jagged Alliance 2 for Android[51] via SDL.

Also, several non video game software uses SDL; examples are the emulators DOSBox and VisualBoyAdvance.

There were several books written for development with SDL (see further readings).

SDL is used in university courses teaching multimedia and computer science, for instance, in a workshop about game programming using libSDL at the University of Cadiz in 2010, or a Game Design discipline at UTFPR (Ponta Grossa campus) in 2015.

Video game examples using SDL

File:Freeciv-2.1.0-beta3-sdl_slack11.0.png|_Freeciv_[52] File:Unknown horizons 3176.PNG|_Unknown Horizons_[53] File:Hwscreen.png|_Hedgewars_[54] File:Scorched 3D 39.1 screenshot 3.jpg|_Scorched 3D_[55] File:Fretsonfirex1.jpg|_Frets on Fire_ File:OOlite_Mac_OS_X_screenshot.jpg|_Oolite_, a 3D space game File:Wesnoth-1.6-5.jpg|_The Battle for Wesnoth_[56] File:OpenTTD-1.3.3-en.png |_OpenTTD_ File:0ad-alpha23.jpg|_0 A.D._ File:SMC15PromoShot.png|_Secret Maryo Chronicles_[57] File:Trine - Wizard Knight Caverns.jpg|_Trine_ File:Trine 2 - Deadly Dustland Three Heroes.jpg|_Trine 2_


See also


References


Further reading

-   Alberto García Serrano: _Programación de videojuegos en SDL_, Ediversitas, (Spanish)
-   Ernest Pazera: _Focus On SDL_, Muska & Lipman/Premier-Trade,
-   Ron Penton: _Data Structures for Game Programmers_, Muska & Lipman/Premier-Trade, (_game programming examples with SDL_)
-   John R. Hall: _Programming Linux Games_, No Starch, (_First SDL book, by Loki Games_, archived online version: , )
-   SDL Game Development by Shaun Mitchell
-   – video from 11 February 2014 by Ryan C. Gordon


External links

-

Category:Application programming interfaces Category:Audio libraries Category:C libraries Category:Cross-platform software Category:Graphics libraries Category:Linux APIs Category:MacOS APIs Category:Simple DirectMedia Layer Category:Software using the zlib license Category:Video game development Category:Video game development software for Linux Category:Windows APIs

[1]

[2]

[3]

[4]

[5]

[6]

[7]

[8] SDL 1.3 to be zLib Licensed, SDL Mailing List, 7 April 2011

[9]

[10] Announcing SDL 2.0.0, SDL Mailing List, 13 August 2013

[11] MigrationGuide - SDL Wiki'. Wiki.libsdl.org (21 November 2013). Retrieved on 2013-12-08.

[12]

[13]

[14]

[15] https://wiki.libsdl.org/SDL_SysWMinfo

[16]

[17] https://wiki.libsdl.org/APIByCategory

[18]

[19]

[20]

[21]

[22]

[23]

[24]

[25]

[26]

[27]

[28]

[29]

[30]

[31]

[32]

[33]

[34]

[35]

[36]

[37]

[38]

[39]

[40]

[41]

[42]

[43]

[44]

[45]

[46]

[47]

[48]

[49]

[50]

[51] JA2 Stracciatella Feedback » Jagged Alliance 2 Android Stracciatella Port RC2 Release - please test on the Bear's Pit Forum, 3 October 2011

[52]

[53]

[54]

[55]

[56]

[57]