BASH is a Unix shell and command language written by Brian Fox for the GNU Project as a free software replacement for the Bourne shell.[1][2] First released in 1989,[3] it has been used widely as the default login shell for most Linux distributions and Apple's macOS Mojave and earlier versions. A version is also available for Windows 10.[4] It is also the default user shell in Solaris 11. [5]

Bash is a command processor that typically runs in a text window where the user types commands that cause actions. Bash can also read and execute commands from a file, called a shell script. Like all Unix shells, it supports filename globbing (wildcard matching), piping, here documents, command substitution, variables, and control structures for condition-testing and iteration. The keywords, syntax, dynamically scoped variables and other basic features of the language are all copied from sh. Other features, e.g., history, are copied from csh and ksh. Bash is a POSIX-compliant shell, but with a number of extensions.

The shell's name is an acronym for _Bourne-again shell_, a pun on the name of the Bourne shell that it replaces[6] and on the common term "born again".[7][8]

A security hole in Bash dating from version 1.03 (August 1989),[9] dubbed Shellshock, was discovered in early September 2014 and quickly led to a range of attacks across the Internet.[10][11][12] Patches to fix the bugs were made available soon after the bugs were identified.

In June 2019, Apple announced that the forthcoming macOS Catalina (10.15) would adopt Zsh as the default shell, replacing Bash.[13][14]


History

Brian Fox began coding Bash on January 10, 1988[15] after Richard Stallman became dissatisfied with the lack of progress being made by a prior developer.[16] Stallman and the Free Software Foundation (FSF) considered a free shell that could run existing shell scripts so strategic to a completely free system built from BSD and GNU code that this was one of the few projects they funded themselves, with Fox undertaking the work as an employee of FSF.[17][18] Fox released Bash as a beta, version .99, on June 8, 1989[19] and remained the primary maintainer until sometime between mid-1992[20] and mid-1994,[21] when he was laid off from FSF[22] and his responsibility was transitioned to another early contributor, Chet Ramey.[23][24][25]

Since then, Bash has become by far the most popular shell among users of Linux, becoming the default interactive shell on that operating system's various distributions (although Almquist shell may be the default scripting shell) and on Apple's macOS.[26][27][28] Bash has also been ported to Microsoft Windows and distributed with Cygwin and MinGW, to DOS by the DJGPP project, to Novell NetWare and to Android via various terminal emulation applications.

In September 2014, Stéphane Chazelas, a Unix/Linux specialist,[29] discovered a security bug in the program. The bug, first disclosed on September 24, was named Shellshock and assigned the numbers CVE-2014-6271, CVE-2014-6277[30] and CVE-2014-7169. The bug was regarded as severe, since CGI scripts using Bash could be vulnerable, enabling arbitrary code execution. The bug was related to how Bash passes function definitions to subshells through environment variables.[31]


Features

The Bash command syntax is a superset of the Bourne shell command syntax. Bash supports brace expansion, command line completion, basic debugging[32] and exception handling (using trap) among other features. Bash can execute the vast majority of Bourne shell scripts without modification, with the exception of Bourne shell scripts stumbling into fringe syntax behavior interpreted differently in Bash or attempting to run a system command matching a newer Bash builtin, etc. Bash command syntax includes ideas drawn from the Korn shell (ksh) and the C shell (csh) such as command line editing, command history, the directory stack, the $RANDOM and $PPID variables, and POSIX command substitution syntax $(…).

When a user presses the tab key within an interactive command-shell, Bash automatically uses command line completion, since beta version 2.04[33], to match partly typed program names, filenames and variable names. The Bash command-line completion system is very flexible and customizable, and is often packaged with functions that complete arguments and filenames for specific programs and tasks.

Bash's syntax has many extensions lacking in the Bourne shell. Bash can perform integer calculations ("arithmetic evaluation") without spawning external processes. It uses the ((…)) command and the $((…)) variable syntax for this purpose. Its syntax simplifies I/O redirection. For example, it can redirect standard output (stdout) and standard error (stderr) at the same time using the &> operator. This is simpler to type than the Bourne shell equivalent 'command > file 2>&1'. Bash supports process substitution using the <(command) and >(command)syntax, which substitutes the output of (or input to) a command where a filename is normally used. (This is implemented through _/proc/fd/_ unnamed pipes on systems that support that, or via temporary named pipes where necessary).

When using the 'function' keyword, Bash function declarations are not compatible with Bourne/Korn/POSIX scripts (the Korn shell has the same problem when using 'function'), but Bash accepts the same function declaration syntax as the Bourne and Korn shells, and is POSIX-conformant. Because of these and other differences, Bash shell scripts are rarely runnable under the Bourne or Korn shell interpreters unless deliberately written with that compatibility in mind, which is becoming less common as Linux becomes more widespread. But in POSIX mode, Bash conforms with POSIX more closely.[34]

Bash supports here documents. Since version 2.05b Bash can redirect standard input (stdin) from a "here string" using the <<< operator.

Bash 3.0 supports in-process regular expression matching using a syntax reminiscent of Perl.[35][36]

In February 2009[37], Bash 4.0 introduced support for associative arrays.[38][39] Associative arrays allow a fake support for multi-dimensional (indexed) arrays, in a similar way to AWK. Bash 4.x has not been integrated in newer version of MacOS due to license restrictions.[40]. Associative array example:

    $ declare -A aa        # declare an associative array 'aa' faking a bi-dimensional indexed array
    $ i=1; j=2             # initialize some indices
    $ aa[$i,$j]=5          # associate value "5" to key "$i,$j" (i.e. "1,2")
    $ echo ${aa[$i,$j]}    # print the stored value at key "$i,$j"
    5

[41]

Brace expansion

Brace expansion, also called alternation, is a feature copied from the C shell. It generates a set of alternative combinations. Generated results need not exist as files. The results of each expanded string are not sorted and left to right order is preserved:

    $ echo a{p,c,d,b}e
    ape ace ade abe
    $ echo {a,b,c}{d,e,f}
    ad ae af bd be bf cd ce cf

Users should not use brace expansions in portable shell scripts, because the Bourne shell does not produce the same output.

    $ # A traditional shell does not produce the same output
    $ /bin/sh -c 'echo a{p,c,d,b}e'
    a{p,c,d,b}e

When brace expansion is combined with wildcards, the braces are expanded first, and then the resulting wildcards are substituted normally. Hence, a listing of JPEG and PNG images in the current directory could be obtained using:

    ls *.{jpg,jpeg,png}    # expands to *.jpg *.jpeg *.png - after which,
                           # the wildcards are processed
    echo *.{png,jp{e,}g}   # echo just show the expansions -
                           # and braces in braces are possible.

In addition to alternation, brace expansion can be used for sequential ranges between two integers or characters separated by double dots. Newer versions of Bash allow a third integer to specify the increment.

    $ echo {1..10}
    1 2 3 4 5 6 7 8 9 10
    $ echo file{1..4}.txt
    file1.txt file2.txt file3.txt file4.txt
    $ echo {a..e}
    a b c d e
    $ echo {1..10..3}
    1 4 7 10
    $ echo {a..j..3}
    a d g j

When brace expansion is combined with variable expansion the variable expansion is performed AFTER the brace expansion, which in some cases may necessitate the use of the eval built-in, thus:

    $ start=1; end=10
    $ echo {$start..$end}  # fails to expand due to the evaluation order
    {1..10}
    $ eval echo {$start..$end} # variable expansion occurs then resulting string is evaluated
    1 2 3 4 5 6 7 8 9 10

Startup scripts

When Bash starts, it executes the commands in a variety of dot files. Though similar to Bash shell script commands, which have execute permission enabled and an interpreter directive like #!/bin/bash, the initialization files used by Bash require neither.

Execution order of startup files

When started as an interactive login shell

Bash reads and executes /etc/profile (if it exists). (Often this file calls /etc/bash.bashrc.)

After reading that file, it looks for ~/.bash_profile, ~/.bash_login, and ~/.profile _in that order_, and reads and executes the first one that exists and is readable.

When a login shell exits

Bash reads and executes ~/.bash_logout (if it exists).

When started as an interactive shell (but not a login shell)

Bash reads and executes /etc/bash.bashrc and then ~/.bashrc (if it exists). This may be inhibited by using the --norc option. The --rcfile file option forces Bash to read and execute commands from file instead of ~/.bashrc.

Comparison with the Bourne shell and csh startup sequences

Elements of Bash derive from the Bourne shell and csh. These allow limited startup file sharing with the Bourne shell and provide some startup features familiar to csh users.

Setting inheritable environment variables

The Bourne shell uses the ~/.profile at login to set environment variables that subprocesses then inherit. Bash can use the ~/.profile in a compatible way, by executing it explicitly from the Bash-specific ~/.bash_profile or ~/.bash_login with the line below. Bash-specific syntax can be kept out of the ~/.profile to keep the latter compatible with the Bourne shell.

    . ~/.profile

Aliases and functions

These two facilities, aliases from _csh_ and the more general functions that largely supersede them from Bourne shell, were not typically inheritable from the login shell, and had to be redefined in each subshell spawned from the login shell. Although there is an ENV environment variable that could be applied to the problem, both _csh_ and Bash support per-subshell startup files that address it directly. In Bash, the ~/.bashrc is called for interactive subshells. If user-defined functions from the ~/.bashrc are desired in the login shell as well, the ~/.bash_login can include the line below after any setting up of environment variables:

    . ~/.bashrc

Commands performed only at login and logout

The _csh_ supports a ~/.login file for purposes of tasks performed only during initial login, such as displaying system load, disk status, whether email has come in, logging the login time, etc. The Bourne shell can emulate this in the ~/.profile, but doesn't predefine a file name. To achieve similar semantics to the csh model, the ~/.bash_profile can contain the line below, after the environment setup and function setup:

    . ~/.bash_login

Likewise, the _csh_ has a ~/.logout file run only when the login shell exits. The Bash equivalent is ~/.bash_logout, and requires no special setup. In the Bourne shell, the trap built-in can be used to achieve a similar effect.

Legacy-compatible Bash startup example

The skeleton ~/.bash_profile below is compatible with the Bourne shell and gives semantics similar to csh for the ~/.bashrc and ~/.bash_login. The [ -r _filename_ ] are tests to see if the _filename_ exists and is readable, simply skipping the part after the && if it's not.

    [ -r ~/.profile ] && . ~/.profile             # set up environment, once, Bourne-sh syntax only
    if [ -n "$PS1" ] ; then                       # are we interactive?
       [ -r ~/.bashrc     ] && . ~/.bashrc        # tty/prompt/function setup for interactive shells
       [ -r ~/.bash_login ] && . ~/.bash_login    # any at-login tasks for login shell only
    fi                                            # End of "if" block

Operating system issues in Bash startup

Some versions of Unix and Linux contain Bash system startup scripts, generally under the /etc directories. Bash calls these as part of its standard initialization, but other startup files can read them in a different order than the documented Bash startup sequence. The default content of the root user's files may also have issues, as well as the skeleton files the system provides to new user accounts upon setup. The startup scripts that launch the X window system may also do surprising things with the user's Bash startup scripts in an attempt to set up user-environment variables before launching the window manager. These issues can often be addressed using a ~/.xsession or ~/.xprofile file to read the ~/.profile — which provides the environment variables that Bash shell windows spawned from the window manager need, such as xterm or Gnome Terminal.

Portability

Invoking Bash with the --posix option or stating set -o posix in a script causes Bash to conform very closely to the POSIX 1003.2 standard.[42] Bash shell scripts intended for portability should at least take into account the Bourne shell it intends to replace. Bash has certain features that the traditional Bourne shell lacks. They include:[43]

-   Certain extended invocation options
-   Command substitution using $( ) notation (this feature is part of the POSIX 1003.2 standard though)
-   Brace expansion
-   Certain array operations, and associative arrays
-   The double brackets extended test construct
-   The double-parentheses arithmetic-evaluation construct
-   Certain string-manipulation operations
-   Process substitution
-   A Regular Expression matching operator
-   Bash-specific builtins
-   Coprocesses

A "bashism" is a portion of bash code that does not run properly on other Unix shells.[44]

Keyboard shortcuts

Bash uses readline to provide keyboard shortcuts for command line editing using the default (Emacs) key bindings. Vi-bindings can be enabled by running set -o vi.[45]

Process management

The Bash shell has two modes of execution for commands: batch, and concurrent mode.

To execute commands in batch (i.e., in sequence) they must be separated by the character ";", or on separate lines:

    command1; command2

in this example, when command1 is finished, command2 is executed.

You can also have a background execution of command1 using (symbol &) at the end of your execution command, and process will be executed in background returning immediately control to your shell and allowing you to keep executing commands.

    command1 &

Or to have a concurrent execution of two command1 and command2, they must be executed in the Bash shell in the following way:

    command1 & command2

In this case command1 is executed in the background _&_ symbol, returning immediately control to the shell that executes command2 in the foreground.

A process can be stopped and returned control to bash by typing while the process is running in the foreground[46].

A list of all processes, both in the background and stopped, can be achieved by running jobs:

    $ jobs
    [1]-  Running                  command1 &
    [2]+  Stopped                  command2

In the output, the number in brackets refers to the job id. The plus sign signifies the default process for bg and fg. The text "Running" and "Stopped" refer to the Process state. The last string is the command that started the process.

The state of a process can be changed using various commands. The fg command brings a process to the foreground, while the bg sets a stopped process running in the background. bg and fg can take a job id as their first argument, to specify the process to act on. Without one, they use the default process, identified by a plus sign in the output of jobs. The kill command can be used to end a process prematurely, by sending it a signal. The job id must be specified after a percent sign:

    kill -s SIGKILL %1 or kill -9 %1

Conditional execution

Bash supplies "conditional execution" command separators that make execution of a command contingent on the exit code set by a precedent command. For example:

    cd "$SOMEWHERE" && ./do_something || echo "An error occurred" >&2

Where _./do_something_ is only executed if the _cd_ (change directory) command was "successful" (returned an exit status of zero) and the _echo_ command would only be executed if either the _cd_ or the _./do_something_ command return an "error" (non-zero exit status).

For all commands the exit status is stored in the special variable $?. Bash also supports and forms of conditional command evaluation.

Bug reporting

An external command called _bashbug_ reports Bash shell bugs. When the command is invoked, it brings up the user's default editor with a form to fill in. The form is mailed to the Bash maintainers (or optionally to other email addresses).[47][48]


See also

-   Comparison of command shells


References


External links

-   -   2008 interview with GNU Bash's maintainer, Chet Ramey
-   MPI-Bash: A MPI-enabled plugin for the Bourne-Again Shell by Scott Pakin

Category:1989 software Category:Cross-platform free software Category:Domain-specific programming languages Category:Free software programmed in C Category:GNU Project software Category:Scripting languages Category:Text-oriented programming languages Category:Unix shells

[1]

[2]

[3]

[4]

[5]

[6] C Programming by Al Stevens, Dr. Dobb's Journal, July 1, 2001

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

[20]

[21]

[22]

[23]

[24]

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

[36] The syntax matches that shown on the regex(7) man page.

[37]

[38]

[39] "The shell provides associative array variables, with the appropriate support to create, delete, assign values to, and expand them." http://tiswww.case.edu/php/chet/bash/NEWS

[40]

[41]

[42]

[43]

[44]

[45]

[46]

[47] bashbug(1), die.net

[48] "Linux / Unix Command: bashbug", apple.com