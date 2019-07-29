In formal language theory, a CONTEXT-SENSITIVE LANGUAGE is a language that can be defined by a context-sensitive grammar (and equivalently by a noncontracting grammar). Context-sensitive is one of the four types of grammars in the Chomsky hierarchy.


Computational properties

Computationally, a context-sensitive language is equivalent with a linear bounded nondeterministic Turing machine, also called a linear bounded automaton. That is a non-deterministic Turing machine with a tape of only kn cells, where n is the size of the input and k is a constant associated with the machine. This means that every formal language that can be decided by such a machine is a context-sensitive language, and every context-sensitive language can be decided by such a machine.

This set of languages is also known as NLINSPACE or NSPACE(_O_(_n_)), because they can be accepted using linear space on a non-deterministic Turing machine.[1] The class LINSPACE (or DSPACE(_O_(_n_))) is defined the same, except using a deterministic Turing machine. Clearly LINSPACE is a subset of NLINSPACE, but it is not known whether LINSPACE=NLINSPACE.[2]


Examples

One of the simplest context-sensitive but not context-free languages is L = {a^(n)b^(n)c^(n) : n ≥ 1}: the language of all strings consisting of occurrences of the symbol "a", then "b"'s, then "c"'s (abc, , , etc.). A superset of this language, called the Bach language,[3] is defined as the set of all strings where "a", "b" and "c" (or any other set of three symbols) occurs equally often (, , etc.) and is also context-sensitive.[4][5]

can be shown to be a context-sensitive language by constructing a linear bounded automaton which accepts . The language can easily be shown to be neither regular nor context free by applying the respective pumping lemmas for each of the language classes to .

Similarly:

L_(Cross) = {a^(m)b^(n)c^(m)d^(n) : m ≥ 1, n ≥ 1} is another context-sensitive language; the corresponding context-sensitive grammar can be easily projected starting with two context-free grammars generating sentential forms in the formats a^(m)C^(m) and B^(n)d^(n) and then supplementing them with a permutation production like CB → BC, a new starting symbol and standard syntactic sugar.

L_(MUL3) = {a^(m)b^(n)c^(mn) : m ≥ 1, n ≥ 1} is another context-sensitive language (the "3" in the name of this language is intended to mean a ternary alphabet); that is, the "product" operation defines a context-sensitive language (but the "sum" defines only a context-free language as the grammar S → aSc|R and R → bRc|bc shows). Because of the commutative property of the product, the most intuitive grammar for L_(MUL3) is ambiguous. This problem can be avoided considering a somehow more restrictive definition of the language, e.g. L_(ORDMUL3) = {a^(m)b^(n)c^(mn) : 1 < m < n}. This can be specialized to L_(MUL1) = {a^(mn) : m > 1, n > 1} and, from this, to L_(m²) = {a^(m²) : m > 1}, L_(m³) = {a^(m³) : m > 1}, etc.

L_(REP) = {w^(|w|) : w ∈ Σ^(*)} is a context-sensitive language. The corresponding context-sensitive grammar can be obtained as a generalization of the context-sensitive grammars for L_(Square) = {w² : w ∈ Σ^(*)}, L_(Cube) = {w³ : w ∈ Σ^(*)}, etc.

L_(EXP) = {a^(2^(n)) : n ≥ 1} is a context-sensitive language[6].

L_(PRIMES2) = {w : |w| is prime } is a context-sensitive language (the "2" in the name of this language is intended to mean a binary alphabet). This was proved by Hartmanis using pumping lemmas for regular and context-free languages over a binary alphabet and, after that, sketching a linear bounded multitape automaton accepting L_(PRIMES2).[7]

L_(PRIMES1) = {a^(p) : p is prime } is a context-sensitive language (the "1" in the name of this language is intended to mean an unary alphabet). This was credited by A. Salomaa to Matti Soittola by means of a linear bounded automaton over an unary alphabet[8](pages 213-214, exercise 6.8) and also to Marti Penttonen by means of a context-sensitive grammar also over an unary alphabet (See: Formal Languages by A. Salomaa, page 14, Example 2.5).

An example of recursive language that is not context-sensitive is any recursive language whose decision is an EXPSPACE-hard problem, say, the set of pairs of equivalent regular expressions with exponentiation.


Properties of context-sensitive languages

-   The union, intersection, concatenation of two context-sensitive languages is context-sensitive, also the Kleene plus of a context-sensitive language is context-sensitive.[9]
-   The complement of a context-sensitive language is itself context-sensitive[10] a result known as the Immerman–Szelepcsényi theorem.
-   Membership of a string in a language defined by an arbitrary context-sensitive grammar, or by an arbitrary deterministic context-sensitive grammar, is a PSPACE-complete problem.


See also

-   Linear bounded automaton
-   List of parser generators for context-sensitive languages
-   Chomsky hierarchy
-   Indexed languages – a strict subset of the context-sensitive languages
-   Weir hierarchy


References

-   Sipser, M. (1996), _Introduction to the Theory of Computation_, PWS Publishing Co.

Category:Formal languages

[1] .

[2] .

[3]

[4] Bach, E. (1981). "Discontinuous constituents in generalized categorial grammars" . _NELS_, vol. 11, pp. 1–12.

[5] Joshi, A.; Vijay-Shanker, K.; and Weir, D. (1991). "The convergence of mildly context-sensitive grammar formalisms". In: Sells, P., Shieber, S.M. and Wasow, T. (Editors). _Foundational Issues in Natural Language Processing_. Cambridge MA: Bradford.

[6] Example 9.5 (p. 224) of Hopcroft, John E.; Ullman, Jeffrey D. (1979). Introduction to Automata Theory, Languages, and Computation. Addison-Wesley

[7]

[8] Salomaa, Arto (1969), _Theory of Automata_, , Pergamon, 276 pages.

[9] ; Exercise 9.10, p.230. In the 2000 edition, the chapter on context-sensitive languages has been omitted.

[10]