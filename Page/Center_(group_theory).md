of Dih₄, the dihedral group of order 8. The center is {0,7}: The row starting with 7 is the transpose of the column starting with 7. The entries 7 are symmetric to the main diagonal. (Only for the identity element is this true in all groups.)]] In abstract algebra, the CENTER of a group, , is the set of elements that commute with every element of . It is denoted , from German _Zentrum,_ meaning _center_. In set-builder notation,

    {_z_ ∈ _G_ ∣ ∀_g_ ∈ _G_, _zg_ {{=}} _gz_} }}.

The center is a normal subgroup, . As a subgroup, it is always characteristic, but is not necessarily fully characteristic. The quotient group, , is isomorphic to the inner automorphism group, .

A group is abelian if and only if _G_}}. At the other extreme, a group is said to be CENTERLESS if is trivial; i.e., consists only of the identity element.

The elements of the center are sometimes called CENTRAL.


As a subgroup

The center of _G_ is always a subgroup of . In particular:

1.  contains the identity element of , because it commutes with every element of , by definition: _g_ {{=}} _ge_}}, where is the identity;

2.  If and are in , then so is , by associativity: _x_(_yg_) {{=}} _x_(_gy_) {{=}} (_xg_)_y_ {{=}} (_gx_)_y_ {{=}} _g_(_xy_)}} for each ; i.e., is closed;
3.  If is in , then so is as, for all in , commutes with : _xg_) ⇒ (_x__gxx_ {{=}} _x__xgx_) ⇒ (_x__g_ {{=}} _gx_)}}.

Furthermore, the center of is always a normal subgroup of . Since all elements of commute, it is closed under conjugation.


Conjugacy classes and centralizers

By definition, the center is the set of elements for which the conjugacy class of each element is the element itself; i.e., {_g_}}}.

The center is also the intersection of all the centralizers of each element of . As centralizers are subgroups, this again shows that the center is a subgroup.


Conjugation

Consider the map, , from to the automorphism group of defined by _ϕ_}}, where is the automorphism of defined by

    _ϕ_(_h_) {{=}} _ghg_}}.

The function, is a group homomorphism, and its kernel is precisely the center of , and its image is called the inner automorphism group of , denoted . By the first isomorphism theorem we get,

    .

The cokernel of this map is the group of outer automorphisms, and these form the exact sequence

    .


Examples

, is . | The center of the symmetric group, , is trivial for . | The center of the alternating group, , is trivial for . | The center of the general linear group, , is the collection of scalar matrices, }}. | The center of the orthogonal group, is }}. | The center of the special orthogonal group, is }} when _n_ is even, and trivial when _n_ is odd. | The center of the unitary group, U(n) is {e^(iθ) ⋅ I_(n)|θ ∈ [0, 2π)}. | The center of the special unitary group, SU(n) is $\{e^{i\theta}\cdot I_n|\theta = \frac{2k\pi}{n}, k = 0, 1, ... n - 1\}$. | The center of the multiplicative group of non-zero quaternions is the multiplicative group of non-zero real numbers. | Using the class equation one can prove that the center of any non-trivial finite p-group is non-trivial. | If the quotient group, , is cyclic, is abelian (and so Z(_G_)}}, and is trivial). }}


Higher centers

Quotienting out by the center of a group yields a sequence of groups called the UPPER CENTRAL SERIES:

    _G_) ⟶ (_G_ {{=}} _G_/Z(_G_)) ⟶ (_G_ {{=}} _G_/Z(_G_)) ⟶ ⋯}}

The kernel of the map, is the TH CENTER of (SECOND CENTER, THIRD CENTER, etc.), and is denoted . Concretely, the ()-st center are the terms that commute with all elements up to an element of the th center. Following this definition, one can define the 0th center of a group to be the identity subgroup. This can be continued to transfinite ordinals by transfinite induction; the union of all the higher centers is called the HYPERCENTER.[1]

The ascending chain of subgroups



stabilizes at _i_ (equivalently, Z(_G_)}}) if and only if is centerless.

Examples

-   For a centerless group, all higher centers are zero, which is the case Z(_G_)}} of stabilization.
-   By Grün's lemma, the quotient of a perfect group by its center is centerless, hence all higher centers equal the center. This is a case of stabilization at Z(_G_)}}.


See also

-   Center (algebra)
-   center
-   Centralizer and normalizer
-   Conjugacy class


Notes


External links

-

Category:Group theory Category:Functional subgroups

[1] This union will include transfinite terms if the UCS does not stabilize at a finite stage.