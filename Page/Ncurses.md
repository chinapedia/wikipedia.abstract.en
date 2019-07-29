NCURSES (new curses) is a programming library providing an application programming interface (API) that allows the programmer to write text-based user interfaces in a terminal-independent manner. It is a toolkit for developing "GUI-like" application software that runs under a terminal emulator. It also optimizes screen changes, in order to reduce the latency experienced when using remote shells.


History

As the new version, ncurses is a free-software emulation of the System V Release 4.0 (SVr4) curses, which was itself an enhancement over the discontinued 4.4 BSD curses.[1] The XSI Curses standard issued by X/Open is explicitly and closely modeled on System V.

curses

The first curses library was developed at the University of California at Berkeley, for a BSD operating system, around 1980 to support Rogue, a text-based adventure game. It originally used the termcap library, which was used in other programs, such as the vi editor.[2]

The success of the BSD curses library prompted Bell Labs to release an enhanced curses library in their System V Release 2 Unix systems. This library was more powerful and instead of using termcap, it used terminfo. However, due to AT&T policy regarding source-code distribution, this improved curses library did not have much acceptance in the BSD community.[3]

pcurses

Around 1982, Pavel Curtis started work on a freeware clone of the Bell Labs curses, named PCURSES, which was maintained by various people through 1986.[4]

ncurses

The pcurses library was further improved when Zeyd Ben-Halim took over the development effort in late 1991.[5][6][7] The new library was released as ncurses in November 1993, with version 1.8.1 as the first major release. Subsequent work, through version 1.8.8 (M1995), was driven by Eric S. Raymond, who added the form and menu libraries written by Juergen Pfeifer.[8] Since 1996, it has been maintained by Thomas E. Dickey.[9]

Most ncurses calls can be easily ported to the old curses. System V curses implementations can support BSD curses programs with just a recompilation.[10] However, a few areas are problematic, such as handling terminal resizing, since no counterpart exists in the old curses.


Terminal database

Ncurses can use either terminfo (with extensible data) or termcap. Other implementations of curses generally use terminfo; a minority use termcap. Few (mytinfo was an older exception[11]) use both.


License

Ncurses is a part of the GNU Project. It is one of the few GNU files not distributed under the GNU GPL or LGPL; it is distributed under a permissive free software licence, similar to the MIT License.[12] This is due to the agreement made with the Free Software Foundation at the time the developers assigned their copyright.

When the agreement was made to pass on the rights to the FSF, there was a clause that stated:[13]

  The Foundation promises that all distribution of the Package, or of any work "based on the Package", that takes place under the control of the Foundation or its agents or assignees, shall be on terms that explicitly and perpetually permit anyone possessing a copy of the work to which the terms apply, and possessing accurate notice of these terms, to redistribute copies of the work to anyone on the same terms.

According to the maintainer Thomas E. Dickey, this precludes relicensing to the GPL in any version, since it would place restrictions on the programs that will be able to link to the libraries.[14]


Programs using ncurses

There are hundreds of programs which use ncurses.[15][16] Some, such as GNU Screen and w3m, use only the termcap interface, performing screen management within the application. Others, such as GNU Midnight Commander and YaST, use the curses programming interface.


See also

-   conio.h – A C header file used in MS-DOS compilers to create text user interfaces
-   Curses Development Kit
-   Dialog (software)
-   PDCurses
-   S-Lang (programming library)
-   SMG$ – The screen-management library available under OpenVMS


References


External links

-

Category:C libraries Category:Free software programmed in Ada Category:Free software programmed in C Category:GNU Project software Ncurses Category:Software using the MIT license Category:Termcap Category:Terminfo

[1]

[2]

[3]

[4]

[5]

[6]

[7] The README file in ncurses 1.8.1 states "v0.1 July 31, 1992" and "v1.8.1 November 5, 1993", which agrees with the NEWS (changelog) file

[8] NCURSES - Frequently Asked Questions (FAQ): Who wrote NCURSES?

[9]

[10] A Hacker's Guide to Ncurses Internals

[11]

[12] NCURSES - Frequently Asked Questions (FAQ): Is it GPL'd?

[13]

[14]

[15]

[16]