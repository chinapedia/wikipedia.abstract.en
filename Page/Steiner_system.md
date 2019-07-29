250px is a Steiner triple system S(2,3,7). The blocks are the 7 lines, each containing 3 points. Every pair of points belongs to a unique line.]] In combinatorial mathematics, a STEINER SYSTEM (named after Jakob Steiner) is a type of block design, specifically a t-design with λ = 1 and _t_ ≥ 2.

A Steiner system with parameters _t_, _k_, _n_, written S(_t_,_k_,_n_), is an _n_-element set _S_ together with a set of _k_-element subsets of _S_ (called BLOCKS) with the property that each _t_-element subset of _S_ is contained in exactly one block. In an alternate notation for block designs, an S(_t_,_k_,_n_) would be a _t_-(_n_,_k_,1) design.

This definition is relatively new. The classical definition of Steiner systems also required that _k_ = _t_ + 1. An S(2,3,_n_) was (and still is) called a _Steiner triple_ (or _triad_) _system_, while an S(3,4,_n_) is called a _Steiner quadruple system_, and so on. With the generalization of the definition, this naming system is no longer strictly adhered to.

Long-standing problems in design theory were whether there exist any nontrivial Steiner systems (nontrivial meaning _t_ < _k_ < _n_) with _t_ ≥ 6; also whether infinitely many have _t_ = 4 or 5.[1] Both existences were proved by Peter Keevash in 2014. His proof is non-constructive and, as of 2019, no actual Steiner systems are known for large values of _t_.[2][3][4]


Types of Steiner systems

A FINITE PROJECTIVE PLANE of order , with the lines as blocks, is an , since it has points, each line passes through points, and each pair of distinct points lies on exactly one line.

A FINITE AFFINE PLANE of order , with the lines as blocks, is an . An affine plane of order can be obtained from a projective plane of the same order by removing one block and all of the points in that block from the projective plane. Choosing different blocks to remove in this way can lead to non-isomorphic affine planes.

An S(3,4,_n_) is called a STEINER QUADRUPLE SYSTEM. A necessary and sufficient condition for the existence of an S(3,4,_n_) is that _n_ ≡ 2 or 4 (mod 6). The abbreviation SQS(_n_) is often used for these systems. Up to isomorphism, SQS(8) and SQS(10) are unique, there are 4 SQS(14)s and 1,054,163 SQS(16)s.[5]

An S(4,5,_n_) is called a STEINER QUINTUPLE SYSTEM. A necessary condition for the existence of such a system is that _n_ ≡ 3 or 5 (mod 6) which comes from considerations that apply to all the classical Steiner systems. An additional necessary condition is that _n_ $\not\equiv$ 4 (mod 5), which comes from the fact that the number of blocks must be an integer. Sufficient conditions are not known. There is a unique Steiner quintuple system of order 11, but none of order 15 or order 17.[6] Systems are known for orders 23, 35, 47, 71, 83, 107, 131, 167 and 243. The smallest order for which the existence is not known (as of 2011) is 21.

Steiner triple systems

An S(2,3,_n_) is called a STEINER TRIPLE SYSTEM, and its blocks are called TRIPLES. It is common to see the abbreviation STS(_n_) for a Steiner triple system of order _n_. The total number of pairs is _n(n-1)/2_, of which three appear in a triple, and so the total number of triples is _n_(_n_−1)/6. This shows that _n_ must be of the form _6k+1_ or _6k + 3_ for some _k_. The fact that this condition on _n_ is sufficient for the existence of an S(2,3,_n_) was proved by Raj Chandra Bose[7] and T. Skolem.[8] The projective plane of order 2 (the Fano plane) is an STS(7) and the affine plane of order 3 is an STS(9). Up to isomorphism, the STS(7) and STS(9) are unique, there are two STS(13)s, 80 STS(15)s, and 11,084,874,829 STS(19)s.[9]

Some of the S(2,3,n) systems can have their blocks be partitioned into (n-1)/2 sets of (n/3) triples each. This is called _resolvable_ and such systems are called _Kirkman triple systems_ after Thomas Kirkman, who studied such resolvable systems before Steiner. Dale Mesner, Earl Kramer, and others investigated collections of Steiner triple systems that are mutually disjoint (i.e., no two Steiner systems in such a collection share a common triplet). It is known (Bays 1917, Kramer & Mesner 1974) that seven different S(2,3,9) systems can be generated to together cover all 84 triplets on a 9-set; it was also known by them that there are 15360 different ways to find such 7-sets of solutions, which reduce to two non-isomorphic solutions under relabeling, with multiplicities 6720 and 8640 respectively. The corresponding question for finding thirteen different disjoint S(2,3,15) systems was asked by James Sylvester in 1860 and answered by RHF Denniston in 1974. There is at least one such 13-set of S(2,3,15) but its isomorphism is not known.

We can define a multiplication on the set _S_ using the Steiner triple system by setting _aa_ = _a_ for all _a_ in _S_, and _ab_ = _c_ if {_a_,_b_,_c_} is a triple. This makes _S_ an idempotent, commutative quasigroup. It has the additional property that _ab_ = _c_ implies _bc_ = _a_ and _ca_ = _b_.[10] Conversely, any (finite) quasigroup with these properties arises from a Steiner triple system. Commutative idempotent quasigroups satisfying this additional property are called _Steiner quasigroups_.[11]


Properties

It is clear from the definition of that 1 < t < k < n. (Equalities, while technically possible, lead to trivial systems.)

If exists, then taking all blocks containing a specific element and discarding that element gives a _derived system_ . Therefore, the existence of is a necessary condition for the existence of .

The number of -element subsets in is $\tbinom n t$, while the number of -element subsets in each block is $\tbinom k t$. Since every -element subset is contained in exactly one block, we have $\tbinom n t = b\tbinom k t$, or

$$b = \frac{\tbinom nt}{\tbinom kt} = \frac{n(n-1)\cdots(n-t+1)}{k(k-1)\cdots(k-t+1)},$$
where is the number of blocks. Similar reasoning about -element subsets containing a particular element gives us $\tbinom{n-1}{t-1}=r\tbinom{k-1}{t-1}$, or

$$r=\frac{\tbinom{n-1}{t-1}}{\tbinom{k-1}{t-1}}$$
=$\frac{(n-t+1)\cdots(n-2)(n-1)}{(k-t+1)\cdots(k-2)(k-1)},$ where is the number of blocks containing any given element. From these definitions follows the equation bk = rn. It is a necessary condition for the existence of that and are integers. As with any block design, Fisher's inequality b ≥ n is true in Steiner systems.

Given the parameters of a Steiner system and a subset of size t′ ≤ t, contained in at least one block, one can compute the number of blocks intersecting that subset in a fixed number of elements by constructing a Pascal triangle.[12] In particular, the number of blocks intersecting a fixed block in any number of elements is independent of the chosen block.

The number of blocks that contain any _i_-element set of points is:

$$\lambda_i =  \left.\binom{n-i}{t-i} \right/ \binom{k-i}{t-i} \text{ for } i = 0,1,\ldots,t,$$

It can be shown that if there is a Steiner system , where is a prime power greater than 1, then ≡ 1 or . In particular, a Steiner triple system must have . And as we have already mentioned, this is the only restriction on Steiner triple systems, that is, for each natural number , systems and exist.


History

Steiner triple systems were defined for the first time by Wesley S. B. Woolhouse in 1844 in the Prize question #1733 of Lady's and Gentlemen's Diary.[13] The posed problem was solved by . In 1850 Kirkman posed a variation of the problem known as Kirkman's schoolgirl problem, which asks for triple systems having an additional property (resolvability). Unaware of Kirkman's work, reintroduced triple systems, and as this work was more widely known, the systems were named in his honor.


Mathieu groups

Several examples of Steiner systems are closely related to group theory. In particular, the finite simple groups called Mathieu groups arise as automorphism groups of Steiner systems:

-   The Mathieu group M₁₁ is the automorphism group of a S(4,5,11) Steiner system
-   The Mathieu group M₁₂ is the automorphism group of a S(5,6,12) Steiner system
-   The Mathieu group M₂₂ is the unique index 2 subgroup of the automorphism group of a S(3,6,22) Steiner system
-   The Mathieu group M₂₃ is the automorphism group of a S(4,7,23) Steiner system
-   The Mathieu group M₂₄ is the automorphism group of a S(5,8,24) Steiner system.


The Steiner system S(5, 6, 12)

There is a unique S(5,6,12) Steiner system; its automorphism group is the Mathieu group M₁₂, and in that context it is denoted by W₁₂.

Projective line construction

This construction is due to Carmichael (1937).[14]

Add a new element, call it , to the 11 elements of the finite field ₁₁ (that is, the integers mod 11). This set, , of 12 elements can be formally identified with the points of the projective line over ₁₁. Call the following specific subset of size 6,

{∞, 1, 3, 4, 5, 9},
a "block" (it contains together with the 5 nonzero squares in ₁₁). From this block, we obtain the other blocks of the (5,6,12) system by repeatedly applying the linear fractional transformations:

$$z' = f(z) = \frac{az + b}{cz + d},$$
where are in ₁₁ and . With the usual conventions of defining and , these functions map the set onto itself. In geometric language, they are projectivities of the projective line. They form a group under composition which is the projective special linear group (2,11) of order 660. There are exactly five elements of this group that leave the starting block fixed setwise,[15] namely those such that and so that . So there will be 660/5 = 132 images of that block. As a consequence of the multiply transitive property of this group acting on this set, any subset of five elements of will appear in exactly one of these 132 images of size six.

Kitten construction

An alternative construction of W₁₂ is obtained by use of the 'kitten' of R.T. Curtis,[16] which was intended as a "hand calculator" to write down blocks one at a time. The kitten method is based on completing patterns in a 3x3 grid of numbers, which represent an affine geometry on the vector space F₃xF₃, an S(2,3,9) system.

Construction from K₆ graph factorization

The relations between the graph factors of the complete graph K₆ generate an S(5,6,12).[17] A K₆ graph has 6 vertices, 15 edges, 15 perfect matchings, and 6 different 1-factorizations (ways to partition the edges into disjoint perfect matchings). The set of vertices (labeled 123456) and the set of factorizations (labeled _ABCDEF_) provide one block each. Every pair of factorizations has exactly one perfect matching in common. Suppose factorizations _A_ and _B_ have the common matching with edges 12, 34 and 56. Add three new blocks _AB_3456, 12_AB_56, and 1234_AB_, replacing each edge in the common matching with the factorization labels in turn. Similarly add three more blocks 12_CDEF_, 34_CDEF_, and 56_CDEF_, replacing the factorization labels by the corresponding edge labels of the common matching. Do this for all 15 pairs of factorizations to add 90 new blocks. Finally, take the full set of $\tbinom{12}{6} = 924$ combinations of 6 objects out of 12, and discard any combination that has 5 or more objects in common with any of the 92 blocks generated so far. Exactly 40 blocks remain, resulting in blocks of the S(5,6,12). This method works because there is an outer automorphism on the symmetric group _S_₆, which maps the vertices to factorizations and the edges to partitions. Permuting the vertices causes the factorizations to permute differently, in accordance with the outer automorphism.


The Steiner system S(5, 8, 24)

The Steiner system S(5, 8, 24), also known as the WITT DESIGN or WITT GEOMETRY, was first described by and rediscovered by . This system is connected with many of the sporadic simple groups and with the exceptional 24-dimensional lattice known as the Leech lattice. The automorphism group of S(5, 8, 24) is the Mathieu group M₂₄, and in that context the design is denoted W₂₄ ("W" for "Witt")

Direct lexicographic generation

All 8-element subsets of a 24-element set are generated in lexicographic order, and any such subset which differs from some subset already found in fewer than four positions is discarded.

The list of octads for the elements 01, 02, 03, ..., 22, 23, 24 is then:



        01 02 03 04 05 06 07 08
        01 02 03 04 09 10 11 12
        01 02 03 04 13 14 15 16
        .
        . (next 753 octads omitted)
        .
        13 14 15 16 17 18 19 20
        13 14 15 16 21 22 23 24
        17 18 19 20 21 22 23 24

Each single element occurs 253 times somewhere in some octad. Each pair occurs 77 times. Each triple occurs 21 times. Each quadruple (tetrad) occurs 5 times. Each quintuple (pentad) occurs once. Not every hexad, heptad or octad occurs.

Construction from the binary Golay code

The 4096 codewords of the 24-bit binary Golay code are generated, and the 759 codewords with a Hamming weight of 8 correspond to the S(5,8,24) system.

The Golay code can be constructed by many methods, such as generating all 24-bit binary strings in lexicographic order and discarding those that differ from some earlier one in fewer than 8 positions. The result looks like this:

        000000000000000000000000
        000000000000000011111111
        000000000000111100001111
        .
        . (next 4090 24-bit strings omitted)
        .
        111111111111000011110000
        111111111111111100000000
        111111111111111111111111

The codewords form a group under the XOR operation.

Construction from the Miracle Octad Generator

The Miracle Octad Generator (MOG) is a hand calculator to write down octads, such as those containing specified subsets. It consists of a 4x6 array with certain weights assigned to the rows. In particular, an 8-subset should obey three rules in order to be an octad of S(5,8,24). First, each of the 6 columns should have the same parity, that is, they should all have an odd number of cells or they should all have an even number of cells. Second, the top row should have the same parity as each of the columns. Third, the rows are assigned respectively the weights 0, 1, ω, and ω², where ω is a complex cube root of unity and column sums are calculated for the 8 cells selected over the 6 columns. The resulting column sums should form a valid _hexacodeword_ of the form where _a, b, c_ are in }. If the column sums' parities don't match the row sum parity, or each other, or if there do not exist _a, b, c_ such that the column sums form a valid hexacodeword, then that subset of 8 is not an octad of S(5,8,24).

The MOG is based on creating a bijection (Conwell 1910, "The three-space PG(3,2) and its group") between the 35 ways to partition an 8-set into two different 4-sets, and the 35 lines of the Fano 3-space PG(3,2).

It is also geometrically related (Cullinane, "Symmetry Invariance in a Diamond Ring", Notices of the AMS, pp A193-194, Feb 1979) to the 35 different ways to partition a 4x4 array into 4 different groups of 4 cells each, such that if the 4x4 array represents a four-dimensional finite affine space, then the groups form a set of parallel subspaces.


See also

-   Constant weight code
-   Kirkman's schoolgirl problem
-   Sylvester–Gallai configuration


Notes


References

-   .

-   -   . 2nd ed. (1999) .

-   -   -   -   -   -   .

-   -   -   -   .

-


External links

-   -   -   Steiner systems by Andries E. Brouwer
-   Implementation of S(5,8,24) by Dr. Alberto Delgado, Gabe Hart, and Michael Kolkebeck
-   S(5, 8, 24) Software and Listing by Johan E. Mebius

de:Steiner-Tripel-System

Category:Design theory Category:Design of experiments Category:Set families

[1]

[2]

[3]

[4]

[5]

[6]

[7]

[8] T. Skolem. Some remarks on the triple systems of Steiner. Math. Scand. 6 (1958), 273–280.

[9]

[10] This property is equivalent to saying that (xy)y = x for all x and y in the idempotent commutative quasigroup.

[11]

[12]

[13]

[14]

[15]

[16]

[17] EAGTS textbook