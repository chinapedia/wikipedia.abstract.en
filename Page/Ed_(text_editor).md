(pronounced as distinct letters, )[1] is a line editor for Unix and Unix-like operating systems. It was one of the first parts of the Unix operating system that was developed, in August 1969.[2] It remains part of the POSIX and Open Group standards for Unix-based operating systems,[3] alongside the more sophisticated full-screen editor vi.


History and influence

The ed text editor was one of the first three key elements of the Unix operating system—assembler, editor, and shell—developed by Ken Thompson in August 1969 on a PDP-7 at AT&T Bell Labs.[4] Many features of ed came from the qed text editor developed at Thompson's alma mater University of California, Berkeley.[5] Thompson was very familiar with qed, and had reimplemented it on the CTSS and Multics systems. Thompson's versions of qed were notable as the first to implement regular expressions. Regular expressions are also implemented in ed, though their implementation is considerably less general than that in qed.

Dennis M. Ritchie produced what Doug McIlroy later described as the "definitive" ed,[6] and aspects of ed went on to influence ex, which in turn spawned vi. The non-interactive Unix command grep was inspired by a common special use of qed and later ed, where the command g/re/p means globally search for the regular expression re and print the lines containing it. The Unix stream editor, sed implemented many of the scripting features of qed that were not supported by ed on Unix.


Features

Features of ed include:

-   available on essentially all Unix systems (and mandatory on systems conforming to the Single Unix Specification).
-   a modal editor supporting command mode, text mode and viewing mode
-   support for regular expressions
-   powerful automation can be achieved by feeding commands from standard input

(In)famous for its terseness, ed gives almost no visual feedback,[7] and has been called (by Peter H. Salus) "the most user-hostile editor ever created", even when compared to the contemporary (and notoriously complex) TECO. For example, the message that ed will produce in case of error, or when it wants to make sure the user wishes to quit without saving, is "?". It does not report the current filename or line number, or even display the results of a change to the text, unless requested. Older versions (c. 1981) did not even ask for confirmation when a quit command was issued without the user saving changes.[8] This terseness was appropriate in the early versions of Unix, when consoles were teletypes, modems were slow, and memory was precious. As computer technology improved and these constraints were loosened, editors with more visual feedback became the norm.

In current practice, ed is rarely used interactively, but does find use in some shell scripts. For interactive use, ed was subsumed by the sam, vi and Emacs editors in the 1980s. ed can be found on virtually every version of Unix and Linux available, and as such is useful for people who have to work with multiple versions of Unix. On Unix-based operating systems, some utilities like SQL*Plus run ed as the editor if the EDITOR and VISUAL environment variables are not defined.[9] If something goes wrong, ed is sometimes the only editor available. This is often the only time when it is used interactively.

The ed commands are often imitated in other line-based editors. For example, EDLIN in early MS-DOS versions and 32-bit versions of Windows NT has a somewhat similar syntax, and text editors in many MUDs (LPMud and descendants, for example) use ed-like syntax. These editors, however, are typically more limited in function.


Example

Here is an example transcript of an ed session. For clarity, commands and text typed by the user are in normal face, and output from ed is EMPHASIZED.

a
ed is the standard Unix text editor.
This is line number two.
.
2i
  
.
,l
ed is the standard Unix text editor.$
$
This is line number two.$
3s/two/three/
,l
ed is the standard Unix text editor.$
$
This is line number three.$
w text
65
q

The end result is a simple text file containing the following text:

ed is the standard Unix text editor.
  
This is line number three.

Started with an empty file, the a command appends text (all ed commands are single letters). The command puts ed in _insert mode_, inserting the characters that follow and is terminated by a single dot on a line. The two lines that are entered before the dot end up in the file buffer. The 2i command also goes into insert mode, and will insert the entered text (a single empty line in our case) before line two. All commands may be prefixed by a line number to operate on that line.

In the line ,l, the lowercase L stands for the list command. The command is prefixed by a range, in this case , which is a shortcut for 1,$. A range is two line numbers separated by a comma ($ means the last line). In return, ed lists all lines, from first to last. These lines are ended with dollar signs, so that white space at the end of lines is clearly visible.

Once the empty line is inserted in line 2, the line which reads "This is line number two." is now actually the third line. This error is corrected with 3s/two/three/, a substitution command. The 3 will apply it to the correct line; following the command is the text to be replaced, and then the replacement. Listing all lines with ,l the line is shown now to be correct.

w text writes the buffer to the file "text" making ed respond with _65_, the number of characters written to the file. q will end an ed session.


See also

-   ex (text editor), originally an EXtended version of _ed_.
-   vi, the VIsual full-screen editor based on _ex_.
-   sed, the standard UNIX Stream EDitor based on the scripting features in _ed_.
-   Edlin, the standard MS-DOS line editor which was inspired by _ed_.
-   Sam (text editor)
-   Editor war
-   List of Unix commands


References


External links

-   -   Manual page from Unix First Edition describing ed.
-   GNU ed homepage
-   -   , a direct descendant of the original ed.

-   GNU ed for Win32
-   Unix Editors I
-   Examples for ed in scripts
-   ed Humor ("Ed is the standard text editor")
-   A History of UNIX before Berkeley section 3.1 describes the history of ed.

Category:Unix text editors Category:MacOS text editors Category:Standard Unix programs Category:Unix SUS2008 utilities Category:Line editor Category:1971 software Category:Console applications

[1]

[2]

[3]

[4] The Peter H. Salus, Daemon, the Gnu and the Penguin. Ch. 2 & 3. Thursday, April 14, 2005 @ 10:56 PM EDT. http://www.groklaw.net/article.php?story=20050414215646742 Accessed 10/29/2015.

[5] D. M. Ritchie and K. L. Thompson, "QED Text Editor", MM-70-1373-3 (June 1970), reprinted as "QED Text Editor Reference Manual", MHCC-004, Murray Hill Computing, Bell Laboratories (October 1972).

[6]

[7]

[8]

[9] Administering SQL*Plus. https://docs.oracle.com/cd/E11882_01/server.112/e10839/admn_sqlpls.htm#UNXAR166 Accessed 7/23/2016.