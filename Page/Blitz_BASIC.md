BLITZ BASIC refers to the programming language dialect that was interpreted by the first Blitz compilers, devised by New Zealand-based developer Mark Sibly. Being derived from BASIC, Blitz syntax was designed to be easy to pick up for beginners first learning to program. The languages are game-programming oriented but are often found general-purpose enough to be used for most types of application. The Blitz language evolved as new products were released, with recent incarnations offering support for more advanced programming techniques such as object-orientation and multi-threading. This led to the languages losing their BASIC moniker in later years.[1]


History

The first iteration of the Blitz language was created for the Amiga platform and published by the Australian firm Memory and Storage Technology. Returning to New Zealand, Blitz BASIC 2 was published several years later by Acid Software (a local Amiga game publisher). Since then, Blitz compilers have been released on several platforms. Following the demise of the Amiga as a commercially viable platform, the Blitz BASIC 2 source code was released to the Amiga community. Development continues to this day under the name AmiBlitz.

BlitzBasic

Idigicon published BlitzBasic for Microsoft Windows in October 2000. The language included a built-in API for performing basic 2D graphics and audio operations. Following the release of Blitz3D, BlitzBasic is often synonymously referred to as Blitz2D.

Recognition of BlitzBasic increased when a limited range of "free" versions were distributed in popular UK computer magazines such as PC Format. This resulted in a legal dispute between the developer and publisher which was eventually resolved amicably.

BlitzPlus

In February 2003, Blitz Research Ltd. released BlitzPlus also for Microsoft Windows. It lacked the 3D engine of Blitz3D, but did bring new features to the 2D side of the language by implementing limited Microsoft Windows control support for creating native GUIs. Backwards compatibility of the 2D engine was also extended, allowing compiled BlitzPlus games and applications to run on systems that might only have DirectX 1.

BlitzMax

The first BlitzMax compiler was released in December 2004 for Mac OS X. This made it the first Blitz dialect that could be compiled on *nix platforms. Compilers for Microsoft Windows and Linux were subsequently released in May 2005. BlitzMax brought the largest change of language structure to the modern range of Blitz products by extending the type system to include object-oriented concepts and modifying the graphics API to better suit OpenGL. BlitzMax was also the first of the Blitz languages to represent strings internally using UCS2, allowing native-support for string literals composed of non-ASCII characters.

BlitzMax's platform-agnostic command-set allows developers to compile and run source code on multiple platforms. However the official compiler and build chain will only generate binaries for the platform that it is executing on. Unofficially, users have been able to get Linux and Mac OS X to cross-compile to the Windows platform.

BlitzMax is also the first modular version of the Blitz languages, improving the extensibility of the command-set. In addition, all of the standard modules shipped with the compiler are open-source and so can be tweaked and recompiled by the programmer if necessary. The official BlitzMax cross-platform GUI module (known as MaxGUI) allows developers to write GUI interfaces for their applications on Linux (FLTK), Mac (Cocoa) and Windows. Various user-contributed modules extend the use of the language by wrapping such libraries as wxWidgets, Cairo, and Fontconfig as well as a selection of database modules. There are also a selection of third-party 3D modules available namely MiniB3D[2] - an open-source OpenGL engine which can be compiled and used on all three of BlitzMax's supported platforms.

In October 2007, BlitzMax 1.26 was released which included the addition of a reflection module.[3] BlitzMax 1.32 shipped new threading and Lua scripting modules and most of the standard library functions have been updated so that they are unicode friendly.[4]

Blitz3D SDK

Blitz3D SDK is a 3D graphics engine based on the engine in Blitz3D. It was marketed for use with C++, C#, BlitzMax and PureBasic, however it could also be used with other languages that follow compatible calling conventions.

Max3D module

In 2008, the source code to Max3D - a C++-based cross-platform 3D engine - was released under a BSD license. This engine focused on OpenGL but had an abstract backend for other graphics drivers (such as DirectX) and made use of several open-source libraries, namely Assimp, Boost and ODE.

Despite the excitement in the Blitz community of Max3D being the eagerly awaited successor to Blitz3D, interest and support died off soon after the source code was released and eventually development came to a halt. There is no indication that Blitz Research will pick up the project again.

Open-source release

BlitzPlus was released as open-source on 28 April 2014 under the zlib license on github.com.[5][6] Blitz3D followed soon after and was released as Open Source on 3 August 2014.[7][8] BlitzMax was later released as Open Source on 21 September 2015.[9]


Sample code

The following code creates a windowed application that shows the current time in binary and decimal format. This code is written in BlitzBasic, but will compile and run in both Blitz3D and BlitzPlus. See below for the same example written in BlitzMax.

+-------------------------------------------------------------+---------------------------------------------------------------------+
| BlitzBasic version                                          | BlitzMax version                                                    |
+=============================================================+=====================================================================+
|      AppTitle "Binary Clock"                                |      AppTitle = "Binary Clock"                                      |
|      Graphics 150,80,16,3                                   |      Graphics 145,85                                                |
|                                                             |                                                                     |
|      ;create a timer that means the main loop will be       |      secondtimer = CreateTimer(2)                                   |
|      ;executed twice a second                               |                                                                     |
|      secondtimer=CreateTimer(2)                             |      Repeat                                                         |
|      ;##################################################### |              Hour = CurrentTime()[..2].ToInt()                      |
|      Repeat ;               MAIN LOOP                       |              Minute = CurrentTime()[4..6].ToInt()                   |
|         Hour = Left(CurrentTime$(),2)                       |              Second = CurrentTime()[6..].ToInt()                    |
|         Minute = Mid(CurrentTime$(),4,2)                    |                                                                     |
|         Second = Right(CurrentTime$(),2)                    |              If Hour >= 12 Then PM = 1                              |
|                                                             |              If Hour > 12 Then Hour = Hour - 12                     |
|         If Hour >= 12 Then PM = 1                           |              If Hour = 0 Then Hour = 12                             |
|         If Hour > 12 Then Hour = Hour - 12                  |                                                                     |
|         If Hour = 0 Then Hour = 12                          |              'should do this otherwise the PM dot will be           |
|                                                             |              'Left up once the clock rolls past midnight!           |
|         ;should do this otherwise the PM dot will be        |              Cls                                                    |
|         ;left up once the clock rolls past midnight!        |                                                                     |
|         Cls                                                 |              SetColor(0,255,0) 'make the text green For the PM part |
|                                                             |              If PM  = 1 Then DrawText "PM",5,5                      |
|         Color(0,255,0) ;make the text green for the PM part |              'set the text colour back To white For the rest        |
|         If PM  = 1 Then Text 5,5,"PM"                       |              SetColor(255,255,255)                                  |
|         ;set the text colour back to white for the rest     |                                                                     |
|         Color(255,255,255)                                  |              For bit=0 Until 6                                      |
|                                                             |                      xpos=20*(6-bit)                                |
|         For bit=0 To 5                                      |                      binaryMask=2^bit                               |
|             xpos=20*(6-bit)                                 |                      'do hours                                      |
|                                                             |                      If (bit<4)                                     |
|             binaryMask=2^bit                                |                              If (hour & binaryMask)                 |
|                                                             |                                      DrawText "1",xpos,5            |
|             ;do hours                                       |                              Else                                   |
|             If (bit<4)                                      |                                      DrawText "0",xpos,5            |
|                 If (hour And binaryMask)                    |                              EndIf                                  |
|                     Text xpos,5,"1"                         |                      EndIf                                          |
|                 Else                                        |                                                                     |
|                     Text xpos,5,"0"                         |                      'do the minutes                                |
|                 EndIf                                       |                      If (minute & binaryMask)                       |
|             EndIf                                           |                              DrawText "1", xpos,25                  |
|                                                             |                      Else                                           |
|             ;do the minutes                                 |                              DrawText "0", xpos,25                  |
|             If (minute And binaryMask)                      |                      EndIf                                          |
|                 Text xpos,25,"1"                            |                                                                     |
|             Else                                            |                      'do the seconds                                |
|                 Text xpos,25,"0"                            |                      If (second & binaryMask)                       |
|             EndIf                                           |                              DrawText "1",xpos,45                   |
|                                                             |                      Else                                           |
|             ;do the seconds                                 |                              DrawText "0",xpos,45                   |
|             If (second And binaryMask)                      |                      EndIf                                          |
|                 Text xpos,45,"1"                            |              Next                                                   |
|             Else                                            |                                                                     |
|                 Text xpos,45,"0"                            |              'make the text red For the decimal time                |
|             EndIf                                           |              SetColor(255,0,0)                                      |
|         Next                                                |              DrawText "Decimal: " + CurrentTime(),5,65              |
|                                                             |              'set the text back To white For the rest               |
|         ;make the text red for the decimal time             |              SetColor(255,255,255)                                  |
|         Color(255,0,0)                                      |                                                                     |
|         Text 5,65,"Decimal: " + CurrentTime$()              |          Flip                                                       |
|         ;set the text back to white for the rest            |                                                                     |
|         Color(255,255,255)                                  |              'will wait half a second                               |
|                                                             |              WaitTimer(secondTimer)                                 |
|         ;will wait half a second                            |          If KeyHit(KEY_ESCAPE) Then Exit                            |
|         WaitTimer(secondTimer)                              |      Forever                                                        |
|      Forever                                                |                                                                     |
|      ;##################################################### |                                                                     |
+-------------------------------------------------------------+---------------------------------------------------------------------+


Software written using BlitzBasic

-   _Eschalon: Book I_ - BlitzMax
-   _Eschalon: Book II_ - BlitzMax
-   _Fairway Solitaire_ - BlitzMax
-   _Grid Wars_ - BlitzMax
-   _TVTower (open source clone of MadTV)_ - BlitzMax
-   _Platypus_ - Blitz2D (Mac port, BlitzMax)
-   _SCP - Containment Breach_ - Blitz3D
-   _Worms_ - originally titled _Total Wormage_ and developed in Blitz Basic on the Amiga before its commercial release[10]


Legacy

In 2011, BRL released a new cross-platform programming language called Monkey and its first official module called Mojo. Monkey has a similar syntax to BlitzMax, but instead of compiling direct to assembly code, it translates Monkey source files directly into source code for a chosen language, framework or platform e.g. Windows, Mac OS X, iOS, Android, HTML5, and Adobe Flash.

Development of Monkey has been halted in favor of monkey2, an updated version of the language by Mark Sibly.


References


External links

-   blitz-research BlitzPlus, Blitz3D, BlitzMax source code repository on github.com

Category:Object-oriented programming languages Category:Video game development software Category:Video game IDE Category:Free game engines Category:Amiga development software Category:BASIC compilers Category:Articles with example BASIC code Category:Formerly proprietary software Category:Free software Category:Software using the zlib license

[1]

[2]

[3]

[4] BlitzMax V132 for Windows and MacIntel now up! on blitzbasic.com

[5] BlitzPlus Source Code Released by simonh (2014-04-29)

[6] Blitz3D open sourced! on Blitz3D Forums by (2014)

[7] Blitz3D Now Free and Open Source! by simonh (2014-08-03)

[8] blitz3d on github.com

[9] blitzmax on github.com

[10] IGN. Worms Blast Preview on ign.com