PICO (PINE COMPOSER) is a text editor for Unix and Unix-based computer systems. It is integrated with the Pine e-mail client, which was designed by the Office of Computing and Communications at the University of Washington.[1]

From the Pine FAQ: "PIne's message COmposition editor is also available as a separate stand-alone program, called PICO. PICO is a very simple and easy-to-use text editor offering paragraph justification, cut/paste, and a spelling checker...".[2]

Pico does not support working with several files simultaneously and cannot perform a find and replace across multiple files. It also cannot copy text from one file to another (though it is possible to read text into the editor from a file in its working directory). Pico does support search and replace operations.

By comparison, some popular Unix text editors such as vi and Emacs provide a wider range of features than Pico; including regular expression search and replace, and working with multiple files at the same time. By comparison, Pico's simplicity makes it suitable for beginners.[3]

A clone of Pico called nano, which is part of the GNU Project,[4] was developed because Pico's earlier license had unclear redistribution terms.[5] Newer versions of Pico as part of Alpine are released under the Apache License.


Basic commands and navigation

Pico features a number of commands for editing. Arrow keys move the cursor a character at the time in the direction of the movement. Inserting a character is done by pressing the corresponding character key in the keyboard, while giving commands (such as save, spell check, justify, search, etc.) is done using a control key.

The command is used to spell check. The speller is defined from the command line using the -s option. When a person writes files in different languages, the speller can be set to be a script that interacts with the user to select the language to be spelled.

The command is used to left justify text. Text is flowed in each line of a paragraph up to a limit set with the -r option in the command line. If no limit is given in the command line, then a default value of 72 characters per line is used. This limit is used to wrap lines during composition, as well as to justify text. The command justifies the text in the paragraph that the cursor is placed on. The command is used to justify the full file. In case that justification is not done correctly, or by mistake, it can be undone by pressing the command immediately after justification has been done.

The command is used to search for text. Search is done case insensitively, The search and replace command is not available by default, but must be enabled through the -b option in the command line.

Moving inside the editor can be done using the keyboard by using the arrow keys. Keys such as , or , scroll the text up or down (towards the beginning or end of the file, respectively). The commands , and move the cursor to the beginning or end of the file respectively, while the commands and move the cursor to the beginning and the end of the line that the cursor is located on.


Command-line options

The following command line options allow users to configure Pico before editing a file. This information can be obtained by starting Pico with the -h command. When Pico is invoked from Pine or Alpine some of the options below can be configured from their Setup Configuration Screen by either enabling a specific feature, or configuring a variable. Below is indicated the way to configure Pico from the command line, as well as how to configure it from Alpine. Possible starting arguments for the Pico editor are:

+-----------------------+--------------------------------------------------------------------+------------------------------------------------------+
| Command Line Argument | Meaning                                                            | Alpine Configuration Option                          |
+=======================+====================================================================+======================================================+
| -e                    | Complete - allow file name completion                              | [X] Enable Tab Completion (enabled by default)       |
+-----------------------+--------------------------------------------------------------------+------------------------------------------------------+
| -k                    | Cut - let ^K cut from cursor position to end of line               | [X] Ctrl-K Cuts From Cursor                          |
+-----------------------+--------------------------------------------------------------------+------------------------------------------------------+
| -a                    | ShowDot - show dot files in file browser                           | [X] Enable Dot Files                                 |
+-----------------------+--------------------------------------------------------------------+------------------------------------------------------+
| -j                    | Goto - allow 'Goto' command in file browser                        | [X] Enable Goto in File Browser (enabled by default) |
+-----------------------+--------------------------------------------------------------------+------------------------------------------------------+
| -g                    | Show - show cursor in file browser                                 | [X] Show Cursor                                      |
+-----------------------+--------------------------------------------------------------------+------------------------------------------------------+
| -m                    | Mouse - turn on mouse support                                      | [X] Enable Mouse in Xterm                            |
+-----------------------+--------------------------------------------------------------------+------------------------------------------------------+
| -x                    | NoKeyhelp - suppress keyhelp                                       | [X] Disable Keymenu                                  |
+-----------------------+--------------------------------------------------------------------+------------------------------------------------------+
| -p                    | PreserveStartStop - preserve "start"(^Q) and "stop"(^S) characters | [X] Preserve Start/Stop Characters                   |
+-----------------------+--------------------------------------------------------------------+------------------------------------------------------+
| -q Termdef            | Wins - termcap or terminfo takes precedence over defaults          | [X] Termdef Takes Precedence                         |
+-----------------------+--------------------------------------------------------------------+------------------------------------------------------+
| -Q                    | Set quote string (e.g. "> ") esp. for composing email              | Reply Indent String =                                |
+-----------------------+--------------------------------------------------------------------+------------------------------------------------------+
| -d                    | Rebind - let delete key delete current character                   | [X] Delete Key Maps to Ctrl-D                        |
+-----------------------+--------------------------------------------------------------------+------------------------------------------------------+
| -f                    | Keys - force use of function keys                                  |                                                      |
+-----------------------+--------------------------------------------------------------------+------------------------------------------------------+
| -b                    | Replace - allow search and replace                                 | [X] Enable Search and Replace (enabled by default)   |
+-----------------------+--------------------------------------------------------------------+------------------------------------------------------+
| -h                    | Help - give this list of options                                   |                                                      |
+-----------------------+--------------------------------------------------------------------+------------------------------------------------------+
| -r[#cols]             | Fill - set fill column to #cols columns, default=72                | Composer Wrap Column =                               |
+-----------------------+--------------------------------------------------------------------+------------------------------------------------------+
| -n[#s]                | Mail - notify about new mail every #s seconds, default=180         | Mail Check Interval =                                |
+-----------------------+--------------------------------------------------------------------+------------------------------------------------------+
| -s                    | Speller - specify alternative speller                              | Speller =                                            |
+-----------------------+--------------------------------------------------------------------+------------------------------------------------------+
| -t                    | Shutdown - enable special shutdown mode                            |                                                      |
+-----------------------+--------------------------------------------------------------------+------------------------------------------------------+
| -o                    | Operation - specify the operating directory                        | Operating Dir =                                      |
+-----------------------+--------------------------------------------------------------------+------------------------------------------------------+
| -z                    | Suspend - allow use of ^Z suspension                               | [X] Enable Suspend                                   |
+-----------------------+--------------------------------------------------------------------+------------------------------------------------------+
| -w                    | No Wrap - turn off word wrap                                       |                                                      |
+-----------------------+--------------------------------------------------------------------+------------------------------------------------------+
| -W                    | Set word separators other than whitespace                          | Composer Word Separators =                           |
+-----------------------+--------------------------------------------------------------------+------------------------------------------------------+
| -dcs                  | default uses LANG or LC_CTYPE from environment                     | Display Character Set =                              |
+-----------------------+--------------------------------------------------------------------+------------------------------------------------------+
| -kcs                  | defaults to display_character_set                                  | Keyboard Character Set =                             |
+-----------------------+--------------------------------------------------------------------+------------------------------------------------------+
| -                     | use system-supplied translation routines                           | [X] Use System Translation                           |
+-----------------------+--------------------------------------------------------------------+------------------------------------------------------+
| +[line#]              | Line - start on line# line, default=1                              |                                                      |
+-----------------------+--------------------------------------------------------------------+------------------------------------------------------+
| -v                    | View - view file                                                   |                                                      |
+-----------------------+--------------------------------------------------------------------+------------------------------------------------------+
| -no_setlocale_collate | do not do setlocale(LC_COLLATE)                                    | [X] Disable Setlocale Collate                        |
+-----------------------+--------------------------------------------------------------------+------------------------------------------------------+
| -version              | Pico version number                                                |                                                      |
+-----------------------+--------------------------------------------------------------------+------------------------------------------------------+

_All arguments may be followed by a file name to edit._

The options -dcs, -kcs and -syscs are not available in the Windows version of Pico. However, the Windows version of Pico also has four options (-cnf, -cnb, -crf, -crb) that are not available in unix versions of Pico; each option is defined as follows: -cnf for Color for Normal Foreground, -cnb for Color for Normal Background, -crf for Color for Reverse Foreground and -crf for Color for Reverse Background. Their possible values are black, red, green, yellow, blue, magenta, cyan, and white or a 3 digit number, such as 009, 064, or 137.


See also

-   List of text editors
-   Comparison of text editors


References


External links

-   The Pine Information Center at the University of Washington
-   Pico User Guide

Category:Unix text editors Category:MacOS text editors Category:Linux text editors

[1]

[2]

[3]

[4]

[5]