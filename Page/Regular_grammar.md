In theoretical computer science and formal language theory, a REGULAR GRAMMAR is a formal grammar that is right-regular or left-regular. Every regular grammar describes a regular language.


Strictly regular grammars

A RIGHT REGULAR GRAMMAR (also called right linear grammar) is a formal grammar (_N_, Σ, _P_, _S_) such that all the production rules in _P_ are of one of the following forms:

1.  _A_ → _a_, where _A_ is a non-terminal in _N_ and _a_ is a terminal in Σ
2.  _A_ → _aB_, where _A_ and _B_ are non-terminals in _N_ and _a_ is in Σ
3.  _A_ → ε, where _A_ is in _N_ and ε denotes the empty string, i.e. the string of length 0.

In a LEFT REGULAR GRAMMAR (also called left linear grammar), all rules obey the forms

1.  _A_ → _a_, where _A_ is a non-terminal in _N_ and _a_ is a terminal in Σ
2.  _A_ → _Ba_, where _A_ and _B_ are in _N_ and _a_ is in Σ
3.  _A_ → ε, where _A_ is in _N_ and ε is the empty string.

A REGULAR GRAMMAR is a left or right regular grammar.

Some textbooks and articles disallow empty production rules, and assume that the empty string is not present in languages.

Extended regular grammars

An _extended right regular grammar_ is one in which all rules obey one of

1.  _A_ → _w_, where _A_ is a non-terminal in _N_ and _w_ is in a (possibly empty) string of terminals Σ^(*)
2.  _A_ → _wB_, where _A_ and _B_ are in _N_ and _w_ is in Σ^(*).

Some authors call this type of grammar a _right regular grammar_ (or _right linear grammar_)[1] and the type above a _strictly right regular grammar_ (or _strictly right linear grammar_).[2]

An _extended left regular grammar_ is one in which all rules obey one of

1.  _A_ → _w_, where _A_ is a non-terminal in _N_ and _w_ is in Σ^(*)
2.  _A_ → _Bw_, where _A_ and _B_ are in _N_ and _w_ is in Σ^(*).


Examples

An example of a right regular grammar _G_ with _N_ = {S, A}, Σ = {a, b, c}, _P_ consists of the following rules

    S → aS
    S → bA
    A → ε
    A → cA

and S is the start symbol. This grammar describes the same language as the regular expression a*bc*, viz. the set of all strings consisting of arbitrarily many "_a_"s, followed by a single "_b_", followed by arbitrarily many "_c_"s.

A somewhat longer but more explicit extended right regular grammar _G_ for the same regular expression is given by _N_ = {S, A, B, C}, Σ = {a, b, c}, where _P_ consists of the following rules:

    S → A
    A → aA
    A → B
    B → bC
    C → ε
    C → cC

…where each uppercase letter corresponds to phrases starting at the next position in the regular expression.

As an example from the area of programming languages, the set of all strings denoting a floating point number can be described by an extended right regular grammar _G_ with _N_ = {S, A,B,C,D,E,F}, Σ = {0,1,2,3,4,5,6,7,8,9,+,-,.,e}, where S is the start symbol, and _P_ consists of the following rules:

    {|

|- || S → +A       || A → 0A       || B → 0C       || C → 0C       || D → +E       || E → 0F       || F → 0F |- || S → -A || A → 1A || B → 1C || C → 1C || D → -E || E → 1F || F → 1F |- || S → A || A → 2A || B → 2C || C → 2C || D → E || E → 2F || F → 2F |- || || A → 3A || B → 3C || C → 3C || || E → 3F || F → 3F |- || || A → 4A || B → 4C || C → 4C || || E → 4F || F → 4F |- || || A → 5A || B → 5C || C → 5C || || E → 5F || F → 5F |- || || A → 6A || B → 6C || C → 6C || || E → 6F || F → 6F |- || || A → 7A || B → 7C || C → 7C || || E → 7F || F → 7F |- || || A → 8A || B → 8C || C → 8C || || E → 8F || F → 8F |- || || A → 9A || B → 9C || C → 9C || || E → 9F || F → 9F |- || || A → .B || || C → eD || || || F → ε |- || || A → B || || C → ε || || || |}


Expressive power

There is a direct one-to-one correspondence between the rules of a (strictly) right regular grammar and those of a nondeterministic finite automaton, such that the grammar generates exactly the language the automaton accepts.[3] Hence, the right regular grammars generate exactly all regular languages. The left regular grammars describe the reverses of all such languages, that is, exactly the regular languages as well.

Every strict right regular grammar is extended right regular, while every extended right regular grammar can be made strict by inserting new nonterminals, such that the result generates the same language; hence, extended right regular grammars generate the regular languages as well. Analogously, so do the extended left regular grammars.

If empty productions are disallowed, only all regular languages that do not include the empty string can be generated.[4]

While regular grammars can only describe regular languages, the converse is not true: regular languages can also be described by non-regular grammars.


Mixing left and right regular rules

If mixing of left-regular and right-regular rules is allowed, we still have a linear grammar, but not necessarily a regular one. What is more, such a grammar need not generate a regular language: all linear grammars can be easily brought into this form, and hence, such grammars can generate exactly all linear languages, including nonregular ones.

For instance, the grammar _G_ with _N_ = {S, A}, Σ = {a, b}, _P_ with start symbol _S_ and rules

    S → aA
    A → Sb
    S → ε

generates {a^(i)b^(i) : i ≥ 0}, the paradigmatic non-regular linear language.


See also

-   Regular expression, a compact notation for regular grammars
-   Regular tree grammar, a generalization from strings to trees
-   Prefix grammar
-   Chomsky hierarchy
-   -   , chapter III


References

Category:Formal languages

[1]  Here: p.217 (left, right regular grammars as subclasses of context-free grammars), p.79 (context-free grammars)

[2] Hopcroft and Ullman 1979 (p.229, exercise 9.2) call it a normal form for right-linear grammars.

[3] Hopcroft and Ullman 1979, p.218-219, Theorem 9.1 and 9.2

[4] Hopcroft and Ullman 1979, p.229, Exercise 9.2