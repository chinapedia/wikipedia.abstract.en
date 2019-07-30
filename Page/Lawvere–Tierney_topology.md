In mathematics, a LAWVERE–TIERNEY TOPOLOGY is an analog of a Grothendieck topology for an arbitrary topos, used to construct a topos of sheaves. A Lawvere–Tierney topology is also sometimes also called a LOCAL OPERATOR or COVERAGE or TOPOLOGY or GEOMETRIC MODALITY. They were introduced by and Myles Tierney.


Definition

If _E_ is a topos, then a topology on _E_ is a morphism _j_ from the subobject classifier Ω to Ω such that _j_ preserves truth (j ∘ true = true), preserves intersections (j ∘  ∧  =  ∧  ∘ (j × j)), and is idempotent (j ∘ j = j).


_j_-closure

J-closure.png. χ_(s) is the characteristic morphism of _s_ as a subobject of _A_ and j ∘ χ_(s) is the characteristic morphism of s̄ which is the _j_-closure of _s_. The bottom two squares are pullback squares and they are contained in the top diagram as well: the first one as a trapezoid and the second one as a two-square rectangle.]] Given a subobject s : S ↣ A of an object _A_ with classifier χ_(s) : A → Ω, then the composition j ∘ χ_(s) defines another subobject s̄ : S̄ ↣ A of _A_ such that _s_ is a subobject of s̄, and s̄ is said to be the _j_-closure of _s_.

Some theorems related to _j_-closure are (for some subobjects _s_ and _w_ of _A_):

-   inflationary property: s ⊆ s̄
-   idempotence: $\bar s \equiv \bar \bar s$
-   preservation of intersections: $\overline{s \cap w} \equiv \bar s \cap \bar w$
-   preservation of order: s ⊆ w ⇒ s̄ ⊆ w̄
-   stability under pullback: $\overline{f^{-1}(s)} \equiv f^{-1}(\bar s)$.


Examples

Grothendieck topologies on a small category _C_ are essentially the same as Lawvere–Tierney topologies on the topos of presheaves of sets over _C_.


References

-   -   . Corrected reprint of the 1992 edition.

-

Category:Topos theory Category:Closure operators