The BERRY PARADOX is a self-referential paradox arising from an expression like "The smallest positive integer not definable in under sixty letters" (a phrase with fifty-seven letters). Bertrand Russell, the first to discuss the paradox in print, attributed it to G. G. Berry (1867–1928),[1] a junior librarian at Oxford's Bodleian library.


Overview

Consider the expression:

    "The smallest positive integer not definable in under sixty letters."

Since there are only twenty-six letters in the English alphabet, there are finitely many phrases of under sixty letters, and hence finitely many positive integers that are defined by phrases of under sixty letters. Since there are infinitely many positive integers, this means that there are positive integers that cannot be defined by phrases of under sixty letters. If there are positive integers that satisfy a given property, then there is a _smallest_ positive integer that satisfies that property; therefore, there is a smallest positive integer satisfying the property "not definable in under sixty letters". This is the integer to which the above expression refers. But the above expression is only fifty-seven letters long, therefore it _is_ definable in under sixty letters, and is _not_ the smallest positive integer not definable in under sixty letters, and is _not_ defined by this expression. This is a paradox: there must be an integer defined by this expression, but since the expression is self-contradictory (any integer it defines is definable in under sixty letters), there cannot be any integer defined by it.

Perhaps another helpful analogy to Berry's Paradox would be the phrase, "indescribable feeling".[2] If the feeling is indeed indescribable, then no description of the feeling would be true. But if the word "indescribable" communicates something about the feeling, then it may be considered a description: this is self-contradictory.

Mathematician and computer scientist Gregory J. Chaitin in _The Unknowable_ (1999) adds this comment: "Well, the Mexican mathematical historian Alejandro Garcidiego has taken the trouble to find that letter [of Berry's from which Russell penned his remarks], and it is rather a different paradox. Berry’s letter actually talks about the first ordinal that can’t be named in a finite number of words. According, to Cantor’s theory such an ordinal must exist, but we’ve just named it in a finite number of words, which is a contradiction."


Resolution

The Berry paradox as formulated above arises because of systematic ambiguity in the word "definable". In other formulations of the Berry paradox, such as one that instead reads: "...not nameable in less..." the term "nameable" is also one that has this systematic ambiguity. Terms of this kind give rise to vicious circle fallacies. Other terms with this type of ambiguity are: satisfiable, true, false, function, property, class, relation, cardinal, and ordinal.[3] To resolve one of these paradoxes means to pinpoint exactly where our use of language went wrong and to provide restrictions on the use of language which may avoid them.

This family of paradoxes can be resolved by incorporating stratifications of meaning in language. Terms with systematic ambiguity may be written with subscripts denoting that one level of meaning is considered a higher priority than another in their interpretation. "The number not nameable₀ in less than eleven words" may be nameable₁ in less than eleven words under this scheme.[4]


Formal analogues

Using programs or proofs of bounded lengths, it is possible to construct an analogue of the Berry expression in a formal mathematical language, as has been done by Gregory Chaitin. Though the formal analogue does not lead to a logical contradiction, it does prove certain impossibility results.

George Boolos (1989) built on a formalized version of Berry's paradox to prove Gödel's Incompleteness Theorem in a new and much simpler way. The basic idea of his proof is that a proposition that holds of _x_ if and only if _x_ = _n_ for some natural number _n_ can be called a _definition_ for _n_, and that the set {(_n_, _k_): _n_ has a definition that is _k_ symbols long} can be shown to be representable (using Gödel numbers). Then the proposition "_m_ is the first number not definable in less than _k_ symbols" can be formalized and shown to be a definition in the sense just stated.


Relationship with Kolmogorov complexity

It is not possible in general to unambiguously define what is the minimal number of symbols required to describe a given string (given a specific description mechanism). In this context, the terms _string_ and _number_ may be used interchangeably, since a number is actually a string of symbols, e.g. an English word (like the word "eleven" used in the paradox) while, on the other hand, it is possible to refer to any word with a number, e.g. by the number of its position in a given dictionary or by suitable encoding. Some long strings can be described exactly using fewer symbols than those required by their full representation, as is often achieved using data compression. The complexity of a given string is then defined as the minimal length that a description requires in order to (unambiguously) refer to the full representation of that string.

The Kolmogorov complexity is defined using formal languages, or Turing machines which avoids ambiguities about which string results from a given description. It can be proven that the Kolmogorov complexity is not computable. The proof by contradiction shows that if it were possible to compute the Kolmogorov complexity, then it would also be possible to systematically generate paradoxes similar to this one, i.e. descriptions shorter than what the complexity of the described string implies. That is to say, the definition of the Berry number is paradoxical because it is not actually possible to compute how many words are required to define a number, and we know that such computation is not possible because of the paradox.


See also

-   Busy beaver
-   Chaitin's incompleteness theorem
-   Definable number
-   Hilbert–Bernays paradox
-   Interesting number paradox
-   List of paradoxes
-   Richard's paradox


Notes


References

-   -   Boolos, George (1989) "A new proof of the Gödel Incompleteness Theorem", _Notices of the American Mathematical Society 36_: 388–90; 676. Reprinted in his (1998) _Logic, Logic, and Logic_. Harvard Univ. Press: 383-88.
-   Chaitin, Gregory (1993), Transcript of lecture given 27 October 1993 at the University of New Mexico
-   Chaitin, Gregory (1995) "The Berry Paradox." _Complexity 1_: 26-30.
-   French, James D. (1988) "The False Assumption Underlying Berry's Paradox," _Journal of Symbolic Logic 53_: 1220–1223.
-   Russell, Bertrand (1906) "Les paradoxes de la logique", _Revue de métaphysique et de morale 14_: 627–650
-   Russell, Bertrand; Whitehead, Alfred N. (1927) _Principia Mathematica_. Cambridge University Press. 1962 partial paperback reissue goes up to *56.


External links

-   Roosen-Runge, Peter H. (1997) "Berry's Paradox."
-

Category:Mathematics paradoxes Category:Self-referential paradoxes Category:Algorithmic information theory Category:Logical paradoxes

[1]

[2]

[3] Russell and Whitehead (1927).

[4] Quine, Willard (1976). _Ways of Paradox_. Harvard University Press.