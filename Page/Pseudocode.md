PSEUDOCODE is an informal high-level description of the operating principle of a computer program or other algorithm.

It uses the structural conventions of a normal programming language, but is intended for human reading rather than machine reading. Pseudocode typically omits details that are essential for machine understanding of the algorithm, such as variable declarations, system-specific code and some subroutines. The programming language is augmented with natural language description details, where convenient, or with compact mathematical notation. The purpose of using pseudocode is that it is easier for people to understand than conventional programming language code, and that it is an efficient and environment-independent description of the key principles of an algorithm. It is commonly used in textbooks and scientific publications that are documenting various algorithms, and also in planning of computer program development, for sketching out the structure of the program before the actual coding takes place.

No standard for pseudocode syntax exists, as a program in pseudocode is not an executable program. Pseudocode resembles, but should not be confused with, skeleton programs which can be compiled without errors. Flowcharts, drakon-charts and Unified Modeling Language (UML) charts can be thought of as a graphical alternative to pseudocode, but are more spacious on paper. Languages such as HAGGIS bridge the gap between pseudocode and code written in programming languages.


Application

Textbooks and scientific publications related to computer science and numerical computation often use pseudocode in description of algorithms, so that all programmers can understand them, even if they do not all know the same programming languages. In textbooks, there is usually an accompanying introduction explaining the particular conventions in use. The level of detail of the pseudocode may in some cases approach that of formalized general-purpose languages.

A programmer who needs to implement a specific algorithm, especially an unfamiliar one, will often start with a pseudocode description, and then "translate" that description into the target programming language and modify it to interact correctly with the rest of the program. Programmers may also start a project by sketching out the code in pseudocode on paper before writing it in its actual language, as a top-down structuring approach, with a process of steps to be followed as a refinement.


Syntax

As the name suggests, pseudocode generally does not actually obey the syntax rules of any particular language; there is no systematic standard form, although any particular writer will generally borrow style and syntax; for example, control structures from some conventional programming language. Popular syntax sources include Fortran, Pascal, BASIC, C, C++, Java, Lisp, and ALGOL. Variable declarations are typically omitted. Function calls and blocks of code, such as code contained within a loop, are often replaced by a one-line natural language sentence.

Depending on the writer, pseudocode may therefore vary widely in style, from a near-exact imitation of a real programming language at one extreme, to a description approaching formatted prose at the other.

This is an example of pseudocode (for the mathematical game fizz buzz):

+-------------------------------------+--------------------------------------+----------------------------------------+---------------------------------------------+
| Fortran style pseudo code           | Pascal style pseudo code             | C style pseudo code:                   | Structured Basic style pseudo code          |
|                                     |                                      |                                        |                                             |
|     program fizzbuzz                |     procedure fizzbuzz               |     void function fizzbuzz {           |     Sub fizzbuzz()                          |
|       Do i = 1 to 100               |       For i := 1 to 100 do           |       for (i = 1; i <= 100; i++) {     |       For i = 1 to 100                      |
|         set print_number to true    |         set print_number to true;    |         set print_number to true;      |         print_number = True                 |
|         If i is divisible by 3      |         If i is divisible by 3 then  |         If i is divisible by 3 {       |         If i is divisible by 3 Then         |
|           print "Fizz"              |           print "Fizz";              |           print "Fizz";                |           Print "Fizz"                      |
|           set print_number to false |           set print_number to false; |           set print_number to false; } |           print_number = False              |
|         If i is divisible by 5      |         If i is divisible by 5 then  |         If i is divisible by 5 {       |         End If                              |
|           print "Buzz"              |           print "Buzz";              |           print "Buzz";                |         If i is divisible by 5 Then         |
|           set print_number to false |           set print_number to false; |           set print_number to false; } |           Print "Buzz"                      |
|         If print_number, print i    |         If print_number, print i;    |         If print_number, print i;      |           print_number = False              |
|         print a newline             |         print a newline;             |         print a newline;               |         End If                              |
|       end do                        |       end                            |       }                                |         If print_number = True Then print i |
|                                     |                                      |     }                                  |         Print a newline                     |
|                                     |                                      |                                        |       Next i                                |
|                                     |                                      |                                        |     End Sub                                 |
+-------------------------------------+--------------------------------------+----------------------------------------+---------------------------------------------+


Mathematical style pseudocode

In numerical computation, pseudocode often consists of mathematical notation, typically from set and matrix theory, mixed with the control structures of a conventional programming language, and perhaps also natural language descriptions. This is a compact and often informal notation that can be understood by a wide range of mathematically trained people, and is frequently used as a way to describe mathematical algorithms. For example, the sum operator (capital-sigma notation) or the product operator (capital-pi notation) may represent a for-loop and a selection structure in one expression:

Normally non-ASCII typesetting is used for the mathematical equations, for example by means of markup languages, such as TeX or MathML, or proprietary formula editors.

Mathematical style pseudocode is sometimes referred to as pidgin code, for example _pidgin ALGOL_ (the origin of the concept), _pidgin Fortran_, _pidgin BASIC_, _pidgin Pascal_, _pidgin C_, and _pidgin Lisp_.

Common mathematical symbols

  Type of operation   Symbol             Example
  ------------------- ------------------ ---------------------------
  Assignment          ← or :=            _c_ ← 2π_r_, _c_ := 2π_r_
  Comparison          =, ≠, <, >, ≤, ≥
  Arithmetic          +, −, ×, /, mod
  Floor/ceiling       ⌊, ⌋, ⌈, ⌉         _a_ ← ⌊_b_⌋ + ⌈_c_⌉
  Logical             AND, OR
  Sums, products      Σ Π                _h_ ← Σ_(_a_∈_A_) 1/_a_

Example

Here follows a longer example of mathematical-style pseudocode, for the Ford–Fulkerson algorithm:

algorithm ford-fulkerson is
    input: Graph _G_ with flow capacity _c_, 
           source node _s_, 
           sink node _t_
    output: Flow _f_ such that _f_ is maximal from _s_ to _t_
    _(Note that f_((u,v)) is the flow from node u to node v, and c_((u,v)) is the flow capacity from node u to node v)_
    for each edge (_u_, _v_) in _G__(_E_) do
        _f__((_u_, _v_)) ← 0
        _f__((_v_, _u_)) ← 0
    while there exists a path _p_ from _s_ to _t_ in the residual network _G__(_f_) do
        let _c__(_f_) be the flow capacity of the residual network _G__(_f_)
        _c__(_f_)(_p_) ← min{_c__(_f_)(_u_, _v_) | (_u_, _v_) in _p_}
        for each edge (_u_, _v_) in _p_ do
            _f__((_u_, _v_)) ←  _f__((_u_, _v_)) + _c__(_f_)(_p_)
            _f__((_v_, _u_)) ← −_f__((_u_, _v_))
    return _f_


Machine compilation of pseudocode style languages

Natural language grammar in programming languages

Various attempts to bring elements of natural language grammar into computer programming have produced programming languages such as HyperTalk, Lingo, AppleScript, SQL, Inform and to some extent Python. In these languages, parentheses and other special characters are replaced by prepositions, resulting in quite talkative code. These languages are typically dynamically typed, meaning that variable declarations and other boilerplate code can be omitted. Such languages may make it easier for a person without knowledge about the language to understand the code and perhaps also to learn the language. However, the similarity to natural language is usually more cosmetic than genuine. The syntax rules may be just as strict and formal as in conventional programming, and do not necessarily make development of the programs easier.

Mathematical programming languages

An alternative to using mathematical pseudocode (involving set theory notation or matrix operations) for documentation of algorithms is to use a formal mathematical programming language that is a mix of non-ASCII mathematical notation and program control structures. Then the code can be parsed and interpreted by a machine.

Several formal specification languages include set theory notation using special characters. Examples are:

-   Z notation
-   Vienna Development Method Specification Language (VDM-SL).

Some array programming languages include vectorized expressions and matrix operations as non-ASCII formulas, mixed with conventional control structures. Examples are:

-   A programming language (APL), and its dialects APLX and A+.
-   MathCAD.


See also

-   Concept programming
-   Drakon-chart
-   Flowchart
-   Literate programming
-   Program Design Language
-   Short Code
-   Structured English


References

-


External links

-   A pseudocode standard
-   Collected Algorithms of the ACM
-   Pseudocode Guidelines, PDF file.
-   Pseudocode generation tool from a model tree learn how to generate pseudocode in a second
-   Pseudocode interpreter PSEINT for Android-OS

Category:Articles with example pseudocode Category:Source code Category:Algorithm description languages