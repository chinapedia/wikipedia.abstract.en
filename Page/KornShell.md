'''KornShell ''' (ksh) is a Unix shell which was developed by David Korn at Bell Labs in the early 1980s and announced at USENIX on July 14, 1983.[1][2] The initial development was based on Bourne shell source code.[3] Other early contributors were Bell Labs developers Mike Veach and Pat Sullivan, who wrote the Emacs and vi-style line editing modes' code, respectively.[4] KornShell is backward-compatible with the Bourne shell and includes many features of the C shell, inspired by the requests of Bell Labs users.


Design

KornShell complies with POSIX.2, Shell and Utilities, Command Interpreter (IEEE Std 1003.2-1992.) Major differences between KornShell and the traditional Bourne shell include:

-   Job control, command aliasing, and command history designed after the corresponding C shell features. Job control was added to the Bourne Shell in 1989.[5]
-   A choice of three command line editing styles based on vi, Emacs, and Gosling Emacs.
-   Associative arrays and built-in floating point arithmetic operations (only available in the version of KornShell).
-   Dynamic extensibility of built-in commands (as of ).


History

OpenBSD_ksh_Interaction.png's default shell, ]]

KornShell was originally proprietary software. In 2000 the source code was released under a license particular to AT&T, but since the 93q release in early 2005 it has been licensed under the Eclipse Public License.[6] KornShell is available as part of the AT&T Software Technology (AST) Open Source Software Collection. As KornShell was initially only available through a proprietary license from AT&T, a number of free and open source alternatives were created. These include , , GNU , and .

The functionality of the original KornShell, , was used as a basis for the standard POSIX.2, Shell and Utilities, Command Interpreter (IEEE Std 1003.2-1992.)

Some vendors still ship their own versions of the older variant, sometimes with extensions. is still maintained by its author. Releases of are versioned by appending a letter to the name; the current version is , following (which followed ); is in the beta phase ()[7]

As "Desktop KornShell" (), is distributed as part of the Common Desktop Environment.[8] This version also provides shell-level mappings for Motif widgets. It was intended as a competitor to Tcl/Tk.[9]

The original KornShell, , became the default shell on AIX in version 4,[10][11] with ksh93 being available separately.[12]

UnixWare 7 includes both and . The default Korn shell is , which is supplied as , and the older version is available as .[13] UnixWare also includes when CDE is installed.


Variants

There are several software products related to KornShell:

-    – a fork of included as part of CDE.

-    – a fork of that provides access to the Tk widget toolkit.

-    – a Linux-based fork of OpenBSD's flavour of KornShell. It is used as the default shell in DeLi Linux.

-    – a free implementation of the KornShell language, forked from . It was originally developed for MirOS BSD and is licensed under permissive (though not public domain) terms; specifically, the MirOS Licence.[14] In addition to its usage on BSD, this variant has replaced on Debian,[15] and is the default shell on Android.

-    – an AmigaOS flavour that provides several Amiga-specific features, such as ARexx interoperability.

-   MKS Inc.'s MKS Korn shell – a proprietary implementation of the KornShell language from Microsoft Windows Services for UNIX (SFU) up to version 2.0; according to David Korn, the MKS Korn shell was not fully compatible with KornShell in 1998.[16][17] In SFU version 3.0 Microsoft replaced the MKS Korn shell with a new POSIX.2-compliant shell as part of Interix.[18]
-   KornShell is included in UWIN, a Unix compatibility package by David Korn.[19]


See also

-   Comparison of computer shells
-   List of Unix commands
-   The program


References


Further reading

-   -   David G. Korn, Charles J. Northrup and Jeffery Korn The New KornShell—ksh93, Linux Journal, Issue 27, July 1996


External links

-   Korn shell home page (AT&T ksh)
-   github for AT&T Software Technology (AST), including ksh source code.
-   Official KSH mailing lists, ast-developers and ast-users.
-   -   -   Public Domain Korn shell (pdksh)
-   MirBSD Korn Shell (mksh)
-

Category:Cross-platform software Category:Free software programmed in C Category:Scripting languages Category:Software that uses Meson Category:Unix shells

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

[13]

[14]

[15]

[16]

[17]

[18]

[19]