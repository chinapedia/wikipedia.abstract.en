of sets indexed over the real numbers R; that is, there is a set S_(_i_) for each real number _i_, with a small sample shown above. Each set contains at least one, and possibly infinitely many, elements. The axiom of choice allows us to arbitrarily select a single element from each set, forming a corresponding family of elements (_x__(_i_)) also indexed over the real numbers, with _x__(_i_) drawn from S_(_i_). In general, the collections may be indexed over any set _I_, not just R.]]

In mathematics, the AXIOM OF CHOICE, or AC, is an axiom of set theory equivalent to the statement that _the Cartesian product of a collection of non-empty sets is non-empty_. Informally put, the axiom of choice says that given any collection of bins, each containing at least one object, it is possible to make a selection of exactly one object from each bin, even if the collection is infinite. Formally, it states that for every indexed family (S_(i))_(i ∈ I) of nonempty sets there exists an indexed family (x_(i))_(i ∈ I) of elements such that x_(i) ∈ S_(i) for every i ∈ I. The axiom of choice was formulated in 1904 by Ernst Zermelo in order to formalize his proof of the well-ordering theorem.[1]

In many cases, such a selection can be made without invoking the axiom of choice; this is in particular the case if the number of sets is finite, or if a selection rule is available – some distinguishing property that happens to hold for exactly one element in each set. An illustrative example is sets picked from the natural numbers. From such sets, one may always select the smallest number, e.g. in {{4, 5, 6}, {10, 12}, {1, 400, 617, 8000}} the smallest elements are {4, 10, 1}. In this case, "select the smallest number" is a choice function. Even if infinitely many sets were collected from the natural numbers, it will always be possible to choose the smallest element from each set to produce a set. That is, the choice function provides the set of chosen elements. However, no choice function is known for the collection of all non-empty subsets of the real numbers (if there are non-constructible reals). In that case, the axiom of choice must be invoked.

Bertrand Russell coined an analogy: for any (even infinite) collection of pairs of shoes, one can pick out the left shoe from each pair to obtain an appropriate selection; this makes it possible to directly define a choice function. For an _infinite_ collection of pairs of socks (assumed to have no distinguishing features), there is no obvious way to make a function that selects one sock from each pair, without invoking the axiom of choice.[2]

Although originally controversial, the axiom of choice is now used without reservation by most mathematicians,Jech, 1977, p. 348_ff_; Martin-Löf 2008, p. 210. According to :

    The status of the Axiom of Choice has become less controversial in recent years. To most mathematicians it seems quite plausible and it has so many important applications in practically all branches of mathematics that not to accept it would seem to be a wilful hobbling of the practicing mathematician. and it is included in the standard form of axiomatic set theory, Zermelo–Fraenkel set theory with the axiom of choice (ZFC). One motivation for this use is that a number of generally accepted mathematical results, such as Tychonoff's theorem, require the axiom of choice for their proofs. Contemporary set theorists also study axioms that are not compatible with the axiom of choice, such as the axiom of determinacy. The axiom of choice is avoided in some varieties of constructive mathematics, although there are varieties of constructive mathematics in which the axiom of choice is embraced.


Statement

A choice function is a function _f_, defined on a collection _X_ of nonempty sets, such that for every set _A_ in _X_, _f_(_A_) is an element of _A_. With this concept, the axiom can be stated:

Formally, this may be expressed as follows:

∀_X_[⌀∉_X_⟹∃_f_:_X_→⋃_X_ ∀_A_∈_X_ (_f_(_A_)∈_A_)] .

Thus, the negation of the axiom of choice states that there exists a collection of nonempty sets that has no choice function.

Each choice function on a collection _X_ of nonempty sets is an element of the Cartesian product of the sets in _X_. This is not the most general situation of a Cartesian product of a family of sets, where a given set can occur more than once as a factor; however, one can focus on elements of such a product that select the same element every time a given set appears as factor, and such elements correspond to an element of the Cartesian product of all _distinct_ sets in the family. The axiom of choice asserts the existence of such elements; it is therefore equivalent to:

    Given any family of nonempty sets, their Cartesian product is a nonempty set.

Nomenclature ZF, AC, and ZFC

In this article and other discussions of the Axiom of Choice the following abbreviations are common:

-   AC – the Axiom of Choice.
-   ZF – Zermelo–Fraenkel set theory omitting the Axiom of Choice.
-   ZFC – Zermelo–Fraenkel set theory, extended to include the Axiom of Choice.

Variants

There are many other equivalent statements of the axiom of choice. These are equivalent in the sense that, in the presence of other basic axioms of set theory, they imply the axiom of choice and are implied by it.

One variation avoids the use of choice functions by, in effect, replacing each choice function with its range.

    Given any set _X_ of pairwise disjoint non-empty sets, there exists at least one set _C_ that contains exactly one element in common with each of the sets in _X_.[3]

This guarantees for any partition of a set _X_ the existence of a subset _C_ of _X_ containing exactly one element from each part of the partition.

Another equivalent axiom only considers collections _X_ that are essentially powersets of other sets:

    For any set A, the power set of A (with the empty set removed) has a choice function.

Authors who use this formulation often speak of the _choice function on A_, but be advised that this is a slightly different notion of choice function. Its domain is the powerset of _A_ (with the empty set removed), and so makes sense for any set _A_, whereas with the definition used elsewhere in this article, the domain of a choice function on a _collection of sets_ is that collection, and so only makes sense for sets of sets. With this alternate notion of choice function, the axiom of choice can be compactly stated as

    Every set has a choice function.[4]

which is equivalent to

    For any set A there is a function _f_ such that for any non-empty subset B of _A_, _f_(_B_) lies in _B_.

The negation of the axiom can thus be expressed as:

    There is a set _A_ such that for all functions _f_ (on the set of non-empty subsets of _A_), there is a _B_ such that _f_(_B_) does not lie in _B_.

Restriction to finite sets

The statement of the axiom of choice does not specify whether the collection of nonempty sets is finite or infinite, and thus implies that every finite collection of nonempty sets has a choice function. However, that particular case is a theorem of the Zermelo–Fraenkel set theory without the axiom of choice (ZF); it is easily proved by mathematical induction.[5] In the even simpler case of a collection of _one_ set, a choice function just corresponds to an element, so this instance of the axiom of choice says that every nonempty set has an element; this holds trivially. The axiom of choice can be seen as asserting the generalization of this property, already evident for finite collections, to arbitrary collections.


Usage

Until the late 19th century, the axiom of choice was often used implicitly, although it had not yet been formally stated. For example, after having established that the set _X_ contains only non-empty sets, a mathematician might have said "let _F(s)_ be one of the members of _s_ for all _s_ in _X_" to define a function _F_. In general, it is impossible to prove that _F_ exists without the axiom of choice, but this seems to have gone unnoticed until Zermelo.

Not every situation requires the axiom of choice. For finite sets _X_, the axiom of choice follows from the other axioms of set theory. In that case it is equivalent to saying that if we have several (a finite number of) boxes, each containing at least one item, then we can choose exactly one item from each box. Clearly we can do this: We start at the first box, choose an item; go to the second box, choose an item; and so on. The number of boxes is finite, so eventually our choice procedure comes to an end. The result is an explicit choice function: a function that takes the first box to the first element we chose, the second box to the second element we chose, and so on. (A formal proof for all finite sets would use the principle of mathematical induction to prove "for every natural number _k_, every family of _k_ nonempty sets has a choice function.") This method cannot, however, be used to show that every countable family of nonempty sets has a choice function, as is asserted by the axiom of countable choice. If the method is applied to an infinite sequence (_X__(_i_) : _i_∈ω) of nonempty sets, a function is obtained at each finite stage, but there is no stage at which a choice function for the entire family is constructed, and no "limiting" choice function can be constructed, in general, in ZF without the axiom of choice.


Examples

The nature of the individual nonempty sets in the collection may make it possible to avoid the axiom of choice even for certain infinite collections. For example, suppose that each member of the collection _X_ is a nonempty subset of the natural numbers. Every such subset has a smallest element, so to specify our choice function we can simply say that it maps each set to the least element of that set. This gives us a definite choice of an element from each set, and makes it unnecessary to apply the axiom of choice.

The difficulty appears when there is no natural choice of elements from each set. If we cannot make explicit choices, how do we know that our set exists? For example, suppose that _X_ is the set of all non-empty subsets of the real numbers. First we might try to proceed as if _X_ were finite. If we try to choose an element from each set, then, because _X_ is infinite, our choice procedure will never come to an end, and consequently, we shall never be able to produce a choice function for all of _X_. Next we might try specifying the least element from each set. But some subsets of the real numbers do not have least elements. For example, the open interval (0,1) does not have a least element: if _x_ is in (0,1), then so is _x_/2, and _x_/2 is always strictly smaller than _x_. So this attempt also fails.

Additionally, consider for instance the unit circle _S_, and the action on _S_ by a group _G_ consisting of all rational rotations. Namely, these are rotations by angles which are rational multiples of _π_. Here _G_ is countable while _S_ is uncountable. Hence _S_ breaks up into uncountably many orbits under _G_. Using the axiom of choice, we could pick a single point from each orbit, obtaining an uncountable subset _X_ of _S_ with the property that all of its translates by G are disjoint from _X_. The set of those translates partitions the circle into a countable collection of disjoint sets, which are all pairwise congruent. Since _X_ is not measurable for any rotation-invariant countably additive finite measure on _S_, finding an algorithm to select a point in each orbit requires the axiom of choice. See non-measurable set for more details.

The reason that we are able to choose least elements from subsets of the natural numbers is the fact that the natural numbers are well-ordered: every nonempty subset of the natural numbers has a unique least element under the natural ordering. One might say, "Even though the usual ordering of the real numbers does not work, it may be possible to find a different ordering of the real numbers which is a well-ordering. Then our choice function can choose the least element of every set under our unusual ordering." The problem then becomes that of constructing a well-ordering, which turns out to require the axiom of choice for its existence; every set can be well-ordered if and only if the axiom of choice holds.


Criticism and acceptance

A proof requiring the axiom of choice may establish the existence of an object without explicitly defining the object in the language of set theory. For example, while the axiom of choice implies that there is a well-ordering of the real numbers, there are models of set theory with the axiom of choice in which no well-ordering of the reals is definable. Similarly, although a subset of the real numbers that is not Lebesgue measurable can be proved to exist using the axiom of choice, it is consistent that no such set is definable.[6]

The axiom of choice proves the existence of these intangibles (objects that are proved to exist, but which cannot be explicitly constructed), which may conflict with some philosophical principles.[7] Because there is no canonical well-ordering of all sets, a construction that relies on a well-ordering may not produce a canonical result, even if a canonical result is desired (as is often the case in category theory). This has been used as an argument against the use of the axiom of choice.

Another argument against the axiom of choice is that it implies the existence of objects that may seem counterintuitive.[8] One example is the Banach–Tarski paradox which says that it is possible to decompose the 3-dimensional solid unit ball into finitely many pieces and, using only rotations and translations, reassemble the pieces into two solid balls each with the same volume as the original. The pieces in this decomposition, constructed using the axiom of choice, are non-measurable sets.

Despite these seemingly paradoxical facts, most mathematicians accept the axiom of choice as a valid principle for proving new results in mathematics. The debate is interesting enough, however, that it is considered of note when a theorem in ZFC (ZF plus AC) is logically equivalent (with just the ZF axioms) to the axiom of choice, and mathematicians look for results that require the axiom of choice to be false, though this type of deduction is less common than the type which requires the axiom of choice to be true.

It is possible to prove many theorems using neither the axiom of choice nor its negation; such statements will be true in any model of ZF, regardless of the truth or falsity of the axiom of choice in that particular model. The restriction to ZF renders any claim that relies on either the axiom of choice or its negation unprovable. For example, the Banach–Tarski paradox is neither provable nor disprovable from ZF alone: it is impossible to construct the required decomposition of the unit ball in ZF, but also impossible to prove there is no such decomposition. Similarly, all the statements listed below which require choice or some weaker version thereof for their proof are unprovable in ZF, but since each is provable in ZF plus the axiom of choice, there are models of ZF in which each statement is true. Statements such as the Banach–Tarski paradox can be rephrased as conditional statements, for example, "If AC holds, then the decomposition in the Banach–Tarski paradox exists." Such conditional statements are provable in ZF when the original statements are provable from ZF and the axiom of choice.


In constructive mathematics

As discussed above, in ZFC, the axiom of choice is able to provide "nonconstructive proofs" in which the existence of an object is proved although no explicit example is constructed. ZFC, however, is still formalized in classical logic. The axiom of choice has also been thoroughly studied in the context of constructive mathematics, where non-classical logic is employed. The status of the axiom of choice varies between different varieties of constructive mathematics.

In Martin-Löf type theory and higher-order Heyting arithmetic, the appropriate statement of the axiom of choice is (depending on approach) included as an axiom or provable as a theorem.[9] Errett Bishop argued that the axiom of choice was constructively acceptable, saying

In constructive set theory, however, Diaconescu's theorem shows that the axiom of choice implies the law of excluded middle (unlike in Martin-Löf type theory, where it does not). Thus the axiom of choice is not generally available in constructive set theory. A cause for this difference is that the axiom of choice in type theory does not have the extensionality properties that the axiom of choice in constructive set theory does.[10]

Some results in constructive set theory use the axiom of countable choice or the axiom of dependent choice, which do not imply the law of the excluded middle in constructive set theory. Although the axiom of countable choice in particular is commonly used in constructive mathematics, its use has also been questioned.[11]


Independence

In 1938,[12] Kurt Gödel showed that the _negation_ of the axiom of choice is not a theorem of ZF by constructing an inner model (the constructible universe) which satisfies ZFC and thus showing that ZFC is consistent if ZF itself is consistent. In 1963, Paul Cohen employed the technique of forcing, developed for this purpose, to show that, assuming ZF is consistent, the axiom of choice itself is not a theorem of ZF. He did this by constructing a much more complex model which satisfies ZF¬C (ZF with the negation of AC added as axiom) and thus showing that ZF¬C is consistent[13].

Together these results establish that the axiom of choice is logically independent of ZF. The assumption that ZF is consistent is harmless because adding another axiom to an already inconsistent system cannot make the situation worse. Because of independence, the decision whether to use the axiom of choice (or its negation) in a proof cannot be made by appeal to other axioms of set theory. The decision must be made on other grounds.

One argument given in favor of using the axiom of choice is that it is convenient to use it because it allows one to prove some simplifying propositions that otherwise could not be proved. Many theorems which are provable using choice are of an elegant general character: every ideal in a ring is contained in a maximal ideal, every vector space has a basis, and every product of compact spaces is compact. Without the axiom of choice, these theorems may not hold for mathematical objects of large cardinality.

The proof of the independence result also shows that a wide class of mathematical statements, including all statements that can be phrased in the language of Peano arithmetic, are provable in ZF if and only if they are provable in ZFC.[14] Statements in this class include the statement that P = NP, the Riemann hypothesis, and many other unsolved mathematical problems. When one attempts to solve problems in this class, it makes no difference whether ZF or ZFC is employed if the only question is the existence of a proof. It is possible, however, that there is a shorter proof of a theorem from ZFC than from ZF.

The axiom of choice is not the only significant statement which is independent of ZF. For example, the generalized continuum hypothesis (GCH) is not only independent of ZF, but also independent of ZFC. However, ZF plus GCH implies AC, making GCH a strictly stronger claim than AC, even though they are both independent of ZF.


Stronger axioms

The axiom of constructibility and the generalized continuum hypothesis each imply the axiom of choice and so are strictly stronger than it. In class theories such as Von Neumann–Bernays–Gödel set theory and Morse–Kelley set theory, there is an axiom called the axiom of global choice that is stronger than the axiom of choice for sets because it also applies to proper classes. The axiom of global choice follows from the axiom of limitation of size.


Equivalents

There are important statements that, assuming the axioms of ZF but neither AC nor ¬AC, are equivalent to the axiom of choice.[15] The most important among them are Zorn's lemma and the well-ordering theorem. In fact, Zermelo initially introduced the axiom of choice in order to formalize his proof of the well-ordering theorem.

-   Set theory
    -   Well-ordering theorem: Every set can be well-ordered. Consequently, every cardinal has an initial ordinal.
    -   Tarski's theorem about choice: For every infinite set _A_, there is a bijective map between the sets _A_ and _A_×_A_.
    -   Trichotomy: If two sets are given, then either they have the same cardinality, or one has a smaller cardinality than the other.
    -   Given two non-empty sets, one has a surjection to the other.
    -   The Cartesian product of any family of nonempty sets is nonempty.
    -   König's theorem: Colloquially, the sum of a sequence of cardinals is strictly less than the product of a sequence of larger cardinals. (The reason for the term "colloquially" is that the sum or product of a "sequence" of cardinals cannot be defined without some aspect of the axiom of choice.)
    -   Every surjective function has a right inverse.
-   Order theory
    -   Zorn's lemma: Every non-empty partially ordered set in which every chain (_i.e._, totally ordered subset) has an upper bound contains at least one maximal element.
    -   Hausdorff maximal principle: In any partially ordered set, every totally ordered subset is contained in a maximal totally ordered subset. The restricted principle "Every partially ordered set has a maximal totally ordered subset" is also equivalent to AC over ZF.
    -   Tukey's lemma: Every non-empty collection of finite character has a maximal element with respect to inclusion.
    -   Antichain principle: Every partially ordered set has a maximal antichain.
-   Abstract algebra
    -   Every vector space has a basis.[16]
    -   Krull's theorem: Every unital ring other than the trivial ring contains a maximal ideal.
    -   For every non-empty set _S_ there is a binary operation defined on _S_ that gives it a group structure.[17] (A cancellative binary operation is enough, see group structure and the axiom of choice.)
    -   Every set is a projective object in the category SET of sets.[18][19]
-   Functional analysis
    -   The closed unit ball of the dual of a normed vector space over the reals has an extreme point.
-   Point-set topology
    -   Tychonoff's theorem: Every product of compact topological spaces is compact.
    -   In the product topology, the closure of a product of subsets is equal to the product of the closures.
-   Mathematical logic
    -   If _S_ is a set of sentences of first-order logic and _B_ is a consistent subset of _S_, then _B_ is included in a set that is maximal among consistent subsets of _S_. The special case where _S_ is the set of ALL first-order sentences in a given signature is weaker, equivalent to the Boolean prime ideal theorem; see the section "Weaker forms" below.
-   Graph theory
    -   Every connected graph has a spanning tree.[20]

Category theory

There are several results in category theory which invoke the axiom of choice for their proof. These results might be weaker than, equivalent to, or stronger than the axiom of choice, depending on the strength of the technical foundations. For example, if one defines categories in terms of sets, that is, as sets of objects and morphisms (usually called a small category), or even locally small categories, whose hom-objects are sets, then there is no category of all sets, and so it is difficult for a category-theoretic formulation to apply to all sets. On the other hand, other foundational descriptions of category theory are considerably stronger, and an identical category-theoretic statement of choice may be stronger than the standard formulation, à la class theory, mentioned above.

Examples of category-theoretic statements which require choice include:

-   Every small category has a skeleton.
-   If two small categories are weakly equivalent, then they are equivalent.
-   Every continuous functor on a small-complete category which satisfies the appropriate solution set condition has a left-adjoint (the Freyd adjoint functor theorem).


Weaker forms

There are several weaker statements that are not equivalent to the axiom of choice, but are closely related. One example is the axiom of dependent choice (DC). A still weaker example is the axiom of countable choice (AC_(ω) or CC), which states that a choice function exists for any countable set of nonempty sets. These axioms are sufficient for many proofs in elementary mathematical analysis, and are consistent with some principles, such as the Lebesgue measurability of all sets of reals, that are disprovable from the full axiom of choice.

Other choice axioms weaker than axiom of choice include the Boolean prime ideal theorem and the axiom of uniformization. The former is equivalent in ZF to the existence of an ultrafilter containing each given filter, proved by Tarski in 1930.

Results requiring AC (or weaker forms) but weaker than it

One of the most interesting aspects of the axiom of choice is the large number of places in mathematics that it shows up. Here are some statements that require the axiom of choice in the sense that they are not provable from ZF but are provable from ZFC (ZF plus AC). Equivalently, these statements are true in all models of ZFC but false in some models of ZF.

-   Set theory
    -   Any union of countably many countable sets is itself countable (because it is necessary to choose a particular ordering for each of the countably many sets).
    -   If the set _A_ is infinite, then there exists an injection from the natural numbers N to _A_ (see Dedekind infinite).[21]
    -   Eight definitions of a finite set are equivalent.[22]
    -   Every infinite game G_(S) in which S is a Borel subset of Baire space is determined.
-   Measure theory
    -   The Vitali theorem on the existence of non-measurable sets which states that there is a subset of the real numbers that is not Lebesgue measurable.
    -   The Hausdorff paradox.
    -   The Banach–Tarski paradox.
    -   The Lebesgue measure of a countable disjoint union of measurable sets is equal to the sum of the measures of the individual sets.
-   Algebra
    -   Every field has an algebraic closure.
    -   Every field extension has a transcendence basis.
    -   Stone's representation theorem for Boolean algebras needs the Boolean prime ideal theorem.
    -   The Nielsen–Schreier theorem, that every subgroup of a free group is free.
    -   The additive groups of R and C are isomorphic.[23][24]
-   Functional analysis
    -   The Hahn–Banach theorem in functional analysis, allowing the extension of linear functionals
    -   The theorem that every Hilbert space has an orthonormal basis.
    -   The Banach–Alaoglu theorem about compactness of sets of functionals.
    -   The Baire category theorem about complete metric spaces, and its consequences, such as the open mapping theorem and the closed graph theorem.
    -   On every infinite-dimensional topological vector space there is a discontinuous linear map.
-   General topology
    -   A uniform space is compact if and only if it is complete and totally bounded.
    -   Every Tychonoff space has a Stone–Čech compactification.
-   Mathematical logic
    -   Gödel's completeness theorem for first-order logic: every consistent set of first-order sentences has a completion. That is, every consistent set of first-order sentences can be extended to a maximal consistent set.

Possibly equivalent implications of AC

There are several historically important set-theoretic statements implied by AC whose equivalence to AC is open. The partition principle, which was formulated before AC itself, was cited by Zermelo as a justification for believing AC. In 1906 Russell declared PP to be equivalent, but whether the Partition Principle implies AC is still the oldest open problem in set theory, and the equivalences of the other statements are similarly hard old open problems. In every _known_ model of ZF where choice fails, these statements fail too, but it is unknown if they can hold without choice.

-   Set theory
    -   Partition principle: if there is a surjection from A to B, there is an injection from B to A. Equivalently, every partition P of a set S is less than or equal to S in size.
    -   Converse Schröder–Bernstein theorem: if two sets have surjections to each other, they are equinumerous.
    -   Weak partition principle: A partition of a set S cannot be strictly larger than S. If WPP holds, this already implies the existence of a non-measurable set. Each of the previous three statements is implied by the preceding one, but it is unknown if any of these implications can be reversed.
    -   There is no infinite decreasing sequence of cardinals. The equivalence was conjectured by Schoenflies in 1905.
-   Abstract algebra
    -   Hahn embedding theorem: Every ordered abelian group G order-embeds subgroup of the additive group ℝ^(Ω) endowed with a lexicographical order, where Ω is the set of Archimedean equivalence classes of Ω. This equivalence was conjectured by Hahn in 1907.


Stronger forms of the negation of AC

Now, consider stronger forms of the negation of AC. For example, if we abbreviate by BP the claim that every set of real numbers has the property of Baire, then BP is stronger than ¬AC, which asserts the nonexistence of any choice function on perhaps only a single set of nonempty sets. Note that strengthened negations may be compatible with weakened forms of AC. For example, ZF + DC[25] + BP is consistent, if ZF is.

It is also consistent with ZF + DC that every set of reals is Lebesgue measurable; however, this consistency result, due to Robert M. Solovay, cannot be proved in ZFC itself, but requires a mild large cardinal assumption (the existence of an inaccessible cardinal). The much stronger axiom of determinacy, or AD, implies that every set of reals is Lebesgue measurable, has the property of Baire, and has the perfect set property (all three of these results are refuted by AC itself). ZF + DC + AD is consistent provided that a sufficiently strong large cardinal axiom is consistent (the existence of infinitely many Woodin cardinals).

Quine's system of axiomatic set theory, "New Foundations" (NF), takes its name from the title (“New Foundations for Mathematical Logic”) of the 1937 article which introduced it. In the NF axiomatic system, the axiom of choice can be disproved.[26]


Statements consistent with the negation of AC

There are models of Zermelo-Fraenkel set theory in which the axiom of choice is false. We shall abbreviate "Zermelo-Fraenkel set theory plus the negation of the axiom of choice" by ZF¬C. For certain models of ZF¬C, it is possible to prove the negation of some standard facts. Note that any model of ZF¬C is also a model of ZF, so for each of the following statements, there exists a model of ZF in which that statement is true. For each of the following statements, there is some model of ZF¬C where it is true:

-   In some model, there is a set that can be partitioned into strictly more equivalence classes than the original set has elements, and a function whose domain is strictly smaller than its range. In fact, this is the case in all _known_ models.
-   There is a function _f_ from the real numbers to the real numbers such that _f_ is not continuous at _a_, but _f_ is sequentially continuous at _a_, i.e., for any sequence {_x_(n)_} converging to _a_, lim_(_n_) f(_x_(n)_)=f(a).
-   In some model, there is an infinite set of real numbers without a countably infinite subset.
-   In some model, the real numbers are a countable union of countable sets.[27]
-   In some model, there is a field with no algebraic closure.
-   In all models of ZF¬C there is a vector space with no basis.
-   In some model in which there is a vector space with two bases of different cardinalities.
-   In some model there is a free complete boolean algebra on countably many generators.[28]
-   In some model there is a set that cannot be linearly ordered.

For proofs, see .

-   There exists a model of ZF¬C in which every set in R^(_n_) is measurable. Thus it is possible to exclude counterintuitive results like the Banach–Tarski paradox which are provable in ZFC. Furthermore, this is possible whilst assuming the Axiom of dependent choice, which is weaker than AC but sufficient to develop most of real analysis.
-   In all models of ZF¬C, the generalized continuum hypothesis does not hold.


Axiom of choice in type theory

In type theory, a different kind of statement is known as the axiom of choice. This form begins with two types, σ and τ, and a relation _R_ between objects of type σ and objects of type τ. The axiom of choice states that if for each _x_ of type σ there exists a _y_ of type τ such that _R_(_x_,_y_), then there is a function _f_ from objects of type σ to objects of type τ such that _R_(_x_,_f_(_x_)) holds for all _x_ of type σ:

(∀_x_^(_σ_))(∃_y_^(_τ_))_R_(_x_, _y_) → (∃_f_^(_σ_ → _τ_))(∀_x_^(_σ_))_R_(_x_, _f_(_x_)).
Unlike in set theory, the axiom of choice in type theory is typically stated as an axiom scheme, in which _R_ varies over all formulas or over all formulas of a particular logical form.


Quotes

This is a joke: although the three are all mathematically equivalent, many mathematicians find the axiom of choice to be intuitive, the well-ordering principle to be counterintuitive, and Zorn's lemma to be too complex for any intuition.

The observation here is that one can define a function to select from an infinite number of pairs of shoes by stating for example, to choose a left shoe. Without the axiom of choice, one cannot assert that such a function exists for pairs of socks, because left and right socks are (presumably) indistinguishable.

Polish-American mathematician Jan Mycielski relates this anecdote in a 2006 article in the Notices of the AMS.[29]

This quote comes from the famous April Fools' Day article in the _computer recreations_ column of the _Scientific American_, April 1989.


Notes


References

-   -   -   -   -   Thomas Jech, "About the Axiom of Choice." _Handbook of Mathematical Logic_, John Barwise, ed., 1977.
-   -   Per Martin-Löf, "100 years of Zermelo's axiom of choice: What was the problem with it?", in _Logicism, Intuitionism, and Formalism: What Has Become of Them?_, Sten Lindström, Erik Palmgren, Krister Segerberg, and Viggo Stoltenberg-Hansen, editors (2008).
-   -   , available as a Dover Publications reprint, 2013, .

-   -   Herman Rubin, Jean E. Rubin: Equivalents of the axiom of choice. North Holland, 1963. Reissued by Elsevier, April 1970. .
-   Herman Rubin, Jean E. Rubin: Equivalents of the Axiom of Choice II. North Holland/Elsevier, July 1985, .
-   -   -   George Tourlakis, _Lectures in Logic and Set Theory. Vol. II: Set Theory_, Cambridge University Press, 2003.
-   -   Ernst Zermelo, "Untersuchungen über die Grundlagen der Mengenlehre I," _Mathematische Annalen 65_: (1908) pp. 261–81. PDF download via digizeitschriften.de



        Translated in: Jean van Heijenoort, 2002. _From Frege to Gödel: A Source Book in Mathematical Logic, 1879–1931_. New edition. Harvard University Press.
        -   1904. "Proof that every set can be well-ordered," 139-41.
        -   1908. "Investigations in the foundations of set theory I," 199–215.


External links

-   Axiom of Choice entry in the Springer Encyclopedia of Mathematics.
-   Axiom of Choice and Its Equivalents entry at ProvenMath. Includes formal statement of the Axiom of Choice, Hausdorff's Maximal Principle, Zorn's Lemma and formal proofs of their equivalence down to the finest detail.
-   Consequences of the Axiom of Choice, based on the book by Paul Howard and Jean Rubin.
-   .

Axiom_of_choice

[1] .

[2]

[3] . According to , this was the formulation of the axiom of choice which was originally given by . See also for this formulation.

[4] .

[5] Tourlakis (2003), pp. 209–210, 215–216.

[6] .

[7] .

[8] .

[9] Per Martin-Löf, _Intuitionistic type theory_, 1980. Anne Sjerp Troelstra, _Metamathematical investigation of intuitionistic arithmetic and analysis_, Springer, 1973.

[10]

[11] Fred Richman, “Constructive mathematics without choice”, in: Reuniting the Antipodes—Constructive and Nonstandard Views of the Continuum (P. Schuster et al., eds), Synthèse Library 306, 199–205, Kluwer Academic Publishers, Amsterdam, 2001.

[12]

[13]

[14] This is because arithmetical statements are absolute to the constructible universe _L_. Shoenfield's absoluteness theorem gives a more general result.

[15] See , for a structured list of 74 equivalents. See , for 86 equivalents with source references.

[16]

[17] A. Hajnal, A. Kertész: Some new algebraic equivalents of the axiom of choice, _Publ. Math. Debrecen_, 19(1972), 339–340, see also H. Rubin, J. Rubin, _Equivalents of the axiom of choice, II_, North-Holland, 1985, p. 111.

[18]

[19]

[20] ; . See in particular Theorem 2.1, pp. 192–193.

[21] It is shown by , that the axiom of countable choice implies the equivalence of infinite and Dedekind-infinite sets, but that the equivalence of infinite and Dedekind-infinite sets does not imply the axiom of countable choice in ZF.

[22] It was shown by and others using Mostowski models that eight definitions of a finite set are independent in ZF without AC, although they are equivalent when AC is assumed. The definitions are I-finite, Ia-finite, II-finite, III-finite, IV-finite, V-finite, VI-finite and VII-finite. I-finiteness is the same as normal finiteness. IV-finiteness is the same as Dedekind-finiteness.

[23]

[24]

[25] Axiom of dependent choice

[26]

[27] , Theorem 10.6 with proof.

[28]

[29] .