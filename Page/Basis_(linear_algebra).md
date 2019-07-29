Basis}} 3d_two_bases_same_vector.svg In mathematics, a set of elements (vectors) in a vector space is called a BASIS, if every element of may be written in a unique way as a (finite) linear combination of elements of . The coefficients of this linear combination are referred to as COMPONENTS or COORDINATES on of the vector. The elements of a basis are called .

Equivalently is a basis if its elements are linearly independent and every element of is a linear combination of elements of .[1] In more general terms, a basis is a linearly independent spanning set.

A vector space can have several bases; however all the bases have the same number of elements, called the dimension of the vector space.


Definition

A BASIS of a vector space over a field (such as the real numbers or the complex numbers ) is a linearly independent subset of that spans . This means that a subset of is a basis if it satisfies the two following conditions:

-   the _linear independence_ property:



        for every finite subset of and every in , if , then necessarily ;

-   the _spanning_ property:



        for every (vector) in , it is possible to choose in and in such that .

The scalars are called the coordinates of the vector with respect to the basis , and by the first property they are uniquely determined.

A vector space that has a finite basis is called finite-dimensional. In this case, the subset that is considered (twice) in the above definition may be chosen as itself.

It is often convenient or even necessary to have an ordering on the basis vectors, e.g. for discussing orientation, or when one considers the scalar coefficients of a vector with respect to a basis, without referring explicitly to the basis elements. In this case, the ordering is necessary for associating each coefficient to the corresponding basis element. This ordering can be done by numbering the basis elements. For example, when dealing with (_m_, _n_)-matrices, the element (in the th row and th column) can be referred to the th element of a basis consisting of the (_m_, _n_)-unit-matrices (varying column-indices before row-indices). For emphasizing that an order has been chosen, one speaks of an ORDERED BASIS, which is therefore not simply an unstructured set, but e.g. a sequence, or an indexed family, or similar; see _Ordered bases and coordinates_ below.


Examples

Basis_graph_(no_label).svg in _R²_. The blue and orange vectors are the elements of the basis; the green vector can be given in terms of the basis vectors, and so is linearly dependent upon them.]]

-   The set {{math of the ordered pairs of real numbers is a vector space for the component-wise addition

(_a_, _b_) + (_c_, _d_) = (_a_ + _c_, _b_ + _d_),

    and scalar multiplication
    _λ_(_a_, _b_) = (_λ__a_, _λ__b_),

    where λ is any real number. A simple basis of this vector space, called the standard basis consists of the two vectors and , since, any vector of may be uniquely written as
    _v_ = _a__e_₁ + _b__e_₂.

    Any other pair of linearly independent vectors of , such as and , forms also a basis of R².

-   More generally, if is a field, the set F^(n) of [[tuple|

_N_ random vectors are all pairwise ε-orthogonal with probability .[2] This _N_ growth exponentially with dimension _n_ and N ≫ n for sufficiently big _n_. This property of random bases is a manifestation of the so-called _measure concentration phenomenon_.[3]

The figure (right) illustrates distribution of lengths N of pairwise almost orthogonal chains of vectors that are independently randomly sampled from the _n_-dimensional cube as a function of dimension, _n_. A point is first randomly selected in the cube. The second point is randomly chosen in the same cube. If the angle between the vectors was within then the vector was retained. At the next step a new vector is generated in the same hypercube, and its angles with the previously generated vectors are evaluated. If these angles are within then the vector is retained. The process is repeated until the chain of almost orthogonality breaks, and the number of such pairwise almost orthogonal vectors (length of the chain) is recorded. For each _n_, 20 pairwise almost orthogonal chains where constructed numerically for each dimension. Distribution of the length of these chains is presented.


Proof that every vector space has a basis

Let V be any vector space over some field F. Let X be the set of all linearly independent subsets of V.

The set X is nonempty since the empty set is an independent subset of V, and it is partially ordered by inclusion, which is denoted, as usual, by .

Let Y be a subset of X that is totally ordered by , and let L_(Y) be the union of all the elements of Y (which are themselves certain subsets of V).

Since (Y, ⊆) is totally ordered, every finite subset of L_(Y) is a subset of an element of Y, which is a linearly independent subset of V, and hence every finite subset of L_(Y) is linearly independent. Thus L_(Y) is linearly independent, so L_(Y) is an element of X. Therefore, L_(Y) is an upper bound for Y in (X, ⊆): it is an element of X, that contains every element Y.

As X is nonempty, and every totally ordered subset of (X, ⊆) has an upper bound in X, Zorn's lemma asserts that X has a maximal element. In other words, there exists some element L_(MAX) of X satisfying the condition that whenever L_(MAX) ⊆ L for some element L of X, then L = L_(MAX).

It remains to prove that L_(MAX) is a basis of V. Since L_(MAX) belongs to X, we already know that L_(MAX) is a linearly independent subset of V.

If L_(MAX) would not span V, there would exist some vector W of V that cannot be expressed as a linear combination of elements of L_(MAX) (with coefficients in the field F). In particular, W cannot be an element of L_(MAX). Let L_(W) = L_(MAX) ∪ {W}. This set is an element of X, that is, it is a linearly independent subset of V (because W is not in the span of L_(MAX), and L_(MAX) is independent). As L_(MAX) ⊆ L_(W), and L_(MAX) ≠ L_(W) (because L_(W) contains the vector W that is not contained in L_(MAX)), this contradicts the maximality of L_(MAX). Thus this shows that L_(MAX) spans V.

Hence L_(MAX) is linearly independent and spans V. It is thus a basis of V, and this proves that every vector space has a basis.

This proof relies on Zorn's lemma, which is equivalent to the axiom of choice. Conversely, it may be proved that if every vector space has a basis, then the axiom of choice is true; thus the two assertions are equivalent.


See also

-   Change of basis
-   Frame of a vector space
-   Spherical basis


Notes


References

General references

-   -   -

Historical references

-   -   -   -   -   -   , reprint:

-   -   -   -


External links

-   Instructional videos from Khan Academy
    -   Introduction to bases of subspaces
    -   Proof that any subspace basis has same number of elements
-   -

Category:Linear algebra Category:Articles containing proofs Category:Matroid theory Category:Axiom of choice

[1]

[2]

[3]