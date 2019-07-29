In mathematical logic and computer science, the KLEENE STAR (or KLEENE OPERATOR or KLEENE CLOSURE) is a unary operation, either on sets of strings or on sets of symbols or characters. In mathematics it is more commonly known as the free monoid construction. The application of the Kleene star to a set _V_ is written as _V_^(*). It is widely used for regular expressions, which is the context in which it was introduced by Stephen Kleene to characterize certain automata, where it means "zero or more".

1.  If _V_ is a set of strings, then _V_^(*) is defined as the smallest superset of _V_ that contains the empty string ε and is closed under the string concatenation operation.
2.  If _V_ is a set of symbols or characters, then _V_^(*) is the set of all strings over symbols in _V_, including the empty string ε.

The set _V_^(*) can also be described as the set of finite-length strings that can be generated by concatenating arbitrary elements of _V_, allowing the use of the same element multiple times. If _V_ is either the empty set ∅ or the singleton set {ε}, then _V_^(*) = {ε}; if _V_ is any other finite set or countably infinite set, then _V_^(*) is a countably infinite set.[1]

The operators are used in rewrite rules for generative grammars.


Definition and notation

Given a set _V_ define

    _V_⁰ = {ε} (the language consisting only of the empty string),
    _V_¹ = _V_

and define recursively the set

    _V_^(_i_+1) = { _wv_ : _w_ ∈ _V_^(_i_) and _v_ ∈ _V_ } for each _i_ > 0.

If _V_ is a formal language, then _V_^(_i_), the _i_-th power of the set _V_, is a shorthand for the concatenation of set _V_ with itself _i_ times. That is, _V_^(_i_) can be understood to be the set of all strings that can be represented as the concatenation of _i_ strings in _V_.

The definition of Kleene star on _V_ is[2]

_V_^(*) = ⋃_(_i_ ≥ 0)_V_^(_i_) = _V_⁰ ∪ _V_¹ ∪ _V_² ∪ _V_³ ∪ _V_⁴ ∪ ⋯.

Notice that the Kleene star operator is an idempotent unary operator: (_V_^(*))^(*) = _V_^(*) for any set _V_ of strings or characters.


Kleene plus

In some formal language studies, (e.g. AFL theory) a variation on the Kleene star operation called the _Kleene plus_ is used. The Kleene plus omits the _V_⁰ term in the above union. In other words, the Kleene plus on _V_ is

_V_⁺ = ⋃_(_i_ ≥ 1)_V_^(_i_) = _V_¹ ∪ _V_² ∪ _V_³ ∪ ⋯.

For every set _L_, the Kleene plus of _L_ (denoting _L_⁺) equals the concatenation of _L_ with _L_^(*); this holds because every element of _L_⁺ must either be composed from one element of _L_ and finitely many non-empty terms in _L_ or is just an element of _L_ (where _L_ itself is retrieved by taking _L_ concatenated with ε). Conversely, _L_^(*) = {ε} ∪ _L_⁺.


Examples

Example of Kleene star applied to set of strings:

    {"ab","c"}^(*) = { ε, "ab", "c", "abab", "abc", "cab", "cc", "ababab", "ababc", "abcab", "abcc", "cabab", "cabc", "ccab", "ccc", ...}.

Example of Kleene plus applied to set of characters:

    {"a", "b", "c"}⁺ = { "a", "b", "c", "aa", "ab", "ac", "ba", "bb", "bc", "ca", "cb", "cc", "aaa", "aab", ...}.

Kleene star applied to the same character set:

    {"a", "b", "c"}^(*) = { ε, "a", "b", "c", "aa", "ab", "ac", "ba", "bb", "bc", "ca", "cb", "cc", "aaa", "aab", ...}.

Example of Kleene star applied to the empty set:

    ∅^(*) = {ε}.

Example of Kleene plus applied to the empty set:

    ∅⁺ = ∅ ∅^(*) = { } = ∅,

where concatenation is an associative and noncommutative product, sharing these properties with the Cartesian product of sets.

Example of Kleene plus and Kleene star applied to the singleton set containing the empty string:

    If V = {ε}, then also _V_^(_i_) = {ε} for each _i_, hence V^(*) = V⁺ = {ε}.


Generalization

Strings form a monoid with concatenation as the binary operation and ε the identity element. The Kleene star is defined for any monoid, not just strings. More precisely, let (_M_, ⋅) be a monoid, and _S_ ⊆ _M_. Then _S_^(*) is the smallest submonoid of _M_ containing _S_; that is, _S_^(*) contains the neutral element of _M_, the set _S_, and is such that if _x_,_y_ ∈ _S_^(*), then _x_⋅_y_ ∈ _S_^(*).

Furthermore, the Kleene star is generalized by including the *-operation (and the union) in the algebraic structure itself by the notion of complete star semiring.[3]


References


Further reading

-

Category:Formal languages Category:Grammar Category:Natural language processing

[1]

[2]

[3]