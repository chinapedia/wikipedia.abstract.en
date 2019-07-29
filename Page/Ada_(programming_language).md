ADA is a structured, statically typed, imperative, and object-oriented high-level computer programming language, extended from Pascal and other languages. It has built-in language support for design-by-contract, extremely strong typing, explicit concurrency, tasks, synchronous message passing, protected objects, and non-determinism. Ada improves code safety and maintainability by using the compiler to find errors in favor of runtime errors. Ada is an international standard; the current version (known as Ada 2012[1]) is defined by ISO/IEC 8652:2012.[2]

Ada was originally designed by a team led by French computer scientist Jean Ichbiah of CII Honeywell Bull under contract to the United States Department of Defense (DoD) from 1977 to 1983 to supersede over 450 programming languages used by the DoD at that time.[3] Ada was named after Ada Lovelace (1815–1852), who has been credited as the first computer programmer.[4]


Features

Ada was originally targeted at embedded and real-time systems. The Ada 95 revision, designed by S. Tucker Taft of Intermetrics between 1992 and 1995, improved support for systems, numerical, financial, and object-oriented programming (OOP).

Features of Ada include: strong typing, modularity mechanisms (packages), run-time checking, parallel processing (tasks, synchronous message passing, protected objects, and nondeterministic select statements), exception handling, and generics. Ada 95 added support for object-oriented programming, including dynamic dispatch.

The syntax of Ada minimizes choices of ways to perform basic operations, and prefers English keywords (such as "or else" and "and then") to symbols (such as "||" and "&&"). Ada uses the basic arithmetical operators "+", "-", "*", and "/", but avoids using other symbols. Code blocks are delimited by words such as "declare", "begin", and "end", where the "end" (in most cases) is followed by the identifier of the block it closes (e.g., _if ... end if_, _loop ... end loop_). In the case of conditional blocks this avoids a _dangling else_ that could pair with the wrong nested if-expression in other languages like C or Java.

Ada is designed for development of very large software systems. Ada packages can be compiled separately. Ada package specifications (the package interface) can also be compiled separately without the implementation to check for consistency. This makes it possible to detect problems early during the design phase, before implementation starts.

A large number of compile-time checks are supported to help avoid bugs that would not be detectable until run-time in some other languages or would require explicit checks to be added to the source code. For example, the syntax requires explicitly named closing of blocks to prevent errors due to mismatched end tokens. The adherence to strong typing allows detection of many common software errors (wrong parameters, range violations, invalid references, mismatched types, etc.) either during compile-time, or otherwise during run-time. As concurrency is part of the language specification, the compiler can in some cases detect potential deadlocks. Compilers also commonly check for misspelled identifiers, visibility of packages, redundant declarations, etc. and can provide warnings and useful suggestions on how to fix the error.

Ada also supports run-time checks to protect against access to unallocated memory, buffer overflow errors, range violations, off-by-one errors, array access errors, and other detectable bugs. These checks can be disabled in the interest of runtime efficiency, but can often be compiled efficiently. It also includes facilities to help program verification. For these reasons, Ada is widely used in critical systems, where any anomaly might lead to very serious consequences, e.g., accidental death, injury or severe financial loss. Examples of systems where Ada is used include avionics, air traffic control, railways, banking, military and space technology.[5][6]

Ada's dynamic memory management is high-level and type-safe. Ada does not have generic or untyped pointers; nor does it implicitly declare any pointer type. Instead, all dynamic memory allocation and deallocation must take place through explicitly declared _access types_. Each access type has an associated _storage pool_ that handles the low-level details of memory management; the programmer can either use the default storage pool or define new ones (this is particularly relevant for Non-Uniform Memory Access). It is even possible to declare several different access types that all designate the same type but use different storage pools. Also, the language provides for _accessibility checks_, both at compile time and at run time, that ensures that an _access value_ cannot outlive the type of the object it points to.

Though the semantics of the language allow automatic garbage collection of inaccessible objects, most implementations do not support it by default, as it would cause unpredictable behaviour in real-time systems. Ada does support a limited form of region-based memory management; also, creative use of storage pools can provide for a limited form of automatic garbage collection, since destroying a storage pool also destroys all the objects in the pool.

A double-dash ("--"), resembling an em dash, denotes comment text. Comments stop at end of line, to prevent unclosed comments from accidentally voiding whole sections of source code. Disabling a whole block of code now requires the prefixing of each line (or column) individually with "--". While clearly denoting disabled code with a column of repeated "--" down the page this renders the experimental dis/re-enablement of large blocks a more drawn out process.

The semicolon (";") is a statement terminator, and the null or no-operation statement is null;. A single ; without a statement to terminate is not allowed.

Unlike most ISO standards, the Ada language definition (known as the _Ada Reference Manual_ or _ARM_, or sometimes the _Language Reference Manual_ or _LRM_) is free content. Thus, it is a common reference for Ada programmers and not just programmers implementing Ada compilers. Apart from the reference manual, there is also an extensive rationale document which explains the language design and the use of various language constructs. This document is also widely used by programmers. When the language was revised, a new rationale document was written.

One notable free software tool that is used by many Ada programmers to aid them in writing Ada source code is the GNAT Programming Studio.


History

In the 1970s, the US Department of Defense (DoD) was concerned by the number of different programming languages being used for its embedded computer system projects, many of which were obsolete or hardware-dependent, and none of which supported safe modular programming. In 1975, a working group, the High Order Language Working Group (HOLWG), was formed with the intent to reduce this number by finding or creating a programming language generally suitable for the department's and the UK Ministry of Defence requirements. After many iterations beginning with an original Straw man proposal the eventual programming language was named Ada. The total number of high-level programming languages in use for such projects fell from over 450 in 1983 to 37 by 1996.

The HOLWG working group crafted the Steelman language requirements, a series of documents stating the requirements they felt a programming language should satisfy. Many existing languages were formally reviewed, but the team concluded in 1977 that no existing language met the specifications.

Requests for proposals for a new programming language were issued and four contractors were hired to develop their proposals under the names of Red (Intermetrics led by Benjamin Brosgol), Green (CII Honeywell Bull, led by Jean Ichbiah), Blue (SofTech, led by John Goodenough)[7] and Yellow (SRI International, led by Jay Spitzen). In April 1978, after public scrutiny, the Red and Green proposals passed to the next phase. In May 1979, the Green proposal, designed by Jean Ichbiah at CII Honeywell Bull, was chosen and given the name Ada—after Augusta Ada, Countess of Lovelace. This proposal was influenced by the programming language LIS that Ichbiah and his group had developed in the 1970s. The preliminary Ada reference manual was published in ACM SIGPLAN Notices in June 1979. The Military Standard reference manual was approved on December 10, 1980 (Ada Lovelace's birthday), and given the number MIL-STD-1815 in honor of Ada Lovelace's birth year. In 1981, C. A. R. Hoare took advantage of his Turing Award speech to criticize Ada for being overly complex and hence unreliable,[8] but subsequently seemed to recant in the foreword he wrote for an Ada textbook.[9]

Ada attracted much attention from the programming community as a whole during its early days. Its backers and others predicted that it might become a dominant language for general purpose programming and not just defense-related work.[10] Ichbiah publicly stated that within ten years, only two programming languages would remain, Ada and Lisp.[11] Early Ada compilers struggled to implement the large, complex language, and both compile-time and run-time performance tended to be slow and tools primitive.[12] Compiler vendors expended most of their efforts in passing the massive, language-conformance-testing, government-required "ACVC" validation suite that was required in another novel feature of the Ada language effort.[13] The Jargon File, a dictionary of computer hacker slang originating in 1975-1983, notes in an entry on Ada that "it is precisely what one might expect given that kind of endorsement by fiat; designed by committee...difficult to use, and overall a disastrous, multi-billion-dollar boondoggle...Ada Lovelace...would almost certainly blanch at the use her name has been latterly put to; the kindest thing that has been said about it is that there is probably a good small language screaming to get out from inside its vast, {elephantine} bulk."

The first validated Ada implementation was the NYU Ada/Ed translator,[14] certified on April 11, 1983. NYU Ada/Ed is implemented in the high-level set language SETL.[15] A number of commercial companies began offering Ada compilers and associated development tools, including Alsys, TeleSoft, DDC-I, Advanced Computer Techniques, Tartan Laboratories, TLD Systems, Verdix, and others.[16]

Ada_Lovelace_1838.jpg, Countess of Lovelace.]] In 1991, the US Department of Defense began to require the use of Ada (the _Ada mandate_) for all software,[17] though exceptions to this rule were often granted.[18] The Department of Defense Ada mandate was effectively removed in 1997, as the DoD began to embrace COTS technology.[19] Similar requirements existed in other NATO countries: Ada was required for NATO systems involving command and control and other functions, and Ada was the mandated or preferred language for defense-related applications in countries such as Sweden, Germany, and Canada.[20]

By the late 1980s and early 1990s, Ada compilers had improved in performance, but there were still barriers to full exploitation of Ada's abilities, including a tasking model that was different from what most real-time programmers were used to.[21]

Because of Ada's safety-critical support features, it is now used not only for military applications, but also in commercial projects where a software bug can have severe consequences, e.g., avionics and air traffic control, commercial rockets such as the Ariane 4 and 5, satellites and other space systems, railway transport and banking.[22] For example, the Airplane Information Management System, the fly-by-wire system software in the Boeing 777, was written in Ada.[23][24] Developed by Honeywell Air Transport Systems in collaboration with consultants from DDC-I, it became arguably the best-known of any Ada project, civilian or military.[25][26] The Canadian Automated Air Traffic System was written in 1 million lines of Ada (SLOC count). It featured advanced distributed processing, a distributed Ada database, and object-oriented design. Ada is also used in other air traffic systems, e.g., the UK's next-generation Interim Future Area Control Tools Support (iFACTS) air traffic control system is designed and implemented using SPARK Ada.[27] It is also used in the French TVM in-cab signalling system on the TGV high-speed rail system, and the metro suburban trains in Paris, London, Hong Kong and New York City.[28][29]


Standardization

The language became an ANSI standard in 1983 (ANSI/MIL-STD 1815A), and after translation in French and without any further changes in English became an ISO standard in 1987 (ISO-8652:1987). This version of the language is commonly known as Ada 83, from the date of its adoption by ANSI, but is sometimes referred to also as Ada 87, from the date of its adoption by ISO.

Ada 95, the joint ISO/ANSI standard (ISO-8652:1995) was published in February 1995, making Ada 95 the first ISO standard object-oriented programming language. To help with the standard revision and future acceptance, the US Air Force funded the development of the GNAT Compiler. Presently, the GNAT Compiler is part of the GNU Compiler Collection.

Work has continued on improving and updating the technical content of the Ada programming language. A Technical Corrigendum to Ada 95 was published in October 2001, and a major Amendment, ISO/IEC 8652:1995/Amd 1:2007 was published on March 9, 2007. At the Ada-Europe 2012 conference in Stockholm, the Ada Resource Association (ARA) and Ada-Europe announced the completion of the design of the latest version of the Ada programming language and the submission of the reference manual to the International Organization for Standardization (ISO) for approval. ISO/IEC 8652:2012 was published in December 2012.[30]

Other related standards include ISO 8651-3:1988 _Information processing systems—Computer graphics—Graphical Kernel System (GKS) language bindings—Part 3: Ada_.


Language constructs

Ada is an ALGOL-like programming language featuring control structures with reserved words such as _if_, _then_, _else_, _while_, _for_, and so on. However, Ada also has many data structuring facilities and other abstractions which were not included in the original ALGOL 60, such as type definitions, records, pointers, enumerations. Such constructs were in part inherited from or inspired by Pascal.

"Hello, world!" in Ada

A common example of a language's syntax is the Hello world program: (hello.adb)

    with Ada.Text_IO; use Ada.Text_IO;
    procedure Hello is
    begin
      Put_Line ("Hello, world!");
    end Hello;

This program can be compiled by using the freely available open source compiler GNAT, by executing

    gnatmake hello.adb

Data types

Ada's type system is not based on a set of predefined primitive types but allows users to declare their own types. This declaration in turn is not based on the internal representation of the type but on describing the goal which should be achieved. This allows the compiler to determine a suitable memory size for the type, and to check for violations of the type definition at compile time and run time (i.e., range violations, buffer overruns, type consistency, etc.). Ada supports numerical types defined by a range, modulo types, aggregate types (records and arrays), and enumeration types. Access types define a reference to an instance of a specified type; untyped pointers are not permitted. Special types provided by the language are task types and protected types.

For example, a date might be represented as:

    type Day_type   is range    1 ..   31;
    type Month_type is range    1 ..   12;
    type Year_type  is range 1800 .. 2100;
    type Hours is mod 24;
    type Weekday is (Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday);

    type Date is
       record
         Day   : Day_type;
         Month : Month_type;
         Year  : Year_type;
       end record;

Types can be refined by declaring subtypes:

    subtype Working_Hours is Hours range 0 .. 12;            -- at most 12 Hours to work a day
    subtype Working_Day is Weekday range Monday .. Friday;   -- Days to work

    Work_Load: constant array(Working_Day) of Working_Hours  -- implicit type declaration
       := (Friday => 6, Monday => 4, others => 10);           -- lookup table for working hours with initialization

Types can have modifiers such as _limited, abstract, private_ etc. Private types can only be accessed and limited types can only be modified or copied within the scope of the package that defines them.[31] Ada 95 adds additional features for object-oriented extension of types.

Control structures

Ada is a structured programming language, meaning that the flow of control is structured into standard statements. All standard constructs and deep-level early exit are supported, so the use of the also supported "go to" commands is seldom needed.

    -- while a is not equal to b, loop.
    while a /= b loop
      Ada.Text_IO.Put_Line ("Waiting");
    end loop;

    if a > b then
      Ada.Text_IO.Put_Line ("Condition met");
    else
      Ada.Text_IO.Put_Line ("Condition not met");
    end if;

    for i in 1 .. 10 loop
      Ada.Text_IO.Put ("Iteration: ");
      Ada.Text_IO.Put (i);
      Ada.Text_IO.Put_Line;
    end loop;

    loop
      a := a + 1;
      exit when a = 10;
    end loop;

    case i is
      when 0 => Ada.Text_IO.Put ("zero");
      when 1 => Ada.Text_IO.Put ("one");
      when 2 => Ada.Text_IO.Put ("two");
      -- case statements have to cover all possible cases:
      when others => Ada.Text_IO.Put ("none of the above");
    end case;

    for aWeekday in Weekday'Range loop               -- loop over an enumeration
       Put_Line ( Weekday'Image(aWeekday) );         -- output string representation of an enumeration
       if aWeekday in Working_Day then               -- check of a subtype of an enumeration
          Put_Line ( " to work for " &
                   Working_Hours'Image (Work_Load(aWeekday)) ); -- access into a lookup table
       end if;
    end loop;

Packages, procedures and functions

Among the parts of an Ada program are packages, procedures and functions.

Example: Package specification (example.ads)

    package Example is
         type Number is range 1 .. 11;
         procedure Print_and_Increment (j: in out Number);
    end Example;

Package body (example.adb)

    with Ada.Text_IO;
    package body Example is

      i : Number := Number'First;

      procedure Print_and_Increment (j: in out Number) is

        function Next (k: in Number) return Number is
        begin
          return k + 1;
        end Next;

      begin
        Ada.Text_IO.Put_Line ( "The total is: " & Number'Image(j) );
        j := Next (j);
      end Print_and_Increment;

    -- package initialization executed when the package is elaborated
    begin
      while i < Number'Last loop
        Print_and_Increment (i);
      end loop;
    end Example;

This program can be compiled, e.g., by using the freely available open-source compiler GNAT, by executing

    gnatmake -z example.adb

Packages, procedures and functions can nest to any depth, and each can also be the logical outermost block.

Each package, procedure or function can have its own declarations of constants, types, variables, and other procedures, functions and packages, which can be declared in any order.

Concurrency

Ada has language support for task-based concurrency. The fundamental concurrent unit in Ada is a _task_, which is a built-in limited type. Tasks are specified in two parts – the task declaration defines the task interface (similar to a type declaration), the task body specifies the implementation of the task. Depending on the implementation, Ada tasks are either mapped to operating system threads or processes, or are scheduled internally by the Ada runtime.

Tasks can have entries for synchronisation (a form of synchronous message passing). Task entries are declared in the task specification. Each task entry can have one or more _accept_ statements within the task body. If the control flow of the task reaches an accept statement, the task is blocked until the corresponding entry is called by another task (similarly, a calling task is blocked until the called task reaches the corresponding accept statement). Task entries can have parameters similar to procedures, allowing tasks to synchronously exchange data. In conjunction with _select_ statements it is possible to define _guards_ on accept statements (similar to Dijkstra's guarded commands).

Ada also offers _protected objects_ for mutual exclusion. Protected objects are a monitor-like construct, but use guards instead of conditional variables for signaling (similar to conditional critical regions). Protected objects combine the data encapsulation and safe mutual exclusion from monitors, and entry guards from conditional critical regions. The main advantage over classical monitors is that conditional variables are not required for signaling, avoiding potential deadlocks due to incorrect locking semantics. Like tasks, the protected object is a built-in limited type, and it also has a declaration part and a body.

A protected object consists of encapsulated private data (which can only be accessed from within the protected object), and procedures, functions and entries which are guaranteed to be mutually exclusive (with the only exception of functions, which are required to be side effect free and can therefore run concurrently with other functions). A task calling a protected object is blocked if another task is currently executing inside the same protected object, and released when this other task leaves the protected object. Blocked tasks are queued on the protected object ordered by time of arrival.

Protected object entries are similar to procedures, but additionally have _guards_. If a guard evaluates to false, a calling task is blocked and added to the queue of that entry; now another task can be admitted to the protected object, as no task is currently executing inside the protected object. Guards are re-evaluated whenever a task leaves the protected object, as this is the only time when the evaluation of guards can have changed.

Calls to entries can be _requeued_ to other entries with the same signature. A task that is requeued is blocked and added to the queue of the target entry; this means that the protected object is released and allows admission of another task.

The _select_ statement in Ada can be used to implement non-blocking entry calls and accepts, non-deterministic selection of entries (also with guards), time-outs and aborts.

The following example illustrates some concepts of concurrent programming in Ada.

    with Ada.Text_IO; use Ada.Text_IO;

    procedure Traffic is

       type Airplane_ID is range 1..10;             -- 10 airplanes

       task type Airplane (ID: Airplane_ID);        -- task representing airplanes, with ID as initialisation parameter
       type Airplane_Access is access Airplane;     -- reference type to Airplane

       protected type Runway is                     -- the shared runway (protected to allow concurrent access)
          entry Assign_Aircraft (ID: Airplane_ID);  -- all entries are guaranteed mutually exclusive
          entry Cleared_Runway (ID: Airplane_ID);
          entry Wait_For_Clear;
       private
          Clear: Boolean := True;                   -- protected private data - generally more than just a flag...
       end Runway;
       type Runway_Access is access all Runway;

       -- the air traffic controller task takes requests for takeoff and landing
       task type Controller (My_Runway: Runway_Access) is
          -- task entries for synchronous message passing
          entry Request_Takeoff (ID: in Airplane_ID; Takeoff: out Runway_Access);
          entry Request_Approach(ID: in Airplane_ID; Approach: out Runway_Access);
       end Controller;

       --  allocation of instances
       Runway1    : aliased Runway;              -- instantiate a runway
       Controller1: Controller (Runway1'Access); -- and a controller to manage it

       ------ the implementations of the above types ------
       protected body Runway is
          entry Assign_Aircraft (ID: Airplane_ID)
     when Clear is   -- the entry guard - calling tasks are blocked until the condition is true
          begin
           Clear := False;
           Put_Line (Airplane_ID'Image (ID) & " on runway ");
          end;

          entry Cleared_Runway (ID: Airplane_ID)
     when not Clear is
          begin
             Clear := True;
             Put_Line (Airplane_ID'Image (ID) & " cleared runway ");
          end;

          entry Wait_For_Clear
     when Clear is
          begin
             null;      -- no need to do anything here - a task can only enter if "Clear" is true
          end;
       end Runway;

       task body Controller is
       begin
          loop
             My_Runway.Wait_For_Clear;   -- wait until runway is available (blocking call)
             select                      -- wait for two types of requests (whichever is runnable first)
                when Request_Approach'count = 0 =>  -- guard statement - only accept if there are no tasks queuing on Request_Approach
                 accept Request_Takeoff (ID: in Airplane_ID; Takeoff: out Runway_Access)
                 do                                 -- start of synchronized part
                   My_Runway.Assign_Aircraft (ID);  -- reserve runway (potentially blocking call if protected object busy or entry guard false)
                   Takeoff := My_Runway;            -- assign "out" parameter value to tell airplane which runway
                 end Request_Takeoff;               -- end of the synchronised part
             or
                accept Request_Approach (ID: in Airplane_ID; Approach: out Runway_Access) do
                   My_Runway.Assign_Aircraft (ID);
                   Approach := My_Runway;
                end Request_Approach;
             or                          -- terminate if no tasks left who could call
                terminate;
             end select;
          end loop;
       end;

       task body Airplane is
          Rwy : Runway_Access;
       begin
          Controller1.Request_Takeoff (ID, Rwy); -- This call blocks until Controller task accepts and completes the accept block
          Put_Line (Airplane_ID'Image (ID) & "  taking off...");
          delay 2.0;
          Rwy.Cleared_Runway (ID);               -- call will not block as "Clear" in Rwy is now false and no other tasks should be inside protected object
          delay 5.0; -- fly around a bit...
          loop
             select   -- try to request a runway
                Controller1.Request_Approach (ID, Rwy); -- this is a blocking call - will run on controller reaching accept block and return on completion
                exit; -- if call returned we're clear for landing - leave select block and proceed...
             or
                delay 3.0;  -- timeout - if no answer in 3 seconds, do something else (everything in following block)
                Put_Line (Airplane_ID'Image (ID) & "   in holding pattern");  -- simply print a message
             end select;
          end loop;
          delay 4.0;  -- do landing approach...
          Put_Line (Airplane_ID'Image (ID) & "            touched down!");
          Rwy.Cleared_Runway (ID);  -- notify runway that we're done here.
       end;

       New_Airplane: Airplane_Access;

    begin
       for I in Airplane_ID'Range loop  -- create a few airplane tasks
          New_Airplane := new Airplane (I); -- will start running directly after creation
          delay 4.0;
       end loop;
    end Traffic;

Pragmas

A pragma is a compiler directive that conveys information to the compiler to allow specific manipulation of compiled output.[32] Certain pragmas are built into the language,[33] while others are implementation-specific.

Examples of common usage of compiler pragmas would be to disable certain features, such as run-time type checking or array subscript boundary checking, or to instruct the compiler to insert object code instead of a function call (as C/C++ does with inline functions).


See also

-   APSE – a specification for a programming environment to support software development in Ada
-   Ravenscar profile – a subset of the Ada tasking features designed for safety-critical hard real-time computing
-   SPARK (programming language) – a programming language consisting of a highly restricted subset of Ada, annotated with meta information describing desired component behavior and individual runtime requirements


References

International standards

-   ISO/IEC 8652: Information technology—Programming languages—Ada
-   ISO/IEC 15291: Information technology—Programming languages—Ada Semantic Interface Specification (ASIS)
-   ISO/IEC 18009: Information technology—Programming languages—Ada: Conformity assessment of a language processor (ACATS)
-   IEEE Standard 1003.5b-1996, the POSIX Ada binding
-   Ada Language Mapping Specification, the CORBA IDL to Ada mapping

Rationale

(These documents have been published in various forms including print.)

-   -   -

Books

-   -   Jan Skansholm: _Ada 95 From the Beginning_, Addison-Wesley,
-   Geoff Gilpin: _Ada: A Guided Tour and Tutorial_, Prentice hall,
-   John Barnes: _Programming in Ada 2005_, Addison-Wesley, 2006,
-   John Barnes: _Programming in Ada plus Language Reference Manual_, Addison-Wesley,
-   John Barnes: _Programming in Ada 95_, Addison-Wesley,
-   John Barnes: _High Integrity Ada: The SPARK Approach_, Addison-Wesley, 1997,
-   John Barnes: _High Integrity Software: The SPARK Approach to Safety and Security_, Addison-Wesley, 2003,
-   John Beidler: _Data Structures and Algorithms: An Object-Oriented Approach Using Ada 95_, Springer-Verlag, 1997,
-   Dean W. Gonzalez: _Ada Programmer's Handbook_, Benjamin-Cummings Publishing Company, 1991,
-   M. Ben-Ari: _Ada for Software Engineers_, John Wiley & Sons, 1998,
-   Norman Cohen: _Ada as a Second Language_, McGraw-Hill Science/Engineering/Math,
-   Alan Burns, Andy Wellings: _Real-Time Systems and Programming Languages. Ada 95, Real-Time Java and Real-Time POSIX._, Addison-Wesley,
-   Alan Burns, Andy Wellings: _Concurrency in Ada_, Cambridge University Press, 1995,
-   Colin Atkinson: _Object-Oriented Reuse, Concurrency and Distribution: An Ada-Based Approach_, Addison-Wesley,
-   Grady Booch, Doug Bryan: _Software Engineering with Ada_, Addison-Wesley,
-   Do-While Jones: _Ada in Action: With Practical Programming Examples_, John Wiley & Sons Inc,
-   Daniel Stubbs, Neil W. Webre: _Data Structures with Abstract Data Types and Ada_, Brooks Cole,
-   Pascal Ledru: _Distributed Programming in Ada with Protected Objects_, Dissertation.com,
-   Fintan Culwin: _Ada, a Developmental Approach_, Prentice Hall,
-   John English, Fintan Culwin: _Ada 95 the Craft of Object Oriented Programming_, Prentice Hall,
-   David R. Musser, Alexander Stepanov: _The Ada Generic Library: Linear List Processing Packages_, Springer-Verlag,
-   Michael B. Feldman: _Software Construction and Data Structures with Ada 95_, Addison-Wesley,
-   Simon Johnston: _Ada 95 for C and C++ Programmers_, Addison-Wesley,
-   "_Ada: Problem Solving and Program Design._" Feldman, Michael B. & Koffman, Elliot B., . Addison-Wesley Publishing Company; 1992 & 1993. 795 pages.
-   Michael B. Feldman, Elliot B. Koffman: _Ada 95_, Addison-Wesley,
-   Nell B. Dale, Chip Weems, John McCormick: _Programming and Problem Solving with Ada 95_, Jones & Bartlett Publishers,
-   Nell B. Dale, John McCormick: _Ada Plus Data Structures: An Object-Oriented Approach, 2nd edition_, Jones & Bartlett Publishers,
-   Bruce C. Krell: _Developing With Ada: Life-Cycle Methods_, Bantam Dell Pub Group,
-   Judy Bishop: _Distributed Ada: Developments and Experiences_, Cambridge University Press,
-   Bo Sanden: _Software Systems Construction With Examples in Ada_, Prentice Hall,
-   Bruce Hillam: _Introduction to Abstract Data Types Using Ada_, Prentice Hall,
-   David Rudd: _Introduction to Software Design and Development With Ada_, Brooks Cole,
-   Ian C. Pyle: _Developing Safety Systems: A Guide Using Ada_, Prentice Hall,
-   Louis Baker: _Artificial Intelligence With Ada_, McGraw-Hill,
-   Alan Burns, Andy Wellings: _HRT-HOOD: A Structured Design Method for Hard Real-Time Ada Systems_, North-Holland,
-   Walter Savitch, Charles Peterson: _Ada: An Introduction to the Art and Science of Programming_, Benjamin-Cummings Publishing Company,
-   Mark Allen Weiss: _Data Structures and Algorithm Analysis in Ada_, Benjamin-Cummings Publishing Company,
-   Henry Ledgard: _ADA: An Introduction_ (Second Edition), Springer-Verlag,
-   Dines Bjørner; Ole N. Oest (eds.): _Towards a Formal Description of Ada_, London: Springer-Verlag, 1980.

Archives

-   Ada Programming Language Materials, 1981–1990. Charles Babbage Institute, University of Minnesota. Includes literature on software products designed for the Ada language; U.S. government publications, including Ada 9X project reports, technical reports, working papers, newsletters; and user group information.


External links

-

Category:Programming languages Category:.NET programming languages Ada_(programming_language) Category:Avionics programming languages Category:Embedded systems Category:High Integrity Programming Language Category:Multi-paradigm programming languages Category:Programming language standards Category:Programming languages created in 1980 Category:Programming languages with an ISO standard Category:Statically typed programming languages Category:Systems programming languages Category:1980 software Category:High-level programming languages

[1]

[2]

[3]

[4]

[5]

[6]

[7]

[8] C.A.R. Hoare, "The Emperor's Old Clothes." Communications of the ACM, 1981.

[9] D.A. Watt, B.A. Wichmann and W. Findlay, "Ada: Language and Methodology." Prentice-Hall, 1987.

[10]

[11] J-P. Rosen, "The Ada Paradox(es)", _Ada Letters_, ACM SIGAda, Vol. 24, No. 2, August 2009, pp. 28-35.

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