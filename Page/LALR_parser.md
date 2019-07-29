In computer science, an LALR PARSER or LOOK-AHEAD LR PARSER is a simplified version of a canonical LR parser, to parse (separate and analyze) a text according to a set of production rules specified by a formal grammar for a computer language. ("LR" means left-to-right, rightmost derivation.)

The LALR parser was invented by Frank DeRemer in his 1969 PhD dissertation, _Practical Translators for LR(k) languages_, in his treatment of the practical difficulties at that time of implementing LR(1) parsers. He showed that the LALR parser has more language recognition power than the LR(0) parser, while requiring the same number of states as the LR(0) parser for a language that can be recognized by both parsers. This makes the LALR parser a memory-efficient alternative to the LR(1) parser for languages that are LALR. It was also proven that there exist LR(1) languages that are not LALR. Despite this weakness, the power of the LALR parser is sufficient for many mainstream computer languages,[1] including Java,[2] though the reference grammars for many languages fail to be LALR due to being ambiguous.[3]

The original dissertation gave no algorithm for constructing such a parser given a formal grammar. The first algorithms for LALR parser generation were published in 1973.[4] In 1982, DeRemer and Tom Pennello published an algorithm that generated highly memory-efficient LALR parsers.[5] LALR parsers can be automatically generated from a grammar by an LALR parser generator such as Yacc or GNU Bison. The automatically generated code may be augmented by hand-written code to augment the power of the resulting parser.


History

In 1965, Donald Knuth invented the LR parser (Left to Right, Rightmost derivation). The LR parser can recognize any deterministic context-free language in linear-bounded time.[6] Rightmost derivation has very large memory requirements and implementing an LR parser was impractical due to the limited memory of computers at that time. To address this shortcoming, in 1969, Frank DeRemer proposed two simplified versions of the LR parser, namely the LOOK-AHEAD LR (LALR) and the SIMPLE LR PARSER that had much lower memory requirements at the cost of less language-recognition power, with the LALR parser being the most-powerful alternative. In 1977, memory optimizations for the LR parser were invented[7] but still the LR parser was less memory-efficient than the simplified alternatives.

In 1979, Frank DeRemer and Tom Pennello announced a series of optimizations for the LALR parser that would further improve its memory efficiency.[8] Their work was published in 1982.[9]


Overview

Generally, the LALR parser refers to the LALR(1) parser, just as the LR parser generally refers to the LR(1) parser. The "(1)" denotes one-token lookahead, to resolve differences between rule patterns during parsing. Similarly, there is an LALR(2) parser with two-token lookahead, and LALR(_k_) parsers with _k_-token lookup, but these are rare in actual use. The LALR parser is based on the LR(0) parser, so it can also be denoted LALR(1) = LA(1)LR(0) (1 token of lookahead, LR(0)) or more generally LALR(_k_) = LA(_k_)LR(0) (k tokens of lookahead, LR(0)). There is in fact a two-parameter family of LA(_k_)LR(_j_) parsers for all combinations of _j_ and _k_, which can be derived from the LR(_j_ + _k_) parser,[10] but these do not see practical use.

As with other types of LR parsers, an LALR parser is quite efficient at finding the single correct bottom-up parse in a single left-to-right scan over the input stream, because it does not need to use backtracking. Being a lookahead parser by definition, it always uses a lookahead, with being the most-common case.


Relation to other parsers

LR parsers

The LALR(1) parser is less powerful than the LR(1) parser, and more powerful than the SLR(1) parser, though they all use the same production rules. The simplification that the LALR parser introduces consists in merging rules that have identical KERNEL ITEM SETS, because during the LR(0) state-construction process the lookaheads are not known. This reduces the power of the parser because not knowing the lookahead symbols can confuse the parser as to which grammar rule to pick next, resulting in REDUCE/REDUCE CONFLICTS. All conflicts that arise in applying a LALR(1) parser to an unambiguous LR(1) grammar are reduce/reduce conflicts. The SLR(1) parser performs further merging, which introduces additional conflicts.

The standard example of an LR(1) grammar that cannot be parsed with the LALR(1) parser, exhibiting such a reduce/reduce conflict, is:[11][12]

  S → a E c
    → a F d
    → b F c
    → b E d
  E → e
  F → e

In the LALR table construction, two states will be merged into one state and later the lookaheads will be found to be ambiguous. The one state with lookaheads is:

  E → e. {c,d}
  F → e. {c,d}

An LR(1) parser will create two different states (with non-conflicting lookaheads), neither of which is ambiguous. In an LALR parser this one state has conflicting actions (given lookahead c or d, reduce to E or F), a "reduce/reduce conflict"; the above grammar will be declared ambiguous by a LALR parser generator and conflicts will be reported.

To recover, this ambiguity is resolved by choosing E, because it occurs before F in the grammar. However, the resultant parser will not be able to recognize the valid input sequence b e c, since the ambiguous sequence e c is reduced to (E → e) c, rather than the correct (F → e) c, but b E c is not in the grammar.

LL parsers

The LALR(_j_) parsers are incomparable with LL(_k_) parsers: for any _j_ and _k_ both greater than 0, there are LALR(_j_) grammars that are not LL(_k_) grammars and conversely. In fact, it is undecidable whether a given LL(1) grammar is LALR(_k_) for any k > 0.[13]

Depending on the presence of empty derivations, a LL(1) grammar can be equal to a SLR(1) or a LALR(1) grammar. If the LL(1) grammar has no empty derivations it is SLR(1) and if all symbols with empty derivations have non-empty derivations it is LALR(1). If symbols having only an empty derivation exist, the grammar may or may not be LALR(1).[14]


See also

-   Comparison of parser generators
-   Context-free grammar
-   Lookahead
-   Parser generator
-   Token scanner


Notes


References

-   -


External links

-   Parsing Simulator This simulator is used to generate parsing tables LALR and resolve the exercises of the book.
-   JS/CC JavaScript based implementation of a LALR(1) parser generator, which can be run in a web-browser or from the command-line.
-   LALR(1) tutorial, a flash card-like tutorial on LALR(1) parsing.

Category:Parsing algorithms

[1] _LR Parsing: Theory and Practice,_ Nigel P. Chapman, p. 86–87

[2]

[3]

[4]

[5]

[6]

[7]

[8]

[9]

[10] _Parsing Techniques: A Practical Guide,_ by Dick Grune and Ceriel J. H. Jacobs, "9.7 LALR(1)", p. 302

[11] "7.9 LR(1) but not LALR(1) ", _CSE 756: Compiler Design and Implementation ,_ Eitan Gurari, Spring 2008

[12] "Why is this LR(1) grammar not LALR(1)?"

[13]

[14]