from Chomsky 1957).]] In mathematics, computer science, and linguistics, a FORMAL LANGUAGE consists of words whose letters are taken from an alphabet and are well-formed according to a specific set of rules.

The alphabet of a formal language consist of symbols, letters, or tokens that concatenate into strings of the language.[1] Each string concatenated from symbols of this alphabet is called a word, and the words that belong to a particular formal language are sometimes called _well-formed words_ or _well-formed formulas_. A formal language is often defined by means of a formal grammar such as a regular grammar or context-free grammar, which consists of its formation rules.

The field of FORMAL LANGUAGE THEORY studies primarily the purely syntactical aspects of such languages—that is, their internal structural patterns. Formal language theory sprang out of linguistics, as a way of understanding the syntactic regularities of natural languages. In computer science, formal languages are used among others as the basis for defining the grammar of programming languages and formalized versions of subsets of natural languages in which the words of the language represent concepts that are associated with particular meanings or semantics. In computational complexity theory, decision problems are typically defined as formal languages, and complexity classes are defined as the sets of the formal languages that can be parsed by machines with limited computational power. In logic and the foundations of mathematics, formal languages are used to represent the syntax of axiomatic systems, and mathematical formalism is the philosophy that all of mathematics can be reduced to the syntactic manipulation of formal languages in this way.


History

The first formal language is thought to be the one used by Gottlob Frege in his _Begriffsschrift_ (1879), literally meaning "concept writing", and which Frege described as a "formal language of pure thought."[2]

Axel Thue's early semi-Thue system, which can be used for rewriting strings, was influential on formal grammars.


Words over an alphabet

An ALPHABET, in the context of formal languages, can be any set, although it often makes sense to use an alphabet in the usual sense of the word, or more generally a character set such as ASCII or Unicode. The elements of an alphabet are called its LETTERS. An alphabet may contain an infinite number of elements;[3] however, most definitions in formal language theory specify alphabets with a finite number of elements, and most results apply only to them.

A WORD over an alphabet can be any finite sequence (i.e., string) of letters. The set of all words over an alphabet Σ is usually denoted by Σ^(*) (using the Kleene star). The length of a word is the number of letters it is composed of. For any alphabet, there is only one word of length 0, the _empty word_, which is often denoted by e, ε, λ or even Λ. By concatenation one can combine two words to form a new word, whose length is the sum of the lengths of the original words. The result of concatenating a word with the empty word is the original word.

In some applications, especially in logic, the alphabet is also known as the _vocabulary_ and words are known as _formulas_ or _sentences_; this breaks the letter/word metaphor and replaces it by a word/sentence metaphor.


Definition

A FORMAL LANGUAGE _L_ over an alphabet Σ is a subset of Σ^(*), that is, a set of words over that alphabet. Sometimes the sets of words are grouped into expressions, whereas rules and constraints may be formulated for the creation of 'well-formed expressions'.

In computer science and mathematics, which do not usually deal with natural languages, the adjective "formal" is often omitted as redundant.

While formal language theory usually concerns itself with formal languages that are described by some syntactical rules, the actual definition of the concept "formal language" is only as above: a (possibly infinite) set of finite-length strings composed from a given alphabet, no more and no less. In practice, there are many languages that can be described by rules, such as regular languages or context-free languages. The notion of a formal grammar may be closer to the intuitive concept of a "language," one described by syntactic rules. By an abuse of the definition, a particular formal language is often thought of as being equipped with a formal grammar that describes it.


Examples

The following rules describe a formal language  over the alphabet Σ = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, +, =}:

-   Every nonempty string that does not contain "+" or "=" and does not start with "0" is in .
-   The string "0" is in .
-   A string containing "=" is in  if and only if there is exactly one "=", and it separates two valid strings of .
-   A string containing "+" but not "=" is in  if and only if every "+" in the string separates two valid strings of .
-   No string is in  other than those implied by the previous rules.

Under these rules, the string "23+4=555" is in , but the string "=234=+" is not. This formal language expresses natural numbers, well-formed additions, and well-formed addition equalities, but it expresses only what they look like (their syntax), not what they mean (semantics). For instance, nowhere in these rules is there any indication that "0" means the number zero, "+" means addition, "23+4=555" is false, etc.

Constructions

For finite languages, one can explicitly enumerate all well-formed words. For example, we can describe a language  as just  = {a, b, ab, cba}. The degenerate case of this construction is the EMPTY LANGUAGE, which contains no words at all ( = ∅).

However, even over a finite (non-empty) alphabet such as Σ = {a, b} there are an infinite number of finite-length words that can potentially be expressed: "a", "abb", "ababba", "aaababbbbaab", …. Therefore, formal languages are typically infinite, and describing an infinite formal language is not as simple as writing _L_ = {a, b, ab, cba}. Here are some examples of formal languages:

-   = Σ^(*), the set of _all_ words over Σ;

-   = {a}^(*) = {a^(_n_)}, where _n_ ranges over the natural numbers and "a^(_n_)" means "a" repeated _n_ times (this is the set of words consisting only of the symbol "a");

-   the set of syntactically correct programs in a given programming language (the syntax of which is usually defined by a context-free grammar);
-   the set of inputs upon which a certain Turing machine halts; or
-   the set of maximal strings of alphanumeric ASCII characters on this line, i.e.,
    the set {the, set, of, maximal, strings, alphanumeric, ASCII, characters, on, this, line, i, e}.


Language-specification formalisms

Formal languages are used as tools in multiple disciplines. However, formal language theory rarely concerns itself with particular languages (except as examples), but is mainly concerned with the study of various types of formalisms to describe languages. For instance, a language can be given as

-   those strings generated by some formal grammar;
-   those strings described or matched by a particular regular expression;
-   those strings accepted by some automaton, such as a Turing machine or finite state automaton;
-   those strings for which some decision procedure (an algorithm that asks a sequence of related YES/NO questions) produces the answer YES.

Typical questions asked about such formalisms include:

-   What is their expressive power? (Can formalism _X_ describe every language that formalism _Y_ can describe? Can it describe other languages?)
-   What is their recognizability? (How difficult is it to decide whether a given word belongs to a language described by formalism _X_?)
-   What is their comparability? (How difficult is it to decide whether two languages, one described in formalism _X_ and one in formalism _Y_, or in _X_ again, are actually the same language?).

Surprisingly often, the answer to these decision problems is "it cannot be done at all", or "it is extremely expensive" (with a characterization of how expensive). Therefore, formal language theory is a major application area of computability theory and complexity theory. Formal languages may be classified in the Chomsky hierarchy based on the expressive power of their generative grammar as well as the complexity of their recognizing automaton. Context-free grammars and regular grammars provide a good compromise between expressivity and ease of parsing, and are widely used in practical applications.


Operations on languages

Certain operations on languages are common. This includes the standard set operations, such as union, intersection, and complement. Another class of operation is the element-wise application of string operations.

Examples: suppose L₁ and L₂ are languages over some common alphabet Σ.

-   The _concatenation_ L₁ ⋅ L₂ consists of all strings of the form vw where v is a string from L₁ and w is a string from L₂.
-   The _intersection_ L₁ ∩ L₂ of L₁ and L₂ consists of all strings that are contained in both languages
-   The _complement_ ¬L₁ of L₁ with respect to Σ consists of all strings over Σ that are not in L₁.
-   The Kleene star: the language consisting of all words that are concatenations of zero or more words in the original language;
-   _Reversal_:
    -   Let _ε_ be the empty word, then ε^(R) = ε, and
    -   for each non-empty word w = σ₁⋯σ_(n) (where σ₁, …, σ_(n)are elements of some alphabet), let w^(R) = σ_(n)⋯σ₁,
    -   then for a formal language L, L^(R) = {w^(R) ∣ w ∈ L}.
-   String homomorphism

Such string operations are used to investigate closure properties of classes of languages. A class of languages is closed under a particular operation when the operation, applied to languages in the class, always produces a language in the same class again. For instance, the context-free languages are known to be closed under union, concatenation, and intersection with regular languages, but not closed under intersection or complement. The theory of trios and abstract families of languages studies the most common closure properties of language families in their own right.[4]

    {| class="wikitable"

|+ align="top"|Closure properties of language families (L₁ Op L₂ where both L₁ and L₂ are in the language family given by the column). After Hopcroft and Ullman. |- ! Operation ! ! Regular ! DCFL ! CFL ! IND ! CSL ! recursive ! RE |- |Union |L₁ ∪ L₂ = {w ∣ w ∈ L₁ ∨ w ∈ L₂} | | | | | | | |- |Intersection |L₁ ∩ L₂ = {w ∣ w ∈ L₁ ∧ w ∈ L₂} | | | | | | | |- |Complement |¬L₁ = {w ∣ w ∉ L₁} | | | | | | | |- |Concatenation |L₁ ⋅ L₂ = {wz ∣ w ∈ L₁ ∧ z ∈ L₂} | | | | | | | |- |Kleene star |L₁^(*) = {ε} ∪ {wz ∣ w ∈ L₁ ∧ z ∈ L₁^(*)} | | | | | | | |- |(String) homomorphism h |h(L₁) = {h(w) ∣ w ∈ L₁} | | | | | | | |- |ε-free (string) homomorphism h |h(L₁) = {h(w) ∣ w ∈ L₁} | | | | | | | |- |Substitution φ |φ(L₁) = ⋃_(σ₁⋯σ_(n) ∈ L₁)φ(σ₁) ⋅ … ⋅ φ(σ_(n)) | | | | | | | |- |Inverse homomorphism h^( − 1) |h^( − 1)(L₁) = ⋃_(w ∈ L₁)h^( − 1)(w) | | | | | | | |- |Reverse |L^(R) = {w^(R) ∣ w ∈ L} | | | | | | | |- |Intersection with a regular language R |L ∩ R = {w ∣ w ∈ L ∧ w ∈ R} | | | | | | | |}


Applications

Programming languages

A compiler usually has two distinct components. A lexical analyzer, generated by a tool like lex, identifies the tokens of the programming language grammar, e.g. identifiers or keywords, which are themselves expressed in a simpler formal language, usually by means of regular expressions. At the most basic conceptual level, a parser, usually generated by a parser generator like yacc, attempts to decide if the source program is valid, that is if it belongs to the programming language for which the compiler was built.

Of course, compilers do more than just parse the source code – they usually translate it into some executable format. Because of this, a parser usually outputs more than a yes/no answer, typically an abstract syntax tree. This is used by subsequent stages of the compiler to eventually generate an executable containing machine code that runs directly on the hardware, or some intermediate code that requires a virtual machine to execute.

Formal theories, systems and proofs

divisions within a formal system. Strings of symbols may be broadly divided into nonsense and well-formed formulas. The set of well-formed formulas is divided into theorems and non-theorems.]]

In mathematical logic, a _formal theory_ is a set of sentences expressed in a formal language.

A _formal system_ (also called a _logical calculus_, or a _logical system_) consists of a formal language together with a deductive apparatus (also called a _deductive system_). The deductive apparatus may consist of a set of transformation rules, which may be interpreted as valid rules of inference, or a set of axioms, or have both. A formal system is used to derive one expression from one or more other expressions. Although a formal language can be identified with its formulas, a formal system cannot be likewise identified by its theorems. Two formal systems ℱ𝒮 and ℱ𝒮′ may have all the same theorems and yet differ in some significant proof-theoretic way (a formula A may be a syntactic consequence of a formula B in one but not another for instance).

A _formal proof_ or _derivation_ is a finite sequence of well-formed formulas (which may be interpreted as sentences, or propositions) each of which is an axiom or follows from the preceding formulas in the sequence by a rule of inference. The last sentence in the sequence is a theorem of a formal system. Formal proofs are useful because their theorems can be interpreted as true propositions.

Interpretations and models

Formal languages are entirely syntactic in nature but may be given semantics that give meaning to the elements of the language. For instance, in mathematical logic, the set of possible formulas of a particular logic is a formal language, and an interpretation assigns a meaning to each of the formulas—usually, a truth value.

The study of interpretations of formal languages is called formal semantics. In mathematical logic, this is often done in terms of model theory. In model theory, the terms that occur in a formula are interpreted as objects within mathematical structures, and fixed compositional interpretation rules determine how the truth value of the formula can be derived from the interpretation of its terms; a _model_ for a formula is an interpretation of terms such that the formula becomes true.


See also

-   Combinatorics on words
-   Free monoid
-   Formal method
-   Grammar framework
-   Mathematical notation
-   Associative array
-   String (computer science)


References

Citation footnotes

General references

-   A. G. Hamilton, _Logic for Mathematicians_, Cambridge University Press, 1978, .
-   Luis M. Augusto, _Languages, machines, and classical computation_, London: College Publications, 2019. .Web page
-   Seymour Ginsburg, _Algebraic and automata theoretic properties of formal languages_, North-Holland, 1975, .
-   Michael A. Harrison, _Introduction to Formal Language Theory_, Addison-Wesley, 1978.
-   -   .

-   Grzegorz Rozenberg, Arto Salomaa, _Handbook of Formal Languages: Volume I-III_, Springer, 1997, .
-   Patrick Suppes, _Introduction to Logic_, D. Van Nostrand, 1957, .


External links

-   -   -   -   University of Maryland, Formal Language Definitions
-   James Power, "Notes on Formal Language Theory and Parsing", 29 November 2002.
-   Drafts of some chapters in the "Handbook of Formal Language Theory", Vol. 1–3, G. Rozenberg and A. Salomaa (eds.), Springer Verlag, (1997):
    -   Alexandru Mateescu and Arto Salomaa, "Preface" in Vol.1, pp. v–viii, and "Formal Languages: An Introduction and a Synopsis", Chapter 1 in Vol. 1, pp.1–39
    -   Sheng Yu, "Regular Languages", Chapter 2 in Vol. 1
    -   Jean-Michel Autebert, Jean Berstel, Luc Boasson, "Context-Free Languages and Push-Down Automata", Chapter 3 in Vol. 1
    -   Christian Choffrut and Juhani Karhumäki, "Combinatorics of Words", Chapter 6 in Vol. 1
    -   Tero Harju and Juhani Karhumäki, "Morphisms", Chapter 7 in Vol. 1, pp. 439–510
    -   Jean-Eric Pin, "Syntactic semigroups", Chapter 10 in Vol. 1, pp. 679–746
    -   M. Crochemore and C. Hancart, "Automata for matching patterns", Chapter 9 in Vol. 2
    -   Dora Giammarresi, Antonio Restivo, "Two-dimensional Languages", Chapter 4 in Vol. 3, pp. 215–267

Formal_languages Category:Theoretical computer science Category:Combinatorics on words

[1] See e.g. .

[2]

[3] For example, first-order logic is often expressed using an alphabet that, besides symbols such as ∧, ¬, ∀ and parentheses, contains infinitely many elements _x_₀, _x_₁, _x_₂, … that play the role of variables.

[4] , Chapter 11: Closure properties of families of languages.