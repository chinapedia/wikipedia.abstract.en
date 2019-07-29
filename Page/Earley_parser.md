In computer science, the EARLEY PARSER is an algorithm for parsing strings that belong to a given context-free language, though (depending on the variant) it may suffer problems with certain nullable grammars.[1] The algorithm, named after its inventor, Jay Earley, is a chart parser that uses dynamic programming; it is mainly used for parsing in computational linguistics. It was first introduced in his dissertation[2] in 1968 (and later appeared in an abbreviated, more legible, form in a journal[3]).

Earley parsers are appealing because they can parse all context-free languages, unlike LR parsers and LL parsers, which are more typically used in compilers but which can only handle restricted classes of languages. The Earley parser executes in cubic time in the general case O(n³), where _n_ is the length of the parsed string, quadratic time for unambiguous grammars O(n²),[4] and linear time for all LR(k) grammars. It performs particularly well when the rules are written left-recursively.


Earley recogniser

The following algorithm describes the Earley recogniser. The recogniser can be easily modified to create a parse tree as it recognises, and in that way can be turned into a parser.


The algorithm

In the following descriptions, α, β, and γ represent any string of terminals/nonterminals (including the empty string), X and Y represent single nonterminals, and _a_ represents a terminal symbol.

Earley's algorithm is a top-down dynamic programming algorithm. In the following, we use Earley's dot notation: given a production X → αβ, the notation X → α • β represents a condition in which α has already been parsed and β is expected.

Input position 0 is the position prior to input. Input position _n_ is the position after accepting the _n_th token. (Informally, input positions can be thought of as locations at token boundaries.) For every input position, the parser generates a _state set_. Each state is a tuple (X → α • β, _i_), consisting of

-   the production currently being matched (X → α β)
-   our current position in that production (represented by the dot)
-   the position _i_ in the input at which the matching of this production began: the _origin position_

(Earley's original algorithm included a look-ahead in the state; later research showed this to have little practical effect on the parsing efficiency, and it has subsequently been dropped from most implementations.)

The state set at input position _k_ is called S(_k_). The parser is seeded with S(0) consisting of only the top-level rule. The parser then repeatedly executes three operations: _prediction_, _scanning_, and _completion_.

-   _Prediction_: For every state in S(_k_) of the form (X → α • Y β, _j_) (where _j_ is the origin position as above), add (Y → • γ, _k_) to S(_k_) for every production in the grammar with Y on the left-hand side (Y → γ).
-   _Scanning_: If _a_ is the next symbol in the input stream, for every state in S(_k_) of the form (X → α • _a_ β, _j_), add (X → α _a_ • β, _j_) to S(_k_+1).
-   _Completion_: For every state in S(_k_) of the form (Y → γ •, _j_), find all states in S(_j_) of the form (X → α • Y β, _i_) and add (X → α Y • β, _i_) to S(_k_).

It is important to note that duplicate states are not added to the state set, only new ones. These three operations are repeated until no new states can be added to the set. The set is generally implemented as a queue of states to process, with the operation to be performed depending on what kind of state it is.

The algorithm accepts if (X → γ •, 0) ends up in S(_n_), where (X → γ) is the top level-rule and _n_ the input length, otherwise it rejects.


Pseudocode

Adapted from Speech and Language Processing[5] by Daniel Jurafsky and James H. Martin,

    DECLARE ARRAY S;

    function INIT(words)
        S ← CREATE-ARRAY(LENGTH(words) + 1)
        for k ← from 0 to LENGTH(words) do
            S[k] ← EMPTY-ORDERED-SET

    function EARLEY-PARSE(words, grammar)
        INIT(words)
        ADD-TO-SET((γ → •S, 0), S[0])
        for k ← from 0 to LENGTH(words) do
            for each state in S[k] do  // S[k] can expand during this loop
                if not FINISHED(state) then
                    if NEXT-ELEMENT-OF(state) is a nonterminal then
                        PREDICTOR(state, k, grammar)         // non-terminal
                    else do
                        SCANNER(state, k, words)             // terminal
                else do
                    COMPLETER(state, k)
            end
        end
        return chart

    procedure PREDICTOR((A → α•Bβ, j), k, grammar)
        for each (B → γ) in GRAMMAR-RULES-FOR(B, grammar) do
            ADD-TO-SET((B → •γ, k), S[k])
        end

    procedure SCANNER((A → α•aβ, j), k, words)
        if a ⊂ PARTS-OF-SPEECH(words[k]) then
            ADD-TO-SET((A → αa•β, j), S[k+1])
        end

    procedure COMPLETER((B → γ•, x), k)
        for each (A → α•Bβ, j) in S[x] do
            ADD-TO-SET((A → αB•β, j), S[k])
        end


Example

Consider the following simple grammar for arithmetic expressions:

    <P> ::= <S>      # the start rule
    <S> ::= <S> "+" <M> | <M>
    <M> ::= <M> "*" <T> | <T>
    <T> ::= "1" | "2" | "3" | "4"

With the input:

2 + 3 * 4

This is the sequence of state sets:

  (state no.)         Production     (Origin)   Comment
  ------------------- -------------- ---------- -------------------------------
  S(0): • 2 + 3 * 4
  1                   P → • S        0          start rule
  2                   S → • S + M    0          predict from (1)
  3                   S → • M        0          predict from (1)
  4                   M → • M * T    0          predict from (3)
  5                   M → • T        0          predict from (3)
  6                   T → • number   0          predict from (5)
  S(1): 2 • + 3 * 4
  1                   T → number •   0          scan from S(0)(6)
  2                   M → T •        0          complete from (1) and S(0)(5)
  3                   M → M • * T    0          complete from (2) and S(0)(4)
  4                   S → M •        0          complete from (2) and S(0)(3)
  5                   S → S • + M    0          complete from (4) and S(0)(2)
  6                   P → S •        0          complete from (4) and S(0)(1)
  S(2): 2 + • 3 * 4
  1                   S → S + • M    0          scan from S(1)(5)
  2                   M → • M * T    2          predict from (1)
  3                   M → • T        2          predict from (1)
  4                   T → • number   2          predict from (3)
  S(3): 2 + 3 • * 4
  1                   T → number •   2          scan from S(2)(4)
  2                   M → T •        2          complete from (1) and S(2)(3)
  3                   M → M • * T    2          complete from (2) and S(2)(2)
  4                   S → S + M •    0          complete from (2) and S(2)(1)
  5                   S → S • + M    0          complete from (4) and S(0)(2)
  6                   P → S •        0          complete from (4) and S(0)(1)
  S(4): 2 + 3 * • 4
  1                   M → M * • T    2          scan from S(3)(3)
  2                   T → • number   4          predict from (1)
  S(5): 2 + 3 * 4 •
  1                   T → number •   4          scan from S(4)(2)
  2                   M → M * T •    2          complete from (1) and S(4)(1)
  3                   M → M • * T    2          complete from (2) and S(2)(2)
  4                   S → S + M •    0          complete from (2) and S(2)(1)
  5                   S → S • + M    0          complete from (4) and S(0)(2)
  6                   P → S •        0          complete from (4) and S(0)(1)


The state (P → S •, 0) represents a completed parse. This state also appears in S(3) and S(1), which are complete sentences.


Constructing the parse forest

Earley's dissertation[6] briefly describes an algorithm for constructing parse trees by adding a set of pointers from each non-terminal in an Earley item back to the items that caused it to be recognized. But Tomita noticed[7] that this does not take into account the relations between symbols, so if we consider the grammar S → SS | b and the string bbb, it only notes that each S can match one or two b's, and thus produces spurious derivations for bb and bbbb as well as the two correct derivations for bbb.

Another method[8] is to build the parse forest as you go, augmenting each Earley item with a pointer to a shared packed parse forest (SPPF) node labelled with a triple (s, i, j) where s is a symbol or an LR(0) item (production rule with dot), and i and j give the section of the input string derived by this node. A node's contents are either a pair of child pointers giving a single derivation, or a list of "packed" nodes each containing a pair of pointers and representing one derivation. SPPF nodes are unique (there is only one with a given label), but may contain more than one derivation for ambiguous parses. So even if an operation does not add an Earley item (because it already exists), it may still add a derivation to the item's parse forest.

-   Predicted items have a null SPPF pointer.
-   The scanner creates an SPPF node representing the non-terminal it is scanning.
-   Then when the scanner or completer advance an item, they add a derivation whose children are the node from the item whose dot was advanced, and the one for the new symbol that was advanced over (the non-terminal or completed item).

Note also that SPPF nodes are never labeled with a completed LR(0) item: instead they are labelled with the symbol that is produced so that all derivations are combined under one node regardless of which alternative production they come from.


See also

-   CYK algorithm
-   Context-free grammar
-   Parsing Algorithms


Citations


Other reference materials

-   -

-


Implementations

C, C++

-   'Yet Another Earley Parser (YAEP)' – C/C++ libraries
-   'C Earley Parser' – an Earley parser C

Haskell

-   'Earley' – an Earley parser DSL in Haskell

Java

-   1 – a Java implementation of the Earley algorithm
-   PEN – a Java library that implements the Earley algorithm
-   Pep – a Java library that implements the Earley algorithm and provides charts and parse trees as parsing artifacts
-   digitalheir/java-probabilistic-earley-parser - a Java library that implements the probabilistic Earley algorithm, which is useful to determine the most likely parse tree from an ambiguous sentence

C#

-   coonsta/earley - An Earley parser in C#
-   patrickhuber/pliant - An Earley parser that integrates the improvements adopted by Marpa and demonstrates Elizabeth Scott's tree building algorithm.
-   ellisonch/CFGLib - Probabilistic Context Free Grammar (PCFG) Library for C# (Earley + SPPF, CYK)

JavaScript

-   Nearley – an Earley parser that's starting to integrate the improvements that Marpa adopted
-   A Pint-sized Earley Parser – a toy parser (with annotated pseudocode) to demonstrate Elizabeth Scott's technique for building the shared packed parse forest
-   lagodiuk/earley-parser-js – a tiny JavaScript implementation of Earley parser (including generation of the parsing-forest)
-   digitalheir/probabilistic-earley-parser-javascript - JavaScript implementation of the probabilistic Earley parser

OCaml

-   Simple Earley - An implementation of a simple Earley-like parsing algorithm, with documentation.

Perl

-   [https://metacpan.org/module/Marpa::R2 Marpa::R2] – a Perl module. Marpa is an Earley's algorithm that includes the improvements made by Joop Leo, and by Aycock and Horspool.
-   [https://metacpan.org/module/Parse::Earley Parse::Earley] – a Perl module implementing Jay Earley's original algorithm

Python

-   Lark – an object-oriented, procedural implementation of an Earley parser in <200 lines of code
-   NLTK – a Python toolkit with an Earley parser
-   Spark – an object-oriented _little language framework_ for Python implementing an Earley parser
-   spark_parser – updated and packaged version of the Spark parser above, which runs in both Python 3 and Python 2
-   earley3.py – a stand-alone implementation of the algorithm in less than 150 lines of code, including generation of the parsing-forest and samples
-   tjr_python_earley_parser - a minimal Earley parser in Python

Common Lisp

-   CL-Earley-parser – a Common Lisp library implementing an Earley parser

Scheme, Racket

-   Charty-Racket – a Scheme-Racket implementation of an Earley parser

Resources

-   The Accent compiler-compiler

Category:Parsing algorithms Category:Dynamic programming

[1]

[2]

[3]

[4]  p.145

[5]

[6]

[7]

[8]