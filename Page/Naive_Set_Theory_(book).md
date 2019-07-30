    _See also Naive set theory for the mathematical topic._

_NAIVE SET THEORY_ is a mathematics textbook by Paul Halmos providing an undergraduate introduction to set theory.[1] Originally published by _Van Nostrand_ in 1960,[2] it was reprinted in the Springer-Verlag Undergraduate Texts in Mathematics series in 1974.[3]

While the title states that it is naive, which is usually taken to mean without axioms, the book does introduce all the axioms of ZFC set theory (except the Axiom of Foundation), and gives correct and rigorous definitions for basic objects.[4][5] Where it differs from a "true" axiomatic set theory book is its character: there are no discussions of axiomatic minutiae, and there is next to nothing about advanced topics like large cardinals. Instead, it tries to be intelligible to someone who has never thought about set theory before.

Halmos later stated that it was the fastest book he wrote, taking about six months, and that the book "wrote itself".[6]


Absence of the Axiom of Foundation

As noted above, the book omits the Axiom of Foundation. Halmos repeatedly dances around the issue of whether or not a set can contain itself.

-   p. 1: "a set may also be an element of some _other_ set" (emphasis added)
-   p. 3: "is A ∈ A ever true? It is certainly not true of any reasonable set that anyone has ever seen."
-   p. 6: "B ∈ B ... unlikely, but not obviously impossible"

But Halmos does let us prove that there are certain sets that cannot contain themselves.

-   p. 44: Halmos lets us prove that ω ∉ ω. For if ω ∈ ω, then ω − {ω} would still be a successor set, because ω ≠ ∅ and ω is not the successor of any natural number. But ω is not a subset of ω − {ω}, contradicting the definition of ω as a subset of every successor set.
-   p. 47: Halmos proves the lemma that "no natural number is a subset of any of its elements." This lets us prove that no natural number can contain itself. For if n ∈ n, where n is a natural number, then n ⊂ n ∈ n, which contradicts the lemma.
-   p. 75: "An _ordinal number_ is defined as a well ordered set α such that s(ξ) = ξ for all ξ in α; here s(ξ) is, as before, the initial segment {η ∈ α: η < ξ}." The well ordering is defined as follows: if ξ and η are elements of an ordinal number α, then ξ < η means ξ ∈ η (pp. 75-76). By his choice of the symbol < instead of ≤, Halmos implies that the well ordering < is strict (pp. 55-56). This definition of < makes it impossible to have ξ ∈ ξ, where ξ is an element of an ordinal number. That's because ξ ∈ ξ means ξ < ξ, which implies ξ ≠ ξ (because < is strict), which is impossible.
-   p. 75: the above definition of an ordinal number also makes it impossible to have α ∈ α, where α is an ordinal number. That's because α ∈ α implies α = s(α). This gives us α ∈ α = s(α) = {η ∈ α: η < α}, which implies α < α, which implies α ≠ α (because < is strict), which is impossible.


Errata

-   p. 30, line 10: "x onto y" should be "x into y".
-   p. 73, line 19: "for each z in X" should be "for each a in X".
-   p. 75, line 3: "if and only if x ∈ F(n)" should be "if and only if x = {b: S(n, b)}".


See also

-   List of publications in mathematics


Bibliography

-   Halmos, Paul, _Naive Set Theory_. Princeton, NJ: D. Van Nostrand Company, 1960. Reprinted by Springer-Verlag, New York, 1974. (Springer-Verlag edition). Reprinted by Martino Fine Books, 2011. (Paperback edition).


References


External links

-   A list of textbooks on set theory compiled by the participants of the mathematics stack exchange
-   Reviews:_Naive Set Theory_ from Goodreads.

Category:1960 books Category:Mathematics textbooks Category:Springer Science+Business Media books Category:Set theory

[1] Review of _Naive Set Theory_ by H. Mirkil (April 1961), _American Mathematical Monthly_ 68 (4): 392, .

[2]

[3]

[4] Review of _Naive Set Theory_, L. Rieger, .

[5] Review of _Naive Set Theory_, Alfons Borgers (July 1969), _Journal of Symbolic Logic_ 34 (2): 308, .

[6] .