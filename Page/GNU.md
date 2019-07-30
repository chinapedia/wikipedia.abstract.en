GNU [1][2] is an operating system and an extensive collection of computer software. [3][4][5][6][7][8] GNU is composed wholly of free software,[9][10][11] most of which is licensed under the GNU Project's own General Public License (GPL).

_GNU_ is a recursive acronym for "GNU's Not Unix!",[12][13] chosen because GNU's design is Unix-like, but differs from Unix by being free software and containing no Unix code.[14][15][16] The GNU project includes an operating system kernel, GNU Hurd, which was the original focus of the Free Software Foundation (FSF).[17][18][19][20] However, given the Hurd kernel's status as not yet production-ready,[21] non-GNU kernels, most popularly the Linux kernel, can also be used with GNU software.[22][23] The combination of GNU and Linux has become ubiquitous to the point that the duo is often referred to as just _"Linux"_ in short, or, less frequently, _GNU/Linux_. (see the GNU/Linux naming controversy)

, founder of the GNU project]]

Richard Stallman, the founder of the project, views GNU as a "technical means to a social end".[24] Relatedly Lawrence Lessig states in his introduction to the second edition of Stallman's book _Free Software, Free Society_ that in it Stallman has written about "the social aspects of software and how Free Software can create community and social justice".[25]


History

Development of the GNU operating system was initiated by Richard Stallman while he worked at MIT Artificial Intelligence Laboratory. It was called the GNU Project, and was publicly announced on September 27, 1983, on the net.unix-wizards and net.usoft newsgroups by Stallman.[26] Software development began on January 5, 1984, when Stallman quit his job at the Lab so that they could not claim ownership or interfere with distributing GNU components as free software.[27] Richard Stallman chose the name by using various plays on words, including the song _The Gnu_.[28]

The goal was to bring a wholly free software operating system into existence. Stallman wanted computer users to be free to study the source code of the software they use, share software with other people, modify the behavior of software, and publish their own modified versions of the software. This philosophy was later published as the GNU Manifesto in March 1985.[29]

Richard Stallman's experience with the Incompatible Timesharing System (ITS),[30] an early operating system written in assembly language that became obsolete due to discontinuation of PDP-10, the computer architecture for which ITS was written, led to a decision that a portable system was necessary.[31][32] It was thus decided that the development would be started using C and Lisp as system programming languages,[33] and that GNU would be compatible with Unix.[34] At the time, Unix was already a popular proprietary operating system. The design of Unix was modular, so it could be reimplemented piece by piece.[35]

Much of the needed software had to be written from scratch, but existing compatible third-party free software components were also used such as the TeX typesetting system, the X Window System, and the Mach microkernel that forms the basis of the GNU Mach core of GNU Hurd (the official kernel of GNU).[36] With the exception of the aforementioned third-party components, most of GNU has been written by volunteers; some in their spare time, some paid by companies,[37] educational institutions, and other non-profit organizations. In October 1985, Stallman set up the Free Software Foundation (FSF). In the late 1980s and 1990s, the FSF hired software developers to write the software needed for GNU.[38][39]

As GNU gained prominence, interested businesses began contributing to development or selling GNU software and technical support. The most prominent and successful of these was Cygnus Solutions,[40] now part of Red Hat.[41]


Components

The system's basic components include the GNU Compiler Collection (GCC), the GNU C library (glibc), and GNU Core Utilities (coreutils),[42] but also the GNU Debugger (GDB), GNU Binary Utilities (binutils),[43] the GNU Bash shell[44][45] and the GNOME desktop environment.[46] GNU developers have contributed to Linux ports of GNU applications and utilities, which are now also widely used on other operating systems such as BSD variants, Solaris and macOS.[47]

Many GNU programs have been ported to other operating systems, including proprietary platforms such as Microsoft Windows[48] and macOS.[49] GNU programs have been shown to be more reliable than their proprietary Unix counterparts.[50][51]

As of November 2015, there are a total of 466 GNU packages (including decommissioned, 383 excluding) hosted on the official GNU development site.[52]


GNU variants

, an example of an FSF approved distribution]] , an example of an FSF approved distribution that uses a rolling release model]]

The official kernel of GNU Project was the GNU Hurd microkernel; however, as of 2012, the Linux kernel became officially part of the GNU Project in the form of Linux-libre, a variant of Linux with all proprietary components removed.[53]

With the April 30, 2015 release of the Debian GNU/Hurd 2015 distro,[54][55] GNU OS now provides the components to assemble an operating system that users can install and use on a computer.[56][57][58] This includes the GNU Hurd kernel, that is currently in a pre-production state. The Hurd status page states that "it may not be ready for production use, as there are still some bugs and missing features. However, it should be a good base for further development and non-critical application usage."[59]

Due to Hurd not being ready for production use, in practice these operating systems are Linux distributions. They contain the Linux kernel, GNU components and software from many other free software projects. Looking at all program code contained in the Ubuntu Linux distribution in 2011, GNU encompassed 8% (13% including GNOME) and the Linux kernel 6% (increased to 9% when including its direct dependencies).[60]

Other kernels like the FreeBSD kernel also work together with GNU software to form a working operating system.[61] The FSF maintains that an operating system built using the Linux kernel and GNU tools and utilities, should be considered a variant of GNU, and promotes the term _GNU/Linux_ for such systems (leading to the GNU/Linux naming controversy).[62][63][64] The GNU Project has endorsed Linux distributions, such as gNewSense, Trisquel and Parabola GNU/Linux-libre.[65] Other GNU variants which do not use the Hurd as a kernel include Debian GNU/kFreeBSD and Debian GNU/NetBSD, bringing to fruition the early plan of GNU on a BSD kernel.


Copyright, GNU licenses, and stewardship

The GNU Project recommends that contributors assign the copyright for GNU packages to the Free Software Foundation,[66][67] though the Free Software Foundation considers it acceptable to release small changes to an existing project to the public domain.[68] However, this is not required; package maintainers may retain copyright to the GNU packages they maintain, though since only the copyright holder may enforce the license used (such as the GNU GPL), the copyright holder in this case enforces it rather than the Free Software Foundation.[69]

For the development of needed software, Stallman wrote a license called the GNU General Public License (first called Emacs General Public License), with the goal to guarantee users freedom to share and change free software.[70] Stallman wrote this license after his experience with James Gosling and a program called UniPress, over a controversy around software code use in the GNU Emacs program.[71][72] For most of the 80s, each GNU package had its own license: the Emacs General Public License, the GCC General Public License, etc. In 1989, FSF published a single license they could use for all their software, and which could be used by non-GNU projects: the GNU General Public License (GPL).[73][74]

This license is now used by most of GNU software, as well as a large number of free software programs that are not part of the GNU Project; it is also the most commonly used free software license.[75] It gives all recipients of a program the right to run, copy, modify and distribute it, while forbidding them from imposing further restrictions on any copies they distribute. This idea is often referred to as copyleft.[76]

In 1991, the GNU Lesser General Public License (LGPL), then known as the Library General Public License, was written for the GNU C Library to allow it to be linked with proprietary software.[77] 1991 also saw the release of version 2 of the GNU GPL. The GNU Free Documentation License (FDL), for documentation, followed in 2000.[78] The GPL and LGPL were revised to version 3 in 2007, adding clauses to protect users against hardware restrictions that prevent user to run modified software on their own devices.[79]

Besides GNU's own packages, the GNU Project's licenses are used by many unrelated projects, such as the Linux kernel, often used with GNU software. A minority of the software used by most of Linux distributions, such as the X Window System, is licensed under permissive free software licenses.


Logo

The logo for GNU is a gnu head. Originally drawn by Etienne Suvasa, a bolder and simpler version designed by Aurelio Heckert is now preferred.[80][81] It appears in GNU software and in printed and electronic documentation for the GNU Project, and is also used in Free Software Foundation materials.

The image shown here is a modified version of the official logo. It was created by the Free Software Foundation in September 2013 to commemorate the 30th anniversary of the GNU Project.[82]


See also

-   Access to Knowledge movement
-   Free-culture movement
-   Free software movement
-   History of free and open-source software
-   List of computing mascots
-   :Category:Computing mascots


References


External links

-   -   Ports of GNU utilities for Microsoft Windows
-   The daemon, the GNU and the penguin

Category:Free software operating systems Category:GNU Project Category:GNU Project software Category:Mach (kernel) Category:Microkernel-based operating systems Category:Unix variants

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

[18] Vaughan-Nichols, Steven J. "Opinion: The top 10 operating system stinkers", _Computerworld_, April 9, 2009: "... after more than 25 years in development, GNU remains incomplete: its kernel, Hurd, has never really made it out of the starting blocks. ... Almost no one has actually been able to use the OS; it's really more a set of ideas than an operating system."

[19]

[20] Lessig, Lawrence. _The Future of Ideas: The Fate of the Commons in a Connected World_, p. 54. Random House, 2001. . About Stallman: "He had mixed all of the ingredients needed for an operating system to function, but he was missing the core."

[21]

[22]

[23]

[24] .

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

[50] Fuzz Revisited: A Re-examination of the Reliability of UNIX Utilities and Services - October 1995 - Computer Sciences Department,University of Wisconsin

[51] An Inquiry into the Stability and Reliability of UNIX Utilities

[52]

[53]

[54]

[55]

[56]

[57]

[58]

[59]

[60]

[61]

[62]

[63]

[64]

[65] .

[66]

[67]

[68]

[69]

[70] .

[71]

[72] .

[73]

[74] .

[75]

[76]

[77] .

[78]

[79]

[80]

[81]

[82]