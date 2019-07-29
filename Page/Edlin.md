EDLIN is a line editor, and the only text editor provided with early versions of IBM PC DOS[1] and MS-DOS. Although superseded in MS-DOS 5.0 and later by the full-screen edit command, and by Notepad in Microsoft Windows, it continues to be included in the 32-bit versions of current Microsoft operating systems.


History

Edlin was created by Tim Paterson in two weeks in 1980, for Seattle Computer Products's 86-DOS (QDOS)[2] based on the CP/M line editor _ED_.[3]

Microsoft acquired 86-DOS and sold it as MS-DOS, so Edlin was included in v1.0–v5.0 of MS-DOS, after which the only editor included was the new full-screen MS-DOS Editor in v6.0–v8.0.

Early Windows versions ran on top of the later versions of MS-DOS, so Edlin was typically not available.

However, Edlin is included in the 32-bit versions of Windows NT[4] and its derivatives—up to and including Windows 10—because the NTVDM's DOS support in those operating systems is based on MS-DOS version 5.0. However, unlike most other external DOS commands, it has not been transformed into a native Win32 program. It also does not support long filenames, which were not added to MS-DOS and MS-Windows until long after Edlin was written.

The FreeDOS version was developed by Gregory Pietsch.[5]


Usage

There are only a few commands. The short list can be found by entering a ? at the edlin prompt.

When a file is open, typing L lists the contents (e.g., 1,6L lists lines 1 through 6). Each line is displayed with a line number in front of it.

*1,6L
       1: Edlin: The only text editor in early versions of DOS.
       2:
       3: Back in the day, I remember seeing web pages
       4: branded with a logo at the bottom:
       5: "This page created in edlin."
       6: The things that some people put themselves through. ;-)
*

The currently selected line has a *. To replace the contents of any line, the line number is entered and any text entered replaces the original. While editing a line pressing Ctrl-C cancels any changes. The * marker remains on that line.

Entering I (optionally preceded with a line number) inserts one or more lines before the * line or the line given. When finished entering lines, Ctrl-C returns to the edlin command prompt.

*6I
       6:*(...or similar)
       7:*^C 
 
*7D
*L
       1: Edlin: The only text editor in early versions of DOS.
       2:
       3: Back in the day, I remember seeing web pages
       4: branded with a logo at the bottom:
       5: "This page created in edlin."
       6: (...or similar)
*

    D - deletes the specified line, again optionally starting with the number of a line, or a range of lines. E.g.: 2,4d deletes lines 2 through 4. In the above example, line 7 was deleted.

    R - is used to replace all occurrences of a piece of text in a given range of lines, for example, to replace a spelling error. Including the ? prompts for each change. E.g.: To replace 'prit' with 'print' and to prompt for each change: ?rprit^Zprint (the ^Z represents pressing CTRL-Z). It is case-sensitive.

    S - searches for given text. It is used in the same way as replace, but without the replacement text. A search for 'apple' in the first 20 lines of a file is typed 1,20?sapple (no space, unless that is part of the search) followed by a press of enter. For each match, it asks if it is the correct one, and accepts n or y (or Enter).

    P - displays a listing of a range of lines. If no range is specified, P displays the complete file from the * to the end. This is different from L in that P changes the current line to be the last line in the range.

    T - transfers another file into the one being edited, with this syntax: [line to insert at]t[full path to file].

    W - (write) saves the file.

    E - saves the file and quits edlin.

    Q - quits edlin without saving.

Scripts

Edlin may be used as a non-interactive file editor in scripts by redirecting a series of edlin commands.

    edlin < script

FreeDOS Edlin

A GPL-licensed clone of Edlin that includes long filename support is available for download as part of the FreeDOS project. This runs on operating systems such as Linux or Unix as well as MS-DOS.[6]


See also

-   List of DOS commands
-   ed and ex, similar Unix line editors.
-   86-DOS


References


External links

-   MS-DOS edlin command help

Category:1980 software Category:Console applications Category:DOS text editors Category:Line editor Category:OS/2 commands Category:Windows components Category:Windows text editors

[1] http://www.bitsavers.org/pdf/ibm/pc/dos/6172220_DOS_1.0_Jan82.pdf

[2] A Short History of MS-DOS

[3] ED Utility

[4] 16-Bit Applications Included with Windows NT, microsoft.com

[5] http://www.ibiblio.org/pub/micro/pc-stuff/freedos/files/distributions/1.2/repos/pkg-html/edlin.html

[6] FreeDOS Edlin