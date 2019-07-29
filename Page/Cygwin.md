CYGWIN ( [1]) is a POSIX-compatible environment that runs natively on Microsoft Windows. Its goal is to allow programs of Unix-like systems to be recompiled and run natively on Windows with minimal source code modifications by providing them with the same underlying POSIX API they would expect in those systems.

The Cygwin installation directory behaves like the root and follows a similar directory layout to that found in Unix-like systems, with familiar directories like /bin, /home, /etc, /usr, /var available within it, and includes by default hundreds of programs and command-line tools commonly found in the Unix world, plus the terminal emulator Mintty which is the default command-line interface tool provided to interact with the environment.

Cygwin provides native integration of Windows-based applications, data, and other system resources with applications, software tools, and data of the Unix-like environment. Thus it is possible to launch Windows applications from the Cygwin environment, as well as to use Cygwin tools and applications within the Windows operating context.

Cygwin consists of two parts: a dynamic-link library (DLL) as an API compatibility layer in the form of a C standard library providing a substantial part of the POSIX API functionality, and an extensive collection of software tools and applications that provide a Unix-like look and feel.

Cygwin was originally developed by Cygnus Solutions, which was later acquired by Red Hat, to port the GNU/Linux toolchain to Win32, including the GNU Compiler Suite. Rather than rewrite all the tools to use Win32 runtimes, Cygwin implemented a POSIX compatible runtime as a DLL.[2] It is free and open-source software, released under the GNU Lesser General Public License version 3.[3] Today it is maintained by employees of Red Hat, NetApp and many other volunteers.


Description

Cygwin consists of a library that implements the POSIX system call API in terms of Win32 system calls, a GNU development toolchain (including GCC and GDB) to allow software development, and running of a large number of application programs equivalent to those on Unix systems. Programmers have ported many Unix, GNU, BSD and Linux programs and packages to Cygwin, including the X Window System, K Desktop Environment 3, GNOME,[4] Apache, and TeX. Cygwin permits installing inetd, syslogd, sshd, Apache, and other daemons as standard Windows services, allowing Microsoft Windows systems to emulate Unix and Linux servers.

Cygwin programs are installed by running Cygwin's "setup" program, which downloads the necessary program and feature package files from repositories on the Internet. Setup can install, update, and remove programs and their source code packages. A complete installation will take in excess of 36 GB of hard disk space, but usable configurations may require as little as 1 or 2 GB.

Efforts to reconcile concepts that differ between Unix and Windows systems include:

-   A Cygwin-specific version of the Unix mount command allows mounting Windows paths as "filesystems" in the Unix file space. Initial mount-points can be configured in /etc/fstab, which has a format very similar to Unix systems, except that Windows paths appear in place of devices. Filesystems can be mounted in binary mode (by default), or in text mode, which enables automatic conversion between LF and CRLF endings (which only affects programs that open files without explicitly specifying text or binary mode).
-   Cygwin 1.7 introduced comprehensive support for POSIX locales and many character encodings, whereby the UTF-8 Unicode encoding became the default. Windows file-names and other identifiers, which are encoded as UTF-16, are automatically converted to and from the selected character-encoding.
-   Windows drive letters map to a special directory, so for example C: appears as /cygdrive/c. The /cygdrive prefix can be changed. Windows network paths of the form \\HOST\SHARE\FILE are mapped to //HOST/SHARE/FILE. Windows paths can also be used directly from Cygwin programs, but many programs do not support them correctly, hence this is discouraged.
-   Full-featured Cygwin//dev and Cygwin//proc file-systems are provided. /proc/registry provides direct filesystem access to the registry.
-   Cygwin supports POSIX symbolic links, representing them as plain-text files with the system attribute set. Cygwin 1.5 represented them as Windows Explorer shortcuts, but this has been changed for reasons of performance and POSIX correctness. Cygwin also recognises NTFS junction points and symbolic links and treats them as POSIX symbolic links, but it does not create them as their semantics are not fully POSIX-compliant.
-   The Solaris API for handling access control lists (ACLs) is supported and maps to the Windows NT ACL system.
-   Special formats of /etc/passwd and /etc/group are provided that include pointers to the Windows equivalent SIDs (in the Gecos field), allowing for mapping between Unix and Windows users and groups.
-   The fork system call for duplicating a process is fully implemented, but it does not map well to the Windows API. For example, the copy-on-write optimization strategy could not be used.

[5][6] As a result, Cygwin's fork is rather slow compared with Linux and others. (That overhead can often be avoided by replacing uses of the fork/exec technique with calls to the spawn functions declared in the Windows-specific process.h header).

-   The Cygwin DLL contains a console driver that emulates a Unix-style terminal within the Windows console. Cygwin's default user interface is the bash shell running in the Cygwin console.
-   The DLL also implements pseudo terminal (pty) devices. Cygwin ships with a number of terminal emulators that are based on them, including mintty, rxvt(-unicode), and xterm. These are more compliant with Unix terminal standards and user interface conventions than the Cygwin console, but are less suited for running Windows console programs.
-   Various utilities are provided for converting between Windows and Unix paths and file formats, for handling line ending (CRLF/LF) issues, for displaying the DLLs that an executable is linked with, etc.
-   Apart from always being linked against the Cygwin DLL, Cygwin executables are normal Windows executables. This means that Cygwin programs have full access to the Windows API and other Windows libraries, which allows gradual porting of programs from one platform to the other. However, programmers need to be careful about mixing conflicting POSIX and Windows functions.

The version of gcc that comes with Cygwin has various extensions for creating Windows DLLs, specifying whether a program is a windowing or console-mode program, adding resources, etc. Support for compiling programs that do not require the POSIX compatibility layer provided by the Cygwin DLL used to be included in the default gcc, but is provided by cross-compilers contributed by the MinGW-w64 project.

Cygwin is used heavily for porting many popular pieces of software to the Windows platform. It is used to compile Sun Java, LibreOffice, and even web server software like Lighttpd and Hiawatha.[7]

Red Hat normally licenses the Cygwin library under the GNU Lesser General Public License version 3 with an exception to allow linking to any free and open-source software whose license conforms to the Open Source Definition[8] (less strict than the Free Software Definition). Red Hat also sells commercial licenses to those who wish to redistribute programs that use the Cygwin library under proprietary terms.[9][10]


History

Cygwin began in 1995 as a project of Steve Chamberlain, a Cygnus engineer who observed that Windows NT and 95 used COFF as their object file format, and that GNU already included support for x86 and COFF, and the C library newlib. He thought it would be possible to retarget GCC and produce a cross compiler generating executables that could run on Windows. This proved practical and a prototype was quickly developed.

The next step was to attempt to bootstrap the compiler on a Windows system, requiring sufficient emulation of Unix to let the GNU configure shell script run. A Bourne shell-compatible command interpreter, such as bash, was needed and in turn a fork system call emulation and standard input/output. Windows includes similar functionality, so the Cygwin library just needed to provide a POSIX-compatible application programming interface (API) and properly translate calls and manage private versions of data, such as file descriptors.

Initially, Cygwin was called gnuwin32 (not to be confused with the current GnuWin32 project). The name was changed to Cygwin32 to emphasize Cygnus' role in creating it. When Microsoft registered the trademark Win32, the 32 was dropped to simply become Cygwin.

By 1996, other engineers had joined in, because it was clear that Cygwin would be a useful way to provide Cygnus' embedded tools hosted on Windows systems (the previous strategy had been to use DJGPP). It was especially attractive because it was possible to do a three-way cross-compile, for instance to use a hefty Sun Microsystems workstation to build, say, a Windows-x-MIPS cross-compiler, which was faster than using the PC at the time. In 1999, Cygnus offered Cygwin 1.0 as a commercial product of interest in its own right although subsequent versions have not been released, instead relying on continued open source releases.

Geoffrey Noer was the project lead from 1996 to 1998. Christopher Faylor was the project lead from 1998 to mid-2014. Corinna Vinschen became co-lead since early 2004 when Faylor left Red Hat and has been lead since mid-2014, when Faylor withdrew from active participation in the project.[11]


Features

Cygwin's default package selection is fairly small, containing little more than the bash shell and the core file manipulation utilities expected of a Unix command line. Additional packages are available as optional installs from within Cygwin's package manager ("setup-x86.exe" – 32bit & "setup-x86_64.exe" – 64bit). These include (among many others):

-   Shells (i.e. command line interpreters): bash, dash, fish, pdksh, tcsh, zsh
-   File and system utilities: coreutils, findutils, util-linux
-   Text utilities: grep, sed, diff, patch, awk
-   Terminals: mintty, rxvt, screen
-   Editors: emacs, joe, mined, nano, vim
-   Remote login: ssh, rsh, telnet
-   Remote file transfer/synchronization: ftp, scp, rsync, unison, rtorrent
-   Compression/archiving: tar, gzip, bzip2, lzma, zip
-   Text processing: TeX, groff, Ghostscript
-   Programming languages: C, C++, Objective-C, Fortran, Gambas, Perl, Python, Ruby, Tcl, Ada, CLISP, Scheme, OCaml, Prolog
-   Development tools: make, autotools, flex, bison, doxygen
-   Version control systems: cvs, subversion, git, mercurial
-   Servers: Apache, BIND, PostgreSQL, Pure-FTPd, OpenSSH, telnetd, exim, UW IMAP
-   Clients: Mutt (email), Lynx (web), Irssi (IRC), tin (newsgroups)

The Cygwin/X project contributes an implementation of the X Window System that allows graphical Unix programs to display their user interfaces on the Windows desktop. This can be used with both local and remote programs. Cygwin ships with a fairly small number of X applications, for example:

-   Terminals: rxvt-unicode, xterm
-   Editors: emacs-X11, gvim
-   Text processors/viewers: LyX, xpdf, xdvi

In addition to the low-level Xlib/XCB libraries for developing X applications, Cygwin also ships with various higher-level and cross-platform GUI frameworks, including GTK+ and Qt.

The Cygwin Ports project provides many additional packages that are not available in the Cygwin distribution itself. Examples include GNOME and K Desktop Environment 3 as well as the MySQL database and the PHP scripting language.


Alternative Windows/Unix integration tools

Several open-source and proprietary alternatives provide simultaneous access to both Windows and UNIX environments on the same hardware.

Toolsets like Windows Subsystem for Linux, Microsoft Windows Services for UNIX (SFU), UWIN, MKS Toolkit for Enterprise Developers, and Hamilton C shell also aim to provide a Unix-like user- and development-environment. They implement at least a shell and a set of the most popular utilities. Most include the familiar GNU and/or Unix development tools, including make, yacc, lex, and a cc command that acts a wrapper around a supported C compiler. SFU also includes the GCC compiler.

MinGW provides a native software port of the GCC to Microsoft Windows, along with a set of freely-distributable import libraries and header files for the Windows API. MinGW allows developers to create native Microsoft Windows applications. In addition, a component of MinGW known as MSYS (_Minimal SYStem_), which derives from Cygwin version 1.3.3, provides a minimal Unix-like shell environment including bash and a selection of POSIX tools sufficient to enable autoconf scripts to run.[12]

Numerous virtualization solutions provide x86 platform virtualization to run Windows and Unix-like operating systems simultaneously on the same hardware, but without the integration of the environments that Cygwin provides. Some, like VirtualBox and VMware Player run on Windows and Linux hosts and can run many other operating systems. Cooperative Linux (abbreviated _coLinux_) runs a full, but modified Linux kernel like a driver under Windows, effectively making Windows and Linux two coroutines, using cooperative multitasking to switch between them.

Winelib, a part of the Wine project, is the inverse of Cygwin – it is a free and open-source compatibility layer for Unix-like operating systems on the x86 or x86-64 architecture that can allow programs written for Microsoft Windows to run on Unix-like operating systems. Unlike Cygwin, which requires "You rebuild your application from source if you want it to run on Windows",[13] the full Wine product supports executing unmodified Windows binaries.


References


External links

-

Category:Compatibility layers Category:Computer programming tools Category:Free compilers and interpreters Category:Free emulation software Category:Free software programmed in C Category:Free software programmed in C++ Category:Red Hat software Category:System administration Category:Unix emulators Category:Windows-only free software

[1]

[2]

[3]

[4]

[5]

[6]

[7] Windows package of Hiawatha Webserver compiled via Cygwin

[8]

[9]

[10]

[11]

[12]

[13]