''. The woman in this image holds an object that contains a smaller image of her holding an identical object, which in turn contains a smaller image of herself holding an identical object, and so forth. 1904 Droste cocoa tin, designed by Jan Misset]] RECURSION (adjective: _recursive_) occurs when a thing is defined in terms of itself or of its type. Recursion is used in a variety of disciplines ranging from linguistics to logic. The most common application of recursion is in mathematics and computer science, where a function being defined is applied within its own definition. While this apparently defines an infinite number of instances (function values), it is often done in such a way that no loop or infinite chain of references can occur.


Formal definitions

, an ancient symbol depicting a serpent or dragon eating its own tail.]] In mathematics and computer science, a class of objects or methods exhibits recursive behavior when it can be defined by two properties:

1.  A simple BASE CASE (or cases)—a terminating scenario that does not use recursion to produce an answer

2.  A set of rules that reduces all other cases toward the base case

For example, the following is a recursive definition of a person's ancestors:

-   One's parents are one's ancestors (_base case_).
-   The ancestors of one's ancestors are also one's ancestors (_recursion step_).

The Fibonacci sequence is a classic example of recursion:

Fib(0) = 0 as base case 1,

Fib(1) = 1 as base case 2,

For all integers n > 1,  Fib(n) := Fib(n − 1) + Fib(n − 2).

Many mathematical axioms are based upon recursive rules. For example, the formal definition of the natural numbers by the Peano axioms can be described as: _0 is a natural number, and each natural number has a successor, which is also a natural number._ By this base case and recursive rule, one can generate the set of all natural numbers.

Recursively defined mathematical objects include functions, sets, and especially fractals.

There are various more tongue-in-cheek "definitions" of recursion; see recursive humor.


Informal definition

, bubbling through fermentation: the recipe calls for some sourdough left over from the last time the same recipe was made.]]

Recursion is the process a procedure goes through when one of the steps of the procedure involves invoking the procedure itself. A procedure that goes through recursion is said to be 'recursive'.

To understand recursion, one must recognize the distinction between a procedure and the running of a procedure. A procedure is a set of steps based on a set of rules. The running of a procedure involves actually following the rules and performing the steps. An analogy: a procedure is like a written recipe; running a procedure is like actually preparing the meal.

Recursion is related to, but not the same as, a reference within the specification of a procedure to the execution of some other procedure. For instance, a recipe might refer to cooking vegetables, which is another procedure that in turn requires heating water, and so forth. However, a recursive procedure is where (at least) one of its steps calls for a new instance of the very same procedure, like a sourdough recipe calling for some dough left over from the last time the same recipe was made. This immediately creates the possibility of an endless loop; recursion can only be properly used in a definition if the step in question is skipped in certain cases so that the procedure can complete, like a sourdough recipe that also tells you how to get some starter dough in case you've never made it before. Even if properly defined, a recursive procedure is not easy for humans to perform, as it requires distinguishing the new from the old (partially executed) invocation of the procedure; this requires some administration of how far various simultaneous instances of the procedures have progressed. For this reason recursive definitions are very rare in everyday situations. An example could be the following procedure to find a way through a maze. Proceed forward until reaching either an exit or a branching point (a dead end is considered a branching point with 0 branches). If the point reached is an exit, terminate. Otherwise try each branch in turn, using the procedure recursively; if every trial fails by reaching only dead ends, return on the path that led to this branching point and report failure. Whether this actually defines a terminating procedure depends on the nature of the maze: it must not allow loops. In any case, executing the procedure requires carefully recording all currently explored branching points, and which of their branches have already been exhaustively tried.


In language

Linguist Noam Chomsky among many others has argued that the lack of an upper bound on the number of grammatical sentences in a language, and the lack of an upper bound on grammatical sentence length (beyond practical constraints such as the time available to utter one), can be explained as the consequence of recursion in natural language.[1][2] This can be understood in terms of a recursive definition of a syntactic category, such as a sentence. A sentence can have a structure in which what follows the verb is another sentence: _Dorothy thinks witches are dangerous_, in which the sentence _witches are dangerous_ occurs in the larger one. So a sentence can be defined recursively (very roughly) as something with a structure that includes a noun phrase, a verb, and optionally another sentence. This is really just a special case of the mathematical definition of recursion.

This provides a way of understanding the creativity of language—the unbounded number of grammatical sentences—because it immediately predicts that sentences can be of arbitrary length: _Dorothy thinks that Toto suspects that Tin Man said that..._. There are many structures apart from sentences that can be defined recursively, and therefore many ways in which a sentence can embed instances of one category inside another. Over the years, languages in general have proved amenable to this kind of analysis.

Recently, however, the generally accepted idea that recursion is an essential property of human language has been challenged by Daniel Everett on the basis of his claims about the Pirahã language. Andrew Nevins, David Pesetsky and Cilene Rodrigues are among many who have argued against this.[3] Literary self-reference can in any case be argued to be different in kind from mathematical or logical recursion.[4]

Recursion plays a crucial role not only in syntax, but also in natural language semantics. The word _and_, for example, can be construed as a function that can apply to sentence meanings to create new sentences, and likewise for noun phrase meanings, verb phrase meanings, and others. It can also apply to intransitive verbs, transitive verbs, or ditransitive verbs. In order to provide a single denotation for it that is suitably flexible, _and_ is typically defined so that it can take any of these different types of meanings as arguments. This can be done by defining it for a simple case in which it combines sentences, and then defining the other cases recursively in terms of the simple one.[5]

A recursive grammar is a formal grammar that contains recursive production rules.[6]

Recursive humor

Recursion is sometimes used humorously in computer science, programming, philosophy, or mathematics textbooks, generally by giving a circular definition or self-reference, in which the putative recursive step does not get closer to a base case, but instead leads to an infinite regress. It is not unusual for such books to include a joke entry in their glossary along the lines of:

    Recursion, _see Recursion_.[7]

A variation is found on page 269 in the index of some editions of Brian Kernighan and Dennis Ritchie's book _The C Programming Language_; the index entry recursively references itself ("recursion 86, 139, 141, 182, 202, 269"). Early versions of this joke can be fund in "Let's talk Lisp" by Laurent Siklóssy (published by Prentice Hall PTR on December, 1, 1975 with a copyright date of 1976) and in "Software Tools" by Kernighan and Plauger (published by Addison-Wesley Professional on January, 11, 1976). The joke also appears in "The UNIX Programming Environment" by Kernighan and Pike. It did not appear in the first edition of _The C Programming Language_. The joke is part of the Functional programming folklore and was already widespread in the functional programming community before the publication of the afore-mentioned books.

Another joke is that "To understand recursion, you must understand recursion."[8] In the English-language version of the Google web search engine, when a search for "recursion" is made, the site suggests "Did you mean: _recursion_." An alternative form is the following, from Andrew Plotkin: _"If you already know what recursion is, just remember the answer. Otherwise, find someone who is standing closer to Douglas Hofstadter than you are; then ask him or her what recursion is."_

Recursive acronyms are other examples of recursive humor. PHP, for example, stands for "PHP Hypertext Preprocessor", WINE stands for "WINE Is Not an Emulator" GNU stands for "GNU's not Unix", and SPARQL denotes the "SPARQL Protocol and RDF Query Language".


In mathematics

—a confined recursion of triangles that form a fractal]]

Recursively defined sets

Example: the natural numbers

The canonical example of a recursively defined set is given by the natural numbers:

    0 is in ℕ
    if _n_ is in ℕ, then _n_ + 1 is in ℕ
    The set of natural numbers is the smallest set satisfying the previous two properties.

In mathematical logic, the Peano axioms (or Peano postulates or Dedekind–Peano axioms), are axioms for the natural numbers presented in the 19th century by the German mathematician Richard Dedekind and by the Italian mathematician Giuseppe Peano. The Peano Axioms define the natural numbers referring to a recursive successor function and addition and multiplication as recursive functions.

Example: Proof procedure

Another interesting example is the set of all "provable" propositions in an axiomatic system that are defined in terms of a prof procedure which is inductively (or recursively) defined as follows:

-   If a proposition is an axiom, it is a provable proposition.
-   If a proposition can be derived from true reachable propositions by means of inference rules, it is a provable proposition.
-   The set of provable propositions is the smallest set of propositions satisfying these conditions.

Finite subdivision rules

Finite subdivision rules are a geometric form of recursion, which can be used to create fractal-like images. A subdivision rule starts with a collection of polygons labelled by finitely many labels, and then each polygon is subdivided into smaller labelled polygons in a way that depends only on the labels of the original polygon. This process can be iterated. The standard `middle thirds' technique for creating the Cantor set is a subdivision rule, as is barycentric subdivision.

Functional recursion

A function may be recursively defined in terms of itself. A familiar example is the Fibonacci number sequence: _F_(_n_) = _F_(_n_ − 1) + _F_(_n_ − 2). For such a definition to be useful, it must lead to non-recursively defined values, in this case _F_(0) = 0 and _F_(1) = 1.

A famous recursive function is the Ackermann function, which, unlike the Fibonacci sequence, cannot be expressed without recursion.

Proofs involving recursive definitions

Applying the standard technique of proof by cases to recursively defined sets or functions, as in the preceding sections, yields structural induction, a powerful generalization of mathematical induction widely used to derive proofs in mathematical logic and computer science.

Recursive optimization

Dynamic programming is an approach to optimization that restates a multiperiod or multistep optimization problem in recursive form. The key result in dynamic programming is the Bellman equation, which writes the value of the optimization problem at an earlier time (or earlier step) in terms of its value at a later time (or later step).

The recursion theorem

In set theory, this is a theorem guaranteeing that recursively defined functions exist. Given a set _X_, an element _a_ of _X_ and a function f : X → X, the theorem states that there is a unique function F : ℕ → X (where ℕ denotes the set of natural numbers including zero) such that

_F_(0) = _a_

_F_(_n_ + 1) = _f_(_F_(_n_))
for any natural number _n_.

Proof of uniqueness

Take two functions F : ℕ → X and G : ℕ → X such that:

_F_(0) = _a_

_G_(0) = _a_

_F_(_n_ + 1) = _f_(_F_(_n_))

_G_(_n_ + 1) = _f_(_G_(_n_))

where _a_ is an element of _X_.

It can be proved by mathematical induction that F(n) = G(n) for all natural numbers _n_:

    BASE CASE: F(0) = a = G(0) so the equality holds for n = 0.

    INDUCTIVE STEP: Suppose F(k) = G(k) for some k ∈ ℕ. Then F(k + 1) = f(F(k)) = f(G(k)) = G(k + 1).

        Hence F(k) = G(k) implies F(k+1) = G(k+1).

By induction, F(n) = G(n) for all n ∈ ℕ.


In computer science

A common method of simplification is to divide a problem into subproblems of the same type. As a computer programming technique, this is called divide and conquer and is key to the design of many important algorithms. Divide and conquer serves as a top-down approach to problem solving, where problems are solved by solving smaller and smaller instances. A contrary approach is dynamic programming. This approach serves as a bottom-up approach, where problems are solved by solving larger and larger instances, until the desired size is reached.

A classic example of recursion is the definition of the factorial function, given here in C code:

    unsigned int factorial(unsigned int n) {
        if (n == 0) {
            return 1;
        } else {
            return n * factorial(n - 1);
        }
    }

The function calls itself recursively on a smaller version of the input and multiplies the result of the recursive call by , until reaching the base case, analogously to the mathematical definition of factorial.

Recursion in computer programming is exemplified when a function is defined in terms of simpler, often smaller versions of itself. The solution to the problem is then devised by combining the solutions obtained from the simpler versions of the problem. One example application of recursion is in parsers for programming languages. The great advantage of recursion is that an infinite set of possible sentences, designs or other data can be defined, parsed or produced by a finite computer program.

Recurrence relations are equations to define one or more sequences recursively. Some specific kinds of recurrence relation can be "solved" to obtain a non-recursive definition.

Use of recursion in an algorithm has both advantages and disadvantages. The main advantage is usually simplicity. The main disadvantage is that the memory usage of recursive algorithms may grow very quickly, rendering them impractical.


In art

s by Zvyozdochkin and Malyutin, 1892]] 's _Stefaneschi Triptych_, 1320, recursively contains an image of itself (held up by the kneeling figure in the central panel).]]

The Russian Doll or Matryoshka Doll is a physical artistic example of the recursive concept.[9]

Recursion has been used in paintings since Giotto's _Stefaneschi Triptych_, made in 1320. Its central panel contains the kneeling figure of Cardinal Stefaneschi, holding up the triptych itself as an offering.[10]

M. C. Escher's _Print Gallery_ (1956) is a print which depicts a distorted city which contains a gallery which recursively contains the picture, and so _ad infinitum_.[11]


See also

-   Corecursion
-   Course-of-values recursion
-   Digital infinity
-   Fixed point combinator
-   Infinite compositions of analytic functions
-   Infinite loop
-   Infinitism
-   Iterated function
-   Mise en abyme

-   Reentrant (subroutine)
-   Self-reference
-   Strange loop
-   Tail recursion
-   Tupper's self-referential formula
-   Turtles all the way down


References


Bibliography

-   -   -   -   -   -   -   - offers a treatment of corecursion.

-   -   -   -   -   , first chapter on set theory.


External links

-   Recursion - tutorial by Alan Gauld
-   Zip Files All The Way Down
-   Nevins, Andrew and David Pesetsky and Cilene Rodrigues. Evidence and Argumentation: A Reply to Everett (2009). Language 85.3: 671--681 (2009)

Category:Theory of computation Recursion Category:Self-reference Category:Feedback

[1]

[2]

[3]

[4]

[5] Barbara Partee and Mats Rooth. 1983. In Rainer Bäuerle et al., _Meaning, Use, and Interpretation of Language_. Reprinted in Paul Portner and Barbara Partee, eds. 2002. _Formal Semantics: The Essential Readings_. Blackwell.

[6] .

[7]

[8]

[9]

[10]

[11]