The OPENGL UTILITY TOOLKIT (GLUT) is a library of utilities for OpenGL programs, which primarily perform system-level I/O with the host operating system. Functions performed include window definition, window control, and monitoring of keyboard and mouse input. Routines for drawing a number of geometric primitives (both in solid and wireframe mode) are also provided, including cubes, spheres and the Utah teapot. GLUT also has some limited support for creating pop-up menus.

GLUT was written by Mark J. Kilgard, author of _OpenGL Programming for the X Window System_ and _The Cg Tutorial: The Definitive Guide to Programmable Real-Time Graphics_, while he was working for Silicon Graphics Inc.

The two aims of GLUT are to allow the creation of rather portable code between operating systems (GLUT is cross-platform) and to make learning OpenGL easier. Getting started with OpenGL programming while using GLUT often takes only a few lines of code and does not require knowledge of operating system–specific windowing APIs.

All GLUT functions start with the glut prefix (for example, glutPostRedisplay marks the current window as needing to be redrawn).


Implementations

The original GLUT library by Mark Kilgard supports the X Window System (GLX) and was ported to Microsoft Windows (WGL) by Nate Robins. Additionally, macOS ships with a GLUT framework that supports its own NSGL/CGL.

Kilgard's GLUT library is no longer maintained, and its license did not permit the redistribution of modified versions of the library. This spurred the need for free software or open source reimplementations of the API from scratch. The first such library was FreeGLUT, which aims to be a reasonably close reproduction, though introducing a small number of new functions to deal with GLUT's limitations. OpenGLUT, a fork of FreeGLUT, adds a number of new features to the original API, but work on it ceased in May 2005.

Mark Kilgard has a GitHub repository for GLUT.[1] The glut.h header file contains the following license:[2]

/* Copyright (c) Mark J. Kilgard, 1994, 1995, 1996, 1998, 2000, 2006, 2010. */
/* This program is freely distributable without licensing fees  and is
  provided without guarantee or warrantee expressed or  implied. This
  program is -not- in the public domain. */


Limitations

Some of GLUT's original design decisions made it hard for programmers to perform desired tasks. This led many to create non-canon patches and extensions to GLUT.1 Some free software or open source reimplementations also include fixes.

Some of the more notable limitations of the original GLUT library include:

-   The library requires programmers to call glutMainLoop(), a function which never returns. This makes it hard for programmers to integrate GLUT into a program or library which wishes to have control of its own event loop. A common patch to fix this is to introduce a new function, called glutCheckLoop() (macOS) or glutMainLoopEvent() (FreeGLUT/OpenGLUT), which runs only a single iteration of the GLUT event loop. Another common workaround is to run GLUT's event loop in a separate thread, although this may vary by operating system, and also may introduce synchronization issues or other problems: for example, the macOS GLUT implementation requires that glutMainLoop() be run in the main thread.
-   The fact that glutMainLoop() never returns also means that a GLUT program cannot exit the event loop. FreeGLUT fixes this by introducing a new function, glutLeaveMainLoop().
-   The library terminates the process when the window is closed; for some applications this may not be desired. Thus, many implementations include an extra callback, such as glutWMCloseFunc().

Since it is no longer maintained (essentially replaced by the open source FreeGLUT) the above design issues are still not resolved in the original GLUT.


See also

-   EGL is an interface between OpenGL ES or OpenVG and a windowing system.
-   FreeGLUT is intended to be a full replacement for GLUT, and has only a few differences.
-   GLFW
-   OpenGL User Interface Library (GLUI)
-   OpenGL Utility Library (GLU)
-   PLIB
-   Simple DirectMedia Layer (SDL)


References


External links

-   GLUT - The OpenGL Utility Toolkit
-   The OpenGL Utility Toolkit (GLUT) Programming Interface API Version 3 (official documentation)
-   The OpenGL Utility Toolkit (GLUT) downloads (source and pre-compiled libraries)

Category:OpenGL

[1] https://github.com/markkilgard/glut

[2] https://github.com/markkilgard/glut/blob/master/include/GL/glut.h