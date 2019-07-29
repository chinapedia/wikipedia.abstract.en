The MOO PROGRAMMING LANGUAGE is a relatively simple programming language used to support the MOO Server. It is dynamically typed and uses a prototype-based object-oriented system, with syntax roughly derived from the Algol school of programming languages.


History

Stephen White authored the first MOO Server and language in 1990 using C. Over the course of the year, Pavel Curtis joined the project, releasing the first version of the LambdaMOO Server. LambdaMOO is run and maintained entirely on a volunteer basis, and now has its own SourceForge project. Although the last packaged release was in 2000, development is still active in the project's CVS.[1]

White describes MOO as "a mishmash of c-like operators and ada-like control structures, combined with prototype-style single-inheritance."


Features

The language has explicit exception handling control flow, as well as traditional looping constructs. A verb and property hierarchy provides default values to prototype objects, with over-riding values lower in the hierarchy. This hierarchy of objects is maintained through delegation to an object's "parent" property, resulting in a form of single inheritance. Special security-related attributes of objects, verbs, and properties include ownership, and read, write and execute flags. MOO programs are byte-code compiled, with implicit decompilation when editing, providing a canonical form of programs.

MOO programs are orthogonally persistent through periodic checkpoints. Objects are identified by a unique integer identifier. Unused program data is eliminated through automatic garbage collection (implemented by reference counting). However, MOO objects themselves are not garbage collected and are manually deleted by their owners or superusers (aka wizards) through a process called 'recycling.'

MOO is explicitly a multi-user system and programs (verbs) are contributed by any number of connected users. A distinction is made between the 'driver' (runtime) and 'core' (programs written in the MOO language.) The vast majority of the functionality of a running MOO is handled 'in-core.'

The runtime supports multi-tasking using a retribution based time slicing method. Verbs run with exclusive access to the database, so no explicit locking is necessary to maintain synchronization. Simple TCP/IP messaging (telnet compatible) is used to communicate with client sockets, each of which is identified with a 'player' in the Virtual reality representation system.

The language supports weak references to objects by number, and to properties and verbs through strings. Built-in functions to retrieve lists of properties and verbs exist, giving the language runtime facilities for reflection. The server also contains support for wildcard verb matching, so the same code can easily be used to handle multiple commands with similar names and functions.

Available sequence types in MOO are lists and strings. Both support random access, as well as head and tail operations similar to those available in Lisp. All operations on lists and strings are non-destructive, and all non-object datatypes are immutable. Built-in functions and libraries allow lists to also be used as associative arrays and ordered and unordered sets.


Syntax

Control Structures

MOO has a very basic set of control structures, with for-in-list being the only "fancy" feature.

if ... else

    if (<expr>)
        <statements>;
    elseif (<expr>)
        <statements>;
    else
        <statements>;
    endif

for

    for <variable> in [<number>..<number>]
        <statements>;
    endfor

    for <variable> in (<list value>)
        <statements>;
    endfor

while

    while (<expression>)
        <statements>;
    endwhile

try ... except

    try
        <statements>;
    except <variable> (<error code>)
        <statements>;
    endtry


Example Programs

The classic Hello World Program can be written in MOO as:

    @program hello:run
    player:tell("Hello to the world of MOO!");
    .

A more interesting example:

     @program toy:wind
     if (this.location == player)
       if (this.wound < this.maximum)
         this.wound = this.wound + 2;
         player:tell("You wind up the ", this.name,".");
         player.location:announce(player.name, " winds up the ", this.name,".");
         if (this.wound >= this.maximum)
           player:tell("The knob comes to a stop while winding.");
         endif
       else
         player:tell("The ",this.name," is already fully wound.");
       endif
     else
       player:tell("You have to be holding the ", this.name,".");
     endif
     .

[2]


See also

-   MOO (game system)
-   LPC (programming language)
-   Pike (programming language)
-   Linden Scripting Language (LSL)


References


Further reading

-   -   -   -

Category:Algol programming language family Category:MUD programming languages Category:Prototype-based programming languages

[1] LambdaMOO server CVS sorted by date

[2] yduJ's Programming Tutorial