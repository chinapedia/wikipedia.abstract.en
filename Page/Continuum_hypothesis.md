In mathematics, the CONTINUUM HYPOTHESIS (abbreviated CH) is a hypothesis about the possible sizes of infinite sets. It states:

The continuum hypothesis was advanced by Georg Cantor in 1878, and establishing its truth or falsehood is the first of Hilbert's 23 problems presented in 1900. Τhe answer to this problem is independent of ZFC set theory (that is, Zermelo–Fraenkel set theory with the axiom of choice included), so that either the continuum hypothesis or its negation can be added as an axiom to ZFC set theory, with the resulting theory being consistent if and only if ZFC is consistent. This independence was proved in 1963 by Paul Cohen, complementing earlier work by Kurt Gödel in 1940.

The name of the hypothesis comes from the term _the continuum_ for the real numbers.


History

Cantor believed the continuum hypothesis to be true and tried for many years to prove it, in vain . It became the first on David Hilbert's list of important open questions that was presented at the International Congress of Mathematicians in the year 1900 in Paris. Axiomatic set theory was at that point not yet formulated. Kurt Gödel proved in 1940 that the negation of the continuum hypothesis, i.e., the existence of a set with intermediate cardinality, could not be proved in standard set theory. The second half of the independence of the continuum hypothesis – i.e., unprovability of the nonexistence of an intermediate-sized set – was proved in 1963 by Paul Cohen.


Cardinality of infinite sets

Two sets are said to have the same _cardinality_ or _cardinal number_ if there exists a bijection (a one-to-one correspondence) between them. Intuitively, for two sets _S_ and _T_ to have the same cardinality means that it is possible to "pair off" elements of _S_ with elements of _T_ in such a fashion that every element of _S_ is paired off with exactly one element of _T_ and vice versa. Hence, the set {banana, apple, pear} has the same cardinality as {yellow, red, green}.

With infinite sets such as the set of integers or rational numbers, the existence of a bijection between two sets becomes more difficult to demonstrate. The rational numbers seemingly form a counterexample to the continuum hypothesis: the integers form a proper subset of the rationals, which themselves form a proper subset of the reals, so intuitively, there are more rational numbers than integers and more real numbers than rational numbers. However, this intuitive analysis is flawed; it does not take proper account of the fact that all three sets are infinite. It turns out the rational numbers can actually be placed in one-to-one correspondence with the integers, and therefore the set of rational numbers is the same size (_cardinality_) as the set of integers: they are both countable sets.

Cantor gave two proofs that the cardinality of the set of integers is strictly smaller than that of the set of real numbers (see Cantor's first uncountability proof and Cantor's diagonal argument). His proofs, however, give no indication of the extent to which the cardinality of the integers is less than that of the real numbers. Cantor proposed the continuum hypothesis as a possible solution to this question.

The continuum hypothesis states that the set of real numbers has minimal possible cardinality which is greater than the cardinality of the set of integers. That is, every set, _S_, of real numbers can either be mapped one-to-one into the integers or the real numbers can be mapped one-to-one into _S_. Using the fact that the real numbers are equinumerous with the powerset of the integers, the continuum hypothesis says that there is no set S for which ℵ₀ < |S| < 2^(ℵ₀).

Assuming the axiom of choice, there is a smallest cardinal number ℵ₁ greater than ℵ₀, and the continuum hypothesis is in turn equivalent to the equality 2^(ℵ₀) = ℵ₁.

There is also a generalization of the continuum hypothesis called the GENERALIZED CONTINUUM HYPOTHESIS (GCH) which says that for every ordinal α, 2^(ℵ_(α)) = ℵ_(α + 1). That is, GCH asserts that the cardinality of the power set of each infinite set is the smallest cardinality greater than that of the set.


Independence from ZFC

The independence of the continuum hypothesis (CH) from Zermelo–Fraenkel set theory (ZF) follows from combined work of Kurt Gödel and Paul Cohen.

showed that CH cannot be disproved from ZF, even if the axiom of choice (AC) is adopted (making ZFC). Gödel's proof shows that CH and AC both hold in the constructible universe L, an inner model of ZF set theory, assuming only the axioms of ZF. The existence of an inner model of ZF in which additional axioms hold shows that the additional axioms are consistent with ZF, provided ZF itself is consistent. The latter condition cannot be proved in ZF itself, due to Gödel's incompleteness theorems, but is widely believed to be true and can be proved in stronger set theories.

Cohen (Cohen, Cohen) showed that CH cannot be proven from the ZFC axioms, completing the overall independence proof. To prove his result, Cohen developed the method of forcing, which has become a standard tool in set theory. Essentially, this method begins with a model of ZF in which CH holds, and constructs another model which contains more sets than the original, in a way that CH does not hold in the new model. Cohen was awarded the Fields Medal in 1966 for his proof.

The independence proof just described shows that CH is independent of ZFC. Further research has shown that CH is independent of all known _large cardinal axioms_ in the context of ZFC. () Moreover, it has been shown that the cardinality of the continuum can be any cardinal consistent with König's theorem. A result of Solovay, proved shortly after Cohen's result on the independence of the continuum hypothesis, shows that in any model of ZFC, if κ is a cardinal of uncountable cofinality, then there is a forcing extension in which 2^(ℵ₀) = κ. However, per König's theorem, it is not consistent to assume 2^(ℵ₀) is ℵ_(ω) or ℵ_(ω₁ + ω) or any cardinal with cofinality ω.

The continuum hypothesis is closely related to many statements in analysis, point set topology and measure theory. As a result of its independence, many substantial conjectures in those fields have subsequently been shown to be independent as well.

The independence from ZFC means that proving or disproving the CH within ZFC is impossible. However, Gödel and Cohen's negative results are not universally accepted as disposing of all interest in the continuum hypothesis. Hilbert's problem remains an active topic of research; see and for an overview of the current research status.

The continuum hypothesis was not the first statement shown to be independent of ZFC. An immediate consequence of Gödel's incompleteness theorem, which was published in 1931, is that there is a formal statement (one for each appropriate Gödel numbering scheme) expressing the consistency of ZFC that is independent of ZFC, assuming that ZFC is consistent. The continuum hypothesis and the axiom of choice were among the first mathematical statements shown to be independent of ZF set theory.


Arguments for and against the continuum hypothesis

Gödel believed that CH is false, and that his proof that CH is consistent with ZFC only shows that the Zermelo–Fraenkel axioms do not adequately characterize the universe of sets. Gödel was a platonist and therefore had no problems with asserting the truth and falsehood of statements independent of their provability. Cohen, though a formalist , also tended towards rejecting CH.

Historically, mathematicians who favored a "rich" and "large" universe of sets were against CH, while those favoring a "neat" and "controllable" universe favored CH. Parallel arguments were made for and against the axiom of constructibility, which implies CH. More recently, Matthew Foreman has pointed out that ontological maximalism can actually be used to argue in favor of CH, because among models that have the same reals, models with "more" sets of reals have a better chance of satisfying CH (Maddy 1988, p. 500).

Another viewpoint is that the conception of set is not specific enough to determine whether CH is true or false. This viewpoint was advanced as early as 1923 by Skolem, even before Gödel's first incompleteness theorem. Skolem argued on the basis of what is now known as Skolem's paradox, and it was later supported by the independence of CH from the axioms of ZFC since these axioms are enough to establish the elementary properties of sets and cardinalities. In order to argue against this viewpoint, it would be sufficient to demonstrate new axioms that are supported by intuition and resolve CH in one direction or another. Although the axiom of constructibility does resolve CH, it is not generally considered to be intuitively true any more than CH is generally considered to be false (Kunen 1980, p. 171).

At least two other axioms have been proposed that have implications for the continuum hypothesis, although these axioms have not currently found wide acceptance in the mathematical community. In 1986, Chris Freiling presented an argument against CH by showing that the negation of CH is equivalent to Freiling's axiom of symmetry, a statement about probabilities. Freiling believes this axiom is "intuitively true" but others have disagreed. A difficult argument against CH developed by W. Hugh Woodin has attracted considerable attention since the year 2000 (Woodin 2001a, 2001b). Foreman (2003) does not reject Woodin's argument outright but urges caution.

Solomon Feferman (2011) has made a complex philosophical argument that CH is not a definite mathematical problem. He proposes a theory of "definiteness" using a semi-intuitionistic subsystem of ZF that accepts classical logic for bounded quantifiers but uses intuitionistic logic for unbounded ones, and suggests that a proposition ϕ is mathematically "definite" if the semi-intuitionistic theory can prove (ϕ ∨ ¬ϕ). He conjectures that CH is not definite according to this notion, and proposes that CH should, therefore, be considered not to have a truth value. Peter Koellner (2011b) wrote a critical commentary on Feferman's article.

Joel David Hamkins proposes a multiverse approach to set theory and argues that "the continuum hypothesis is settled on the multiverse view by our extensive knowledge about how it behaves in the multiverse, and, as a result, it can no longer be settled in the manner formerly hoped for." (Hamkins 2012). In a related vein, Saharon Shelah wrote that he does "not agree with the pure Platonic view that the interesting problems in set theory can be decided, that we just have to discover the additional axiom. My mental picture is that we have many possible set theories, all conforming to ZFC." (Shelah 2003).


The generalized continuum hypothesis

The _generalized continuum hypothesis_ (GCH) states that if an infinite set's cardinality lies between that of an infinite set _S_ and that of the power set of _S_, then it either has the same cardinality as the set _S_ or the same cardinality as the power set of _S_. That is, for any infinite cardinal λ there is no cardinal κ such that λ < κ < 2^(λ). GCH is equivalent to:

ℵ_(_α_ + 1) = 2^(ℵ_(_α_))
for every ordinal α. (occasionally called CANTOR'S ALEPH HYPOTHESIS) The beth numbers provide an alternate notation for this condition: ℵ_(α) = ℶ_(α) for every ordinal α.

This is a generalization of the continuum hypothesis since the continuum has the same cardinality as the power set of the integers. It was first suggested by . (For the early history of GCH, see ).

Like CH, GCH is also independent of ZFC, but Sierpiński proved that ZF + GCH implies the axiom of choice (AC) (and therefore the negation of the axiom of determinacy, AD), so choice and GCH are not independent in ZF; there are no models of ZF in which GCH holds and AC fails. To prove this, Sierpiński showed GCH implies that every cardinality n is smaller than some Aleph number, and thus can be ordered. This is done by showing that n is smaller than 2^(ℵ₀ + n) which is smaller than its own Hartogs number—this uses the equality 2^(ℵ₀ + n) = 2⋅ 2^(ℵ₀ + n); for the full proof, see Gillman (2002).

Kurt Gödel showed that GCH is a consequence of ZF + V=L (the axiom that every set is constructible relative to the ordinals), and is therefore consistent with ZFC. As GCH implies CH, Cohen's model in which CH fails is a model in which GCH fails, and thus GCH is not provable from ZFC. W. B. Easton used the method of forcing developed by Cohen to prove Easton's theorem, which shows it is consistent with ZFC for arbitrarily large cardinals ℵ_(α) to fail to satisfy 2^(ℵ_(α)) = ℵ_(α + 1). Much later, Foreman and Woodin proved that (assuming the consistency of very large cardinals) it is consistent that 2^(κ) > κ⁺ holds for every infinite cardinal κ. Later Woodin extended this by showing the consistency of 2^(κ) = κ ⁺ ⁺ for every κ. showed that, for each _n_ ≥ 1, it is consistent with ZFC that for each κ, 2^(κ) is the _n_th successor of κ. On the other hand, proved, that if γ is an ordinal and for each infinite cardinal κ, 2^(κ) is the γth successor of κ, then γ is finite.

For any infinite sets A and B, if there is an injection from A to B then there is an injection from subsets of A to subsets of B. Thus for any infinite cardinals A and B, A < B → 2^(A) ≤ 2^(B). . If A and B are finite, the stronger inequality A < B → 2^(A) < 2^(B) holds. GCH implies that this strict, stronger inequality holds for infinite cardinals as well as finite cardinals.

Implications of GCH for cardinal exponentiation

Although the generalized continuum hypothesis refers directly only to cardinal exponentiation with 2 as the base, one can deduce from it the values of cardinal exponentiation ℵ_(α)^(ℵ_(β)) in all cases. GCH implies that (see: Hayden & Kennison (1968), page 147, exercise 76):

ℵ_(_α_)^(ℵ_(_β_)) = ℵ_(_β_ + 1)
when _α_ ≤ _β_+1;

ℵ_(_α_)^(ℵ_(_β_)) = ℵ_(_α_)
when _β_+1 < _α_ and ℵ_(β) < cf (ℵ_(α)), where CF is the cofinality operation; and

ℵ_(_α_)^(ℵ_(_β_)) = ℵ_(_α_ + 1)
when _β_+1 < _α_ and ℵ_(β) ≥ cf (ℵ_(α)).


See also

-   Aleph number
-   Beth number
-   Cardinality
-   Ω-logic
-   Wetzel's problem


References

-   -   -   -   -   -   -   -   -   -   -   -   -   Gödel, K.: _What is Cantor's Continuum Problem?_, reprinted in Benacerraf and Putnam's collection _Philosophy of Mathematics_, 2nd ed., Cambridge University Press, 1983. An outline of Gödel's arguments against CH.
-   -   Joel David Hamkins. The set-theoretic multiverse. Rev. Symb. Log. 5 (2012), no. 3, 416–449.
-   Seymour Hayden and John F. Kennison: _Zermelo–Fraenkel Set Theory_ (1968), Charles E. Merrill Publishing Company, Columbus, Ohio.
-   -   -   -   -   -   Martin, D. (1976). "Hilbert's first problem: the continuum hypothesis," in _Mathematical Developments Arising from Hilbert's Problems,_ Proceedings of Symposia in Pure Mathematics XXVIII, F. Browder, editor. American Mathematical Society, 1976, pp. 81–92.
-   -   -   -   -   -

German literature

-   -


Sources

-


External links

-

Category:Forcing (mathematics) Category:Independence results Category:Basic concepts in infinite set theory Category:Hilbert's problems Category:Infinity Category:Hypotheses Category:Cardinal numbers Category:Undecidable conjectures