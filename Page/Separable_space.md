In mathematics, a topological space is called SEPARABLE if it contains a countable, dense subset; that is, there exists a sequence {x_(n)}_(n = 1)^(∞) of elements of the space such that every nonempty open subset of the space contains at least one element of the sequence.

Like the other axioms of countability, separability is a "limitation on size", not necessarily in terms of cardinality (though, in the presence of the Hausdorff axiom, this does turn out to be the case; see below) but in a more subtle topological sense. In particular, every continuous function on a separable space whose image is a subset of a Hausdorff space is determined by its values on the countable dense subset.

Contrast separability with the related notion of second countability, which is in general stronger but equivalent on the class of metrizable spaces.


First examples

Any topological space which is itself finite or countably infinite is separable, for the whole space is a countable dense subset of itself. An important example of an uncountable separable space is the real line, in which the rational numbers form a countable dense subset. Similarly the set of all vectors (r₁, …, r_(n)) ∈ ℝ^(n) in which r_(i) is rational for all _i_ is a countable dense subset of ℝ^(n); so for every n the n-dimensional Euclidean space is separable.

A simple example of a space which is not separable is a discrete space of uncountable cardinality.

Further examples are given below.


Separability versus second countability

Any second-countable space is separable: if $\scriptstyle \{U_n\}$ is a countable base, choosing any $\scriptstyle x_n \in U_n$ from the non-empty $\scriptstyle U_n$ gives a countable dense subset. Conversely, a metrizable space is separable if and only if it is second countable, which is the case if and only if it is Lindelöf.

To further compare these two properties:

-   An arbitrary subspace of a second-countable space is second countable; subspaces of separable spaces need not be separable (see below).
-   Any continuous image of a separable space is separable ; even a quotient of a second-countable space need not be second countable.
-   A product of at most countably many separable spaces is separable. A countable product of second-countable spaces is second countable, but an uncountable product of second-countable spaces need not even be first countable.


Cardinality

The property of separability does not in and of itself give any limitations on the cardinality of a topological space: any set endowed with the trivial topology is separable, as well as second countable, quasi-compact, and connected. The "trouble" with the trivial topology is its poor separation properties: its Kolmogorov quotient is the one-point space.

A first-countable, separable Hausdorff space (in particular, a separable metric space) has at most the continuum cardinality 𝔠. In such a space, closure is determined by limits of sequences and any convergent sequence has at most one limit, so there is a surjective map from the set of convergent sequences with values in the countable dense subset to the points of X.

A separable Hausdorff space has cardinality at most 2^(𝔠), where 𝔠 is the cardinality of the continuum. For this closure is characterized in terms of limits of filter bases: if Y ⊆ X and z ∈ X, then $z\in\overline{Y}$ if and only if there exists a filter base ℬ consisting of subsets of Y which converges to z. The cardinality of the set S(Y) of such filter bases is at most 2^(2^(|Y|)). Moreover, in a Hausdorff space, there is at most one limit to every filter base. Therefore, there is a surjection S(Y) → X when $\overline{Y}=X.$

The same arguments establish a more general result: suppose that a Hausdorff topological space X contains a dense subset of cardinality κ. Then X has cardinality at most 2^(2^(κ)) and cardinality at most 2^(κ) if it is first countable.

The product of at most continuum many separable spaces is a separable space . In particular the space ℝ^(ℝ) of all functions from the real line to itself, endowed with the product topology, is a separable Hausdorff space of cardinality 2^(𝔠). More generally, if κ is any infinite cardinal, then a product of at most 2^(κ) spaces with dense subsets of size at most κ has itself a dense subset of size at most κ (Hewitt–Marczewski–Pondiczery theorem).


Constructive mathematics

Separability is especially important in numerical analysis and constructive mathematics, since many theorems that can be proved for nonseparable spaces have constructive proofs only for separable spaces. Such constructive proofs can be turned into algorithms for use in numerical analysis, and they are the only sorts of proofs acceptable in constructive analysis. A famous example of a theorem of this sort is the Hahn–Banach theorem.


Further examples

Separable spaces

-   Every compact metric space (or metrizable space) is separable.
-   Any topological space which is the union of a countable number of separable subspaces is separable. Together, these first two examples give a different proof that n-dimensional Euclidean space is separable.
-   The space C(K) of all continuous functions from a compact subset K ⊆ ℝ to the real line ℝ is separable.
-   The Lebesgue spaces L^(p)(X,μ), over a separable measure space ⟨X,ℳ,μ⟩, are separable for any 1 ≤ p < ∞.
-   The space C([0, 1]) of continuous real-valued functions on the unit interval [0, 1] with the metric of uniform convergence is a separable space, since it follows from the Weierstrass approximation theorem that the set ℚ[x] of polynomials in one variable with rational coefficients is a countable dense subset of C([0, 1]). The Banach–Mazur theorem asserts that any separable Banach space is isometrically isomorphic to a closed linear subspace of C([0, 1]).
-   A Hilbert space is separable if and only if it has a countable orthonormal basis. It follows that any separable, infinite-dimensional Hilbert space is isometric to the space ℓ² of square-summable sequences.
-   An example of a separable space that is not second-countable is the Sorgenfrey line 𝕊, the set of real numbers equipped with the lower limit topology.
-   A separable σ-algebra is a σ-algebra ℱ that is a separable space when considered as a metric space with metric ρ(A, B) = μ(A△B) for A, B ∈ ℱ and a given measure μ (and with △ being the symmetric difference operator).[1]

Non-separable spaces

-   The first uncountable ordinal ω₁, equipped with its natural order topology, is not separable.
-   The Banach space ℓ^(∞) of all bounded real sequences, with the supremum norm, is not separable. The same holds for L^(∞).
-   The Banach space of functions of bounded variation is not separable; note however that this space has very important applications in mathematics, physics and engineering.


Properties

-   A subspace of a separable space need not be separable (see the Sorgenfrey plane and the Moore plane), but every _open_ subspace of a separable space is separable, . Also every subspace of a separable metric space is separable.
-   In fact, every topological space is a subspace of a separable space of the same cardinality. A construction adding at most countably many points is given in ; if the space was a Hausdorff space then the space constructed which it embeds into is also a Hausdorff space.
-   The set of all real-valued continuous functions on a separable space has a cardinality less than or equal to _c_. This follows since such functions are determined by their values on dense subsets.
-   From the above property, one can deduce the following: If _X_ is a separable space having an uncountable closed discrete subspace, then _X_ cannot be normal. This shows that the Sorgenfrey plane is not normal.
-   For a compact Hausdorff space _X_, the following are equivalent:



        (i) _X_ is second countable.
        (ii) The space 𝒞(X, ℝ) of continuous real-valued functions on _X_ with the supremum norm is separable.
        (iii) _X_ is metrizable.

Embedding separable metric spaces

-   Every separable metric space is homeomorphic to a subset of the Hilbert cube. This is established in the proof of the Urysohn metrization theorem.
-   Every separable metric space is isometric to a subset of the (non-separable) Banach space _l_^(∞) of all bounded real sequences with the supremum norm; this is known as the Fréchet embedding.
-   Every separable metric space is isometric to a subset of C([0,1]), the separable Banach space of continuous functions [0,1]→R, with the supremum norm. This is due to Stefan Banach.
-   Every separable metric space is isometric to a subset of the Urysohn universal space.

_For nonseparable spaces_:

-   A metric space of density equal to an infinite cardinal is isometric to a subspace of , the space of real continuous functions on the product of copies of the unit interval.


References

-

-   -   -   -   -

Category:General topology Category:Properties of topological spaces

[1]