ERLANG ( ) is a general-purpose, concurrent, functional programming language, and a garbage-collected runtime system.

The term Erlang is used interchangeably with ERLANG/OTP, or Open Telecom Platform (OTP), which consists of the Erlang runtime system, several ready-to-use components (OTP) mainly written in Erlang, and a set of design principles for Erlang programs.[1]

The Erlang runtime system is known for its designs that are well suited for systems with these traits:

-   Distributed
-   Fault-tolerant
-   Soft real-time
-   Highly available, non-stop applications
-   Hot swapping, where code can be changed without stopping a system.[2]

The Erlang programming language is known for these traits:[3]

-   Immutable data
-   Pattern matching
-   Functional programming

The sequential subset of the Erlang language supports eager evaluation, single assignment, and dynamic typing.

It was originally proprietary software within Ericsson, developed by Joe Armstrong, Robert Virding, and Mike Williams in 1986,[4] but was released as free and open-source software in 1998.[5][6] Erlang/OTP is supported and maintained by the Open Telecom Platform (OTP) product unit at Ericsson.


History

The name _Erlang_, attributed to Bjarne Däcker, has been presumed by those working on the telephony switches (for whom the language was designed) to be a reference to Danish mathematician and engineer Agner Krarup Erlang and a syllabic abbreviation of "Ericsson Language".[7][8]

Erlang was designed with the aim of improving the development of telephony applications. The initial version of Erlang was implemented in Prolog and was influenced by the programming language PLEX used in earlier Ericsson exchanges. By 1988 Erlang had proven that it was suitable for prototyping telephone exchanges, but the Prolog interpreter was far too slow. One group within Ericsson estimated that it would need to be 40 times faster to be suitable for production use. In 1992, work began on the BEAM virtual machine (VM) which compiles Erlang to C using a mix of natively compiled code and threaded code to strike a balance between performance and disk space.[9] According to Armstrong, the language went from lab product to real applications following the collapse of the next-generation AXE telephone exchange named _AXE-N_ in 1995. As a result, Erlang was chosen for the next asynchronous transfer mode (ATM) exchange _AXD_.[10]

In 1998 Ericsson announced the AXD301 switch, containing over a million lines of Erlang and reported to achieve a high availability of nine "9"s.[11] Shortly thereafter, Ericsson Radio Systems banned the in-house use of Erlang for new products, citing a preference for non-proprietary languages. The ban caused Armstrong and others to leave Ericsson.[12] The implementation was open-sourced at the end of the year.[13] Ericsson eventually lifted the ban; it re-hired Armstrong in 2004.[14]

In 2006, native symmetric multiprocessing support was added to the runtime system and VM.[15]

Erlang Worldview

The Erlang view of the world, as Joe Armstrong, co-inventor of Erlang, summarized in his PhD thesis:[16]

-   Everything is a process.
-   Processes are strongly isolated.
-   Process creation and destruction is a lightweight operation.
-   Message passing is the only way for processes to interact.
-   Processes have unique names.
-   If you know the name of a process you can send it a message.
-   Processes share no resources.
-   Error handling is non-local.
-   Processes do what they are supposed to do or fail.

Joe Armstrong remarked in an interview with Rackspace in 2013: “If Java is 'write once, run anywhere', then Erlang is 'write once, run forever'.”[17]

Usage

In 2014, Ericsson reported Erlang was being used in its support nodes, and in GPRS, 3G and LTE mobile networks worldwide and also by Nortel and T-Mobile.[18]

As Tim Bray, director of Web Technologies at Sun Microsystems, expressed in his keynote at O'Reilly Open Source Convention (OSCON) in July 2008:


Functional programming examples

An Erlang function that uses recursion to count to ten:[19]

    -module(count_to_ten).
    -export([count_to_ten/0]).

    count_to_ten() -> do_count(10).

    do_count(0) -> 0;
    do_count(N) -> do_count(N - 1).

A factorial algorithm implemented in Erlang:

    -module(fact). % This is the file 'fact.erl', the module and the filename must match
    -export([fac/1]). % This exports the function 'fac' of arity 1 (1 parameter, no type, no name)

    fac(0) -> 1; % If 0, then return 1, otherwise (note the semicolon ; meaning 'else')
    fac(N) when N > 0, is_integer(N) -> N * fac(N-1).
    % Recursively determine, then return the result
    % (note the period . meaning 'endif' or 'function end')
    %% This function will crash if anything other than a nonnegative integer is given.
    %% It illustrates the "Let it crash" philosophy of Erlang.

A Fibonacci number algorithm implemented in Erlang (This is only to show the Erlang syntax. This algorithm is rather slow.):[20]

    -module(fibonacci).    % This is the file 'fibonacci.erl', the module and the filename must match
    -export([fib/1]). % This exports the function 'fib' of arity 1

    fib(0) -> 0; % If 0, then return 0, otherwise (note the semicolon ; meaning 'else')
    fib(1) -> 1; % If 1, then return 1, otherwise
    fib(N) when N > 1 -> fib(N - 1) + fib(N - 2).

Quicksort in Erlang, using list comprehension:[21]

    %% qsort:qsort(List)
    %% Sort a list of items
    -module(qsort).     % This is the file 'qsort.erl'
    -export([qsort/1]). % A function 'qsort' with 1 parameter is exported (no type, no name)

    qsort([]) -> []; % If the list [] is empty, return an empty list (nothing to sort)
    qsort([Pivot|Rest]) ->
        % Compose recursively a list with 'Front' for all elements that should be before 'Pivot'
        % then 'Pivot' then 'Back' for all elements that should be after 'Pivot'
        qsort([Front || Front <- Rest, Front < Pivot]) ++
        [Pivot] ++
        qsort([Back || Back <- Rest, Back >= Pivot]).

The above example recursively invokes the function qsort until nothing remains to be sorted. The expression [Front || Front <- Rest, Front < Pivot] is a list comprehension, meaning "Construct a list of elements Front such that Front is a member of Rest, and Front is less than Pivot." ++ is the list concatenation operator.

A comparison function can be used for more complicated structures for the sake of readability.

The following code would sort lists according to length:

    % This is file 'listsort.erl' (the compiler is made this way)
    -module(listsort).
    % Export 'by_length' with 1 parameter (don't care about the type and name)
    -export([by_length/1]).

    by_length(Lists) -> % Use 'qsort/2' and provides an anonymous function as a parameter
       qsort(Lists, fun(A,B) -> length(A) < length(B) end).

    qsort([], _)-> []; % If list is empty, return an empty list (ignore the second parameter)
    qsort([Pivot|Rest], Smaller) ->
        % Partition list with 'Smaller' elements in front of 'Pivot' and not-'Smaller' elements
        % after 'Pivot' and sort the sublists.
        qsort([X || X <- Rest, Smaller(X,Pivot)], Smaller)
        ++ [Pivot] ++
        qsort([Y || Y <- Rest, not(Smaller(Y, Pivot))], Smaller).

Here again, a Pivot is taken from the first parameter given to qsort() and the rest of Lists is named Rest. Note that the expression

    [X || X <- Rest, Smaller(X,Pivot)]

is no different in form from

    [Front || Front <- Rest, Front < Pivot]

(in the previous example) except for the use of a comparison function in the last part, saying "Construct a list of elements X such that X is a member of Rest, and Smaller is true", with Smaller being defined earlier as

    fun(A,B) -> length(A) < length(B) end

Note also that the anonymous function is named Smaller in the parameter list of the second definition of qsort so that it can be referenced by that name within that function. It is not named in the first definition of qsort, which deals with the base case of an empty list and thus has no need of this function, let alone a name for it.


Data types

Erlang has eight primitive data types:

Integers: Integers are written as sequences of decimal digits, for example, 12, 12375 and -23427 are integers. Integer arithmetic is exact and only limited by available memory on the machine. (This is called arbitrary-precision arithmetic.)
Atoms: Atoms are used within a program to denote distinguished values. They are written as strings of consecutive alphanumeric characters, the first character being lowercase. Atoms can contain any character if they are enclosed within single quotes and an escape convention exists which allows any character to be used within an atom. Atoms are never garbage collected and should be used with caution, especially if using dynamic atom generation.
Floats: Floating point numbers use the IEEE 754 64-bit representation.
References: References are globally unique symbols whose only property is that they can be compared for equality. They are created by evaluating the Erlang primitive make_ref().
Binaries: A binary is a sequence of bytes. Binaries provide a space-efficient way of storing binary data. Erlang primitives exist for composing and decomposing binaries and for efficient input/output of binaries.
Pids: Pid is short for _process identifier_a Pid is created by the Erlang primitive spawn(...) Pids are references to Erlang processes.
Ports: Ports are used to communicate with the external world. Ports are created with the built-in function open_port. Messages can be sent to and received from ports, but these messages must obey the so-called "port protocol."
Funs: Funs are function closures. Funs are created by expressions of the form: fun(...) -> ... end.

And three compound data types:

Tuples: Tuples are containers for a fixed number of Erlang data types. The syntax {D1,D2,...,Dn} denotes a tuple whose arguments are D1, D2, ... Dn. The arguments can be primitive data types or compound data types. Any element of a tuple can be accessed in constant time.
Lists: Lists are containers for a variable number of Erlang data types. The syntax [Dh|Dt] denotes a list whose first element is Dh, and whose remaining elements are the list Dt. The syntax [] denotes an empty list. The syntax [D1,D2,..,Dn] is short for [D1|[D2|..|[Dn|[]]]]. The first element of a list can be accessed in constant time. The first element of a list is called the _head_ of the list. The remainder of a list when its head has been removed is called the _tail_ of the list.
Maps: Maps contain a variable number of key-value associations. The syntax is#{Key1=>Value1,...,KeyN=>ValueN}.

Two forms of syntactic sugar are provided:

Strings: Strings are written as doubly quoted lists of characters. This is syntactic sugar for a list of the integer Unicode code points for the characters in the string. Thus, for example, the string "cat" is shorthand for [99,97,116].[22]
Records: Records provide a convenient way for associating a tag with each of the elements in a tuple. This allows one to refer to an element of a tuple by name and not by position. A pre-compiler takes the record definition and replaces it with the appropriate tuple reference.

Erlang has no method to define classes, although there are external libraries available.[23]


Concurrency and distribution orientation

Erlang's main strength is support for concurrency. It has a small but powerful set of primitives to create processes and communicate among them. Erlang is conceptually similar to the language occam, though it recasts the ideas of communicating sequential processes (CSP) in a functional framework and uses asynchronous message passing.[24] Processes are the primary means to structure an Erlang application. They are neither operating system processes nor threads, but lightweight processes that are scheduled by BEAM. Like operating system processes (but unlike operating system threads), they share no state with each other. The estimated minimal overhead for each is 300 words.[25] Thus, many processes can be created without degrading performance. In 2005, a benchmark with 20 million processes was successfully performed with 64-bit Erlang on a machine with 16 GB random-access memory (RAM; total 800 bytes/process).[26] Erlang has supported symmetric multiprocessing since release R11B of May 2006.

While threads need external library support in most languages, Erlang provides language-level features to create and manage processes with the goal of simplifying concurrent programming. Though all concurrency is explicit in Erlang, processes communicate using message passing instead of shared variables, which removes the need for explicit locks (a locking scheme is still used internally by the VM).[27]

Inter-process communication works via a shared-nothing asynchronous message passing system: every process has a "mailbox", a queue of messages that have been sent by other processes and not yet consumed. A process uses the receive primitive to retrieve messages that match desired patterns. A message-handling routine tests messages in turn against each pattern, until one of them matches. When the message is consumed and removed from the mailbox the process resumes execution. A message may comprise any Erlang structure, including primitives (integers, floats, characters, atoms), tuples, lists, and functions.

The code example below shows the built-in support for distributed processes:

     % Create a process and invoke the function web:start_server(Port, MaxConnections)
     ServerProcess = spawn(web, start_server, [Port, MaxConnections]),

     % Create a remote process and invoke the function
     % web:start_server(Port, MaxConnections) on machine RemoteNode
     RemoteProcess = spawn(RemoteNode, web, start_server, [Port, MaxConnections]),

     % Send a message to ServerProcess (asynchronously). The message consists of a tuple
     % with the atom "pause" and the number "10".
     ServerProcess ! {pause, 10},

     % Receive messages sent to this process
     receive
             a_message -> do_something;
             {data, DataContent} -> handle(DataContent);
             {hello, Text} -> io:format("Got hello message: ~s", [Text]);
             {goodbye, Text} -> io:format("Got goodbye message: ~s", [Text])
     end.

As the example shows, processes may be created on remote nodes, and communication with them is transparent in the sense that communication with remote processes works exactly as communication with local processes.

Concurrency supports the primary method of error-handling in Erlang. When a process crashes, it neatly exits and sends a message to the controlling process which can then take action, such as for instance starting a new process that takes over the old process's task.[28][29]


Implementation

The official reference implementation of Erlang uses BEAM.[30] BEAM is included in the official distribution of Erlang, called Erlang/OTP. BEAM executes bytecode which is converted to threaded code at load time. It also includes a native code compiler on most platforms, developed by the High Performance Erlang Project (HiPE) at Uppsala University. Since October 2001 the HiPE system is fully integrated in Ericsson's Open Source Erlang/OTP system.[31] It also supports interpreting, directly from source code via abstract syntax tree, via script as of R11B-5 release of Erlang.


Hot code loading and modules

Erlang supports language-level Dynamic Software Updating. To implement this, code is loaded and managed as "module" units; the module is a compilation unit. The system can keep two versions of a module in memory at the same time, and processes can concurrently run code from each. The versions are referred to as the "new" and the "old" version. A process will not move into the new version until it makes an external call to its module.

An example of the mechanism of hot code loading:

      %% A process whose only job is to keep a counter.
      %% First version
      -module(counter).
      -export([start/0, codeswitch/1]).

      start() -> loop(0).

      loop(Sum) ->
        receive
           {increment, Count} ->
              loop(Sum+Count);
           {counter, Pid} ->
              Pid ! {counter, Sum},
              loop(Sum);
           code_switch ->
              ?MODULE:codeswitch(Sum)
              % Force the use of 'codeswitch/1' from the latest MODULE version
        end.

      codeswitch(Sum) -> loop(Sum).

For the second version, we add the possibility to reset the count to zero.

      %% Second version
      -module(counter).
      -export([start/0, codeswitch/1]).

      start() -> loop(0).

      loop(Sum) ->
        receive
           {increment, Count} ->
              loop(Sum+Count);
           reset ->
              loop(0);
           {counter, Pid} ->
              Pid ! {counter, Sum},
              loop(Sum);
           code_switch ->
              ?MODULE:codeswitch(Sum)
        end.

      codeswitch(Sum) -> loop(Sum).

Only when receiving a message consisting of the atom code_switch will the loop execute an external call to codeswitch/1 (?MODULE is a preprocessor macro for the current module). If there is a new version of the _counter_ module in memory, then its codeswitch/1 function will be called. The practice of having a specific entry-point into a new version allows the programmer to transform state to what is needed in the newer version. In the example, the state is kept as an integer.

In practice, systems are built up using design principles from the Open Telecom Platform, which leads to more code upgradable designs. Successful hot code loading is exacting. Code must be written with care to make use of Erlang's facilities.


Distribution

In 1998, Ericsson released Erlang as free and open-source software to ensure its independence from a single vendor and to increase awareness of the language. Erlang, together with libraries and the real-time distributed database Mnesia, forms the OTP collection of libraries. Ericsson and a few other companies support Erlang commercially.

Since the open source release, Erlang has been used by several firms worldwide, including Nortel and T-Mobile.[32] Although Erlang was designed to fill a niche and has remained an obscure language for most of its existence, its popularity is growing due to demand for concurrent services.[33][34] Erlang has found some use in fielding massively multiplayer online role-playing game (MMORPG) servers.[35]


See also

-   Elixir: a functional, concurrent, general-purpose programming language that runs on BEAM
-   Lisp Flavored Erlang (LFE): a Lisp-based programming language that runs on BEAM
-   Mix (build tool)
-   Phoenix (web framework)


References


Further reading

-   -   -   Early history of Erlang by Bjarne Däcker
-   -   -   -   -   -   -   -


External links

-   -

Category:Programming languages Category:Concurrent programming languages Category:Declarative programming languages Category:Dynamically typed programming languages Category:Ericsson Erlang_(programming_language) Category:Formerly proprietary software Category:Functional languages Category:Pattern matching programming languages Category:Programming languages created in 1986 Category:Register-based virtual machines Category:Dynamic programming languages Category:Cross-platform free software

[1]

[2]

[3] Hitchhiker’s Tour of the BEAM – Robert Virding http://www.erlang-factory.com/upload/presentations/708/HitchhikersTouroftheBEAM.pdf

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

[16] http://erlang.org/download/armstrong_thesis_2003.pdf

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