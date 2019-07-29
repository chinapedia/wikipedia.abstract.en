OCCAM is a programming language which is concurrent and builds on the communicating sequential processes (CSP) process algebra,[1] and shares many of its features. It is named after philosopher William of Ockham for whom Occam's razor is named.

occam is an imperative procedural language (such as Pascal). It was developed by David May and others at Inmos (trademark INMOS), advised by Tony Hoare, as the native programming language for their transputer microprocessors, but implementations for other platforms are available. The most widely known version is occam 2; its programming manual was written by Steven Ericsson-Zenith and others at Inmos.


Overview

In the following examples indentation and formatting are critical for parsing the code: expressions are terminated by the end of the line, lists of expressions need to be on the same level of indentation. This feature, named the off-side rule, is also found in other languages such as Haskell and Python.

Communication between processes work through named _channels_. One process outputs data to a channel via ! while another one inputs data with ?. Input and output cannot proceed until the other end is ready to accept or offer data. (In the _not proceeding_ case it is often said that the process _blocks_ on the channel. However, the program will neither spin nor poll; thus terms like _wait_, _hang_ or _yield_ may also convey the behaviour; also in the context that it will not _block_ other independent processes from running.) Examples (c is a variable):

 keyboard ? c

 screen ! c

SEQ introduces a list of expressions that are evaluated sequentially. This is not implicit as it is in most other programming languages. Example:

 SEQ
   x := x + 1
   y := x * x

PAR begins a list of expressions that may be evaluated concurrently. Example:

 PAR
   p()
   q()

ALT specifies a list of _guarded_ commands. The _guards_ are a combination of a boolean condition and an input expression (both optional). Each guard for which the condition is true and the input channel is ready is successful. One of the successful alternatives is selected for execution. Example:

 ALT
   count1 < 100 & c1 ? data
     SEQ
       count1 := count1 + 1
       merged ! data
   count2 < 100 & c2 ? data
     SEQ
       count2 := count2 + 1
       merged ! data
   status ? request
     SEQ
       out ! count1
       out ! count2

This will read data from channels c1 or c2 (whichever is ready) and pass it into a merged channel. If countN reaches 100, reads from the corresponding channel will be disabled. A request on the status channel is answered by outputting the counts to out.


Language revisions

occam 1

_occam 1_[2] (released 1983) was a preliminary version of the language which borrowed from David May's work on EPL and Tony Hoare's CSP. This supported only the VAR data type, which was an integral type corresponding to the native word length of the target architecture, and arrays of only one dimension.

occam 2

_occam 2_[3] is an extension produced by Inmos Ltd in 1987 that adds floating-point support, functions, multi-dimensional arrays and more data types such as varying sizes of integers (INT16, INT32) and bytes.

With this revision, occam became a language able to express useful programs, whereas occam 1 was more suited to examining algorithms and exploring the new language (however, the occam 1 compiler was written in occam 1,[4] so there is an existence proof that reasonably sized, useful programs could be written in occam 1, despite its limits).

occam 2.1

_occam 2.1_[5] was the last of the series of occam language developments contributed by Inmos. Defined in 1994, it was influenced by an earlier proposal for an OCCAM 3 language (also referred to as "occam91" during its early development) created by Geoff Barrett at Inmos in the early 1990s. A revised Reference Manual describing occam 3 was distributed for community comment,[6] but the language was never fully implemented in a compiler.

occam 2.1 introduced several new features to occam 2, including:

-   Named data types (DATA TYPE x IS y)
-   Named records
-   Packed records
-   Relaxation of some of the type conversion rules
-   New operators (e.g. BYTESIN)
-   Channel retyping and channel arrays
-   Ability to return fixed-length array from function.

For a full list of the changes see Appendix P of the Inmos occam 2.1 Reference Manual.

occam-π

_occam-π_[7] is the common name for the occam variant implemented by later versions of the Kent Retargetable occam Compiler (KRoC). The addition of the symbol _π_ (pi) to the occam name is an allusion to KRoC occam including several ideas inspired by the π-calculus. It contains several significant extensions to the occam 2.1 compiler, for example:

-   Nested protocols
-   Run-time process creation
-   Mobile channels, data, and processes
-   Recursion
-   Protocol inheritance
-   Array constructors
-   Extended rendezvous


See also

-   The XC Programming Language, which is based on occam but with C-style syntax.
-   Concurrent programming languages
-   List of concurrent and parallel programming languages


References


Further reading

-   1

-   2

-   3

-   -   -   Egorov, A., Technical University – Sofia, (1983-2011) ЗАПИСКИ ПО КОМПЮТЪРНИ АРХИТЕКТУРИ


External links

-   Information, compilers, editors and utilities at the WoTUG occam pages
-   Compilers, documentation, examples, projects and utilities at the Internet Parallel Computing Archive (no longer maintained)
-   Occam books on Transputer.net
-   The occam-pi language.
-   Tock occam compiler – (translator from occam to C from Kent) a Haskell-based compiler for occam and related languages.

Category:Concurrent programming languages Category:Procedural programming languages Category:Programming languages created in 1983

[1]  Inmos document 72 occ 45 03

[2]

[3]

[4]

[5]

[6]

[7]