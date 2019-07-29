FreeBSD_10_vi_RC_Firewall.png shell script for configuring ipfirewall ]] A SHELL SCRIPT is a computer program designed to be run by the Unix shell, a command-line interpreter.[1] The various dialects of shell scripts are considered to be scripting languages. Typical operations performed by shell scripts include file manipulation, program execution, and printing text. A script which sets up the environment, runs the program, and does any necessary cleanup, logging, etc. is called a WRAPPER.

The term is also used more generally to mean the automated mode of running an operating system shell; in specific operating systems they are called other things such as batch files (MSDos-Win95 stream, OS/2), command procedures (VMS), and shell scripts (Windows NT stream and third-party derivatives like 4NT—article is at cmd.exe), and mainframe operating systems are associated with a number of terms.

The typical Unix/Linux/POSIX-compliant installation includes the KornShell (ksh) in several possible versions such as ksh88, Korn Shell '93 and others. The oldest shell still in common use is the Bourne shell (sh); Unix systems invariably also include the C shell (csh), Bash (bash), a Remote Shell (rsh), a Secure Shell (ssh) for SSL telnet connections, and a shell which is a main component of the Tcl/Tk installation usually called tclsh; wish is a GUI-based Tcl/Tk shell. The C and Tcl shells have syntax quite similar to that of said programming languages, and the Korn shells and Bash are developments of the Bourne shell, which is based on the ALGOL language with elements of a number of others added as well.[2] On the other hand, the various shells plus tools like awk, sed, grep, and BASIC, Lisp, C and so forth contributed to the Perl programming language.[3]

Other shells available on a machine or available for download and/or purchase include Almquist shell (ash), PowerShell (msh), Z shell (zsh, a particularly common enhanced KornShell), the Tenex C Shell (tcsh), a Perl-like shell (psh). Related programs such as shells based on Python, Ruby, C, Java, Perl, Pascal, Rexx &c in various forms are also widely available. Another somewhat common shell is osh, whose manual page states it "is an enhanced, backward-compatible port of the standard command interpreter from Sixth Edition UNIX."[4]

Windows-Unix interoperability software such as the MKS Toolkit, Cygwin, UWIN, Interix and others make the above shells and Unix programming available on Windows systems, providing functionality all the way down to signals and other inter-process communication, system calls and APIs. The Hamilton C shell is a Windows shell that is very similar to the Unix C Shell. Microsoft distributes Windows Services for UNIX for use with its NT-based operating systems in particular, which have a POSIX environmental subsystem.


Capabilities

Shortcuts

A shell script can provide a convenient variation of a system command where special environment settings, command options, or post-processing apply automatically, but in a way that allows the new script to still act as a fully normal Unix command.

One example would be to create a version of ls, the command to list files, giving it a shorter command name of l, which would be normally saved in a user's bin directory as /home/_username_/bin/l, and a default set of command options pre-supplied.

    #!/bin/sh
    LC_COLLATE=C ls -FCas "$@"

Here, the first line (shebang) indicates which interpreter should execute the rest of the script, and the second line makes a listing with options for file format indicators, columns, all files (none omitted), and a size in blocks. The LC_COLLATE=C sets the default collation order to not fold upper and lower case together, not intermix dotfiles with normal filenames as a side effect of ignoring punctuation in the names (dotfiles are usually only shown if an option like -a is used), and the "$@" causes any parameters given to l to pass through as parameters to ls, so that all of the normal options and other syntax known to ls can still be used.

The user could then simply use l for the most commonly used short listing.

Another example of a shell script that could be used as a shortcut would be to print a list of all the files and directories within a given directory.

    #!/bin/sh

    clear
    ls -al

In this case, the shell script would start with its normal starting line of #!/bin/sh. Following this, the script executes the command clear which clears the terminal of all text before going to the next line. The following line provides the main function of the script. The ls -al command lists the files and directories that are in the directory from which the script is being run. The ls command attributes could be changed to reflect the needs of the user.

Note: If an implementation does not have the clear command, try using the clr command instead.

    #!/bin/sh

    tail $(find . -iname *.sh)

Batch jobs

Shell scripts allow several commands that would be entered manually at a command-line interface to be executed automatically, and without having to wait for a user to trigger each stage of the sequence. For example, in a directory with three C source code files, rather than manually running the four commands required to build the final program from them, one could instead create a C shell script, here named build and kept in the directory with them, which would compile them automatically:

    #!/bin/csh
    echo compiling...
    cc -c foo.c
    cc -c bar.c
    cc -c qux.c
    cc -o myprog foo.o bar.o qux.o
    echo done.

The script would allow a user to save the file being edited, pause the editor, and then just run ./build to create the updated program, test it, and then return to the editor. Since the 1980s or so, however, scripts of this type have been replaced with utilities like make which are specialized for building programs.

Generalization

Simple batch jobs are not unusual for isolated tasks, but using shell loops, tests, and variables provides much more flexibility to users. A Bash (Unix shell) script to convert JPEG images to PNG images, where the image names are provided on the command-line—possibly via wildcards—instead of each being listed within the script, can be created with this file, typically saved in a file like /home/_username_/bin/jpg2png

    #!/bin/bash
    for jpg; do                                  # use $jpg in place of each filename given, in turn
        png="${jpg%.jpg}.png"                    # construct the PNG version of the filename by replacing .jpg with .png
        echo converting "$jpg" ...               # output status info to the user running the script
        if convert "$jpg" jpg.to.png ; then      # use the convert program (common in Linux) to create the PNG in a temp file
            mv jpg.to.png "$png"                 # if it worked, rename the temporary PNG image to the correct name
        else                                     # ...otherwise complain and exit from the script
            echo 'jpg2png: error: failed output saved in "jpg.to.png".' >&2
            exit 1
        fi                                       # the end of the "if" test construct
    done                                         # the end of the "for" loop
    echo all conversions successful              # tell the user the good news
    exit 0

The jpg2png command can then be run on an entire directory full of JPEG images with just /home/_username_/bin/jpg2png *.jpg

Verisimilitude

A key feature of shell scripts is that the invocation of their interpreters is handled as a core operating system feature. So rather than a user's shell only being able to execute scripts in that shell's language, or a script only having its interpreter directive handled correctly if it was run from a shell (both of which were limitations in the early Bourne shell's handling of scripts), shell scripts are set up and executed by the OS itself. A modern shell script is not just on the same footing as system commands, but rather many system commands are actually shell scripts (or more generally, scripts, since some of them are not interpreted by a shell, but instead by Perl, Python, or some other language). This extends to returning exit codes like other system utilities to indicate success or failure, and allows them to be called as components of larger programs regardless of how those larger tools are implemented.[5][6]

Like standard system commands, shell scripts classically omit any kind of filename extension unless intended to be read into a running shell through a special mechanism for this purpose (such as sh’s "'''. '''", or csh’s source).[7][8]

Programming

Many modern shells also supply various features usually found only in more sophisticated general-purpose programming languages, such as control-flow constructs, variables, comments, arrays, subroutines and so on. With these sorts of features available, it is possible to write reasonably sophisticated applications as shell scripts. However, they are still limited by the fact that most shell languages have little or no support for data typing systems, classes, threading, complex math, and other common full language features, and are also generally much slower than compiled code or interpreted languages written with speed as a performance goal.

The standard Unix tools sed and awk provide extra capabilities for shell programming; Perl can also be embedded in shell scripts as can other scripting languages like Tcl. Perl and Tcl come with graphics toolkits as well.


Other scripting languages

Many powerful scripting languages have been introduced for tasks that are too large or complex to be comfortably handled with ordinary shell scripts, but for which the advantages of a script are desirable and the development overhead of a full-blown, compiled programming language would be disadvantageous. The specifics of what separates scripting languages from high-level programming languages is a frequent source of debate, but, generally speaking, a scripting language is one which requires an interpreter.


Life cycle

Shell scripts often serve as an initial stage in software development, and are often subject to conversion later to a different underlying implementation, most commonly being converted to Perl, Python, or C. The interpreter directive allows the implementation detail to be fully hidden inside the script, rather than being exposed as a filename extension, and provides for seamless reimplementation in different languages with no impact on end users.

While files with the ".sh" file extension are usually a shell script of some kind, most shell scripts do not have any filename extension.[9][10]


Advantages and disadvantages

Perhaps the biggest advantage of writing a shell script is that the commands and syntax are exactly the same as those directly entered at the command-line. The programmer does not have to switch to a totally different syntax, as they would if the script were written in a different language, or if a compiled language were used.

Often, writing a shell script is much quicker than writing the equivalent code in other programming languages. The many advantages include easy program or file selection, quick start, and interactive debugging. A shell script can be used to provide a sequencing and decision-making linkage around existing programs, and for moderately sized scripts the absence of a compilation step is an advantage. Interpretive running makes it easy to write debugging code into a script and re-run it to detect and fix bugs. Non-expert users can use scripting to tailor the behavior of programs, and shell scripting provides some limited scope for multiprocessing.

On the other hand, shell scripting is prone to costly errors. Inadvertent typing errors such as rm -rf * / (instead of the intended rm -rf */) are folklore in the Unix community; a single extra space converts the command from one that deletes everything in the sub-directories to one which deletes everything—and also tries to delete everything in the root directory. Similar problems can transform cp and mv into dangerous weapons, and misuse of the > redirect can delete the contents of a file. This is made more problematic by the fact that many UNIX commands differ in name by only one letter: cp, cd, dd, df, etc.

Another significant disadvantage is the slow execution speed and the need to launch a new process for almost every shell command executed. When a script's job can be accomplished by setting up a pipeline in which efficient filter commands perform most of the work, the slowdown is mitigated, but a complex script is typically several orders of magnitude slower than a conventional compiled program that performs an equivalent task.

There are also compatibility problems between different platforms. Larry Wall, creator of Perl, famously wrote that "It is easier to port a shell than a shell script."

Similarly, more complex scripts can run into the limitations of the shell scripting language itself; the limits make it difficult to write quality code, and extensions by various shells to ameliorate problems with the original shell language can make problems worse.[11]

Many disadvantages of using some script languages are caused by design flaws within the language syntax or implementation, and are not necessarily imposed by the use of a text-based command-line; there are a number of shells which use other shell programming languages or even full-fledged languages like Scsh (which uses Scheme).


Shell scripting on other operating systems

Interoperability software such as Cygwin, the MKS Toolkit, Interix (which is available in the Microsoft Windows Services for UNIX), Hamilton C shell, UWIN (AT&T Unix for Windows) and others allow Unix shell programs to be run on machines running Windows NT and its successors, with some loss of functionality on the MS-DOS-Windows 95 branch, as well as earlier MKS Toolkit versions for OS/2. At least three DCL implementations for Windows type operating systems—in addition to XLNT, a multiple-use scripting language package which is used with the command shell, Windows Script Host and CGI programming—are available for these systems as well. Mac OS X and subsequent are Unix-like as well.[12]

In addition to the aforementioned tools, some POSIX and OS/2 functionality can be used with the corresponding environmental subsystems of the Windows NT operating system series up to Windows 2000 as well. A third, 16-bit subsystem often called the MS-DOS subsystem uses the Command.com provided with these operating systems to run the aforementioned MS-DOS batch files.[13]

The console alternatives 4DOS, 4OS2, FreeDOS, Peter Norton's NDOS and 4NT / Take Command which add functionality to the Windows NT-style cmd.exe, MS-DOS/Windows 95 batch files (run by Command.com), OS/2's cmd.exe, and 4NT respectively are similar to the shells that they enhance and are more integrated with the Windows Script Host, which comes with three pre-installed engines, VBScript, JScript, and VBA and to which numerous third-party engines can be added, with Rexx, Perl, Python, Ruby, and Tcl having pre-defined functions in 4NT and related programs. PC DOS is quite similar to MS-DOS, whilst DR DOS is more different. Earlier versions of Windows NT are able to run contemporary versions of 4OS2 by the OS/2 subsystem.

Scripting languages are, by definition, able to be extended; for example, a MS-DOS/Windows 95/98 and Windows NT type systems allows for shell/batch programs to call tools like KixTart, QBasic, various BASIC, Rexx, Perl, and Python implementations, the Windows Script Host and its installed engines. On Unix and other POSIX-compliant systems, awk and sed are used to extend the string and numeric processing ability of shell scripts. Tcl, Perl, Rexx, and Python have graphics toolkits and can be used to code functions and procedures for shell scripts which pose a speed bottleneck (C, Fortran, assembly language &c are much faster still) and to add functionality not available in the shell language such as sockets and other connectivity functions, heavy-duty text processing, working with numbers if the calling script does not have those abilities, self-writing and self-modifying code, techniques like recursion, direct memory access, various types of sorting and more, which are difficult or impossible in the main script, and so on. Visual Basic for Applications and VBScript can be used to control and communicate with such things as spreadsheets, databases, scriptable programs of all types, telecommunications software, development tools, graphics tools and other software which can be accessed through the Component Object Model.


See also

-   Glue code
-   Interpreter directive
-   Shebang symbol (#!)
-   Unix shells
-   Windows PowerShell
-   Windows Script Host


References


External links

-   _An Introduction To Shell Programming_ by Greg Goebel
-   _UNIX / Linux shell scripting tutorial_ by Steve Parker
-   _Shell Scripting Primer_ (Apple)
-   _What to watch out for when writing portable shell scripts_ by Peter Seebach
-   Free Unix Shell scripting books
-   Beginners/BashScripting, Ubuntu Linux

Category:Scripting languages

[1] {{ citation | last = Kernighan | first = Brian W. | author-link = Brian Kernighan | last2 = Pike | first2 = Rob | author2-link = Rob Pike | title = The UNIX Programming Environment | publisher = Prentice Hall, Inc. | year = 1984 | chapter = 3. Using the Shell | page = 94 | quote = The shell is actually a programming language: it has variables, loops, decision-making, and so on. | isbn = 0-13-937699-2 }}

[2] Unix Shells By Example, pp 7-10,

[3] Programming Perl, 5th Edition, preface

[4]

[5]

[6]

[7]

[8]

[9]

[10]

[11]

[12] MSDN

[13] Windows NT 4 Workstation Resource Kit