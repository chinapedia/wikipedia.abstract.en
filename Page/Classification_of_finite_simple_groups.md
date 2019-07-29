In mathematics, the CLASSIFICATION OF THE FINITE SIMPLE GROUPS is a theorem stating that every finite simple group belongs to one of four broad classes described below. These groups can be seen as the basic building blocks of all finite groups, in a way reminiscent of the way the prime numbers are the basic building blocks of the natural numbers. The Jordan–Hölder theorem is a more precise way of stating this fact about finite groups. However, a significant difference from integer factorization is that such "building blocks" do not necessarily determine a unique group, since there might be many non-isomorphic groups with the same composition series or, put in another way, the extension problem does not have a unique solution.

Group theory is central to many areas of pure and applied mathematics and the classification theorem is one of the great achievements of modern mathematics. The proof consists of tens of thousands of pages in several hundred journal articles written by about 100 authors, published mostly between 1955 and 2004. Gorenstein (d.1992), Lyons, and Solomon are gradually publishing a simplified and revised version of the proof.


Statement of the classification theorem

The classification theorem has applications in many branches of mathematics, as questions about the structure of finite groups (and their action on other mathematical objects) can sometimes be reduced to questions about finite simple groups. Thanks to the classification theorem, such questions can sometimes be answered by checking each family of simple groups and each sporadic group.

Daniel Gorenstein announced in 1983 that the finite simple groups had all been classified, but this was premature as he had been misinformed about the proof of the classification of quasithin groups. The completed proof of the classification was announced by after Aschbacher and Smith published a 1221-page proof for the missing quasithin case.


Overview of the proof of the classification theorem

wrote two volumes outlining the low rank and odd characteristic part of the proof, and wrote a 3rd volume covering the remaining characteristic 2 case. The proof can be broken up into several major pieces as follows:

Groups of small 2-rank

The simple groups of low 2-rank are mostly groups of Lie type of small rank over fields of odd characteristic, together with five alternating and seven characteristic 2 type and nine sporadic groups.

The simple groups of small 2-rank include:

-   Groups of 2-rank 0, in other words groups of odd order, which are all solvable by the Feit–Thompson theorem.
-   Groups of 2-rank 1. The Sylow 2-subgroups are either cyclic, which is easy to handle using the transfer map, or generalized quaternion, which are handled with the Brauer–Suzuki theorem: in particular there are no simple groups of 2-rank 1.
-   Groups of 2-rank 2. Alperin showed that the Sylow subgroup must be dihedral, quasidihedral, wreathed, or a Sylow 2-subgroup of _U_₃(4). The first case was done by the Gorenstein–Walter theorem which showed that the only simple groups are isomorphic to _L_₂(_q_) for _q_ odd or _A_₇, the second and third cases were done by the Alperin–Brauer–Gorenstein theorem which implies that the only simple groups are isomorphic to _L_₃(_q_) or _U_₃(_q_) for _q_ odd or _M_₁₁, and the last case was done by Lyons who showed that _U_₃(4) is the only simple possibility.
-   Groups of sectional 2-rank at most 4, classified by the Gorenstein–Harada theorem.

The classification of groups of small 2-rank, especially ranks at most 2, makes heavy use of ordinary and modular character theory, which is almost never directly used elsewhere in the classification.

All groups not of small 2 rank can be split into two major classes: groups of component type and groups of characteristic 2 type. This is because if a group has sectional 2-rank at least 5 then MacWilliams showed that its Sylow 2-subgroups are connected, and the balance theorem implies that any simple group with connected Sylow 2-subgroups is either of component type or characteristic 2 type. (For groups of low 2-rank the proof of this breaks down, because theorems such as the signalizer functor theorem only work for groups with elementary abelian subgroups of rank at least 3.)

Groups of component type

A group is said to be of component type if for some centralizer _C_ of an involution, _C_/_O_(_C_) has a component (where _O_(_C_) is the core of _C_, the maximal normal subgroup of odd order). These are more or less the groups of Lie type of odd characteristic of large rank, and alternating groups, together with some sporadic groups. A major step in this case is to eliminate the obstruction of the core of an involution. This is accomplished by the B-theorem, which states that every component of _C_/_O_(_C_) is the image of a component of _C_.

The idea is that these groups have a centralizer of an involution with a component that is a smaller quasisimple group, which can be assumed to be already known by induction. So to classify these groups one takes every central extension of every known finite simple group, and finds all simple groups with a centralizer of involution with this as a component. This gives a rather large number of different cases to check: there are not only 26 sporadic groups and 16 families of groups of Lie type and the alternating groups, but also many of the groups of small rank or over small fields behave differently from the general case and have to be treated separately, and the groups of Lie type of even and odd characteristic are also quite different.

Groups of characteristic 2 type

A group is of characteristic 2 type if the generalized Fitting subgroup _F_*(_Y_) of every 2-local subgroup _Y_ is a 2-group. As the name suggests these are roughly the groups of Lie type over fields of characteristic 2, plus a handful of others that are alternating or sporadic or of odd characteristic. Their classification is divided into the small and large rank cases, where the rank is the largest rank of an odd abelian subgroup normalizing a nontrivial 2-subgroup, which is often (but not always) the same as the rank of a Cartan subalgebra when the group is a group of Lie type in characteristic 2.

The rank 1 groups are the thin groups, classified by Aschbacher, and the rank 2 ones are the notorious quasithin groups, classified by Aschbacher and Smith. These correspond roughly to groups of Lie type of ranks 1 or 2 over fields of characteristic 2.

Groups of rank at least 3 are further subdivided into 3 classes by the trichotomy theorem, proved by Aschbacher for rank 3 and by Gorenstein and Lyons for rank at least 4. The three classes are groups of GF(2) type (classified mainly by Timmesfeld), groups of "standard type" for some odd prime (classified by the Gilman–Griess theorem and work by several others), and groups of uniqueness type, where a result of Aschbacher implies that there are no simple groups. The general higher rank case consists mostly of the groups of Lie type over fields of characteristic 2 of rank at least 3 or 4.

Existence and uniqueness of the simple groups

The main part of the classification produces a characterization of each simple group. It is then necessary to check that there exists a simple group for each characterization and that it is unique. This gives a large number of separate problems; for example, the original proofs of existence and uniqueness of the monster group totaled about 200 pages, and the identification of the Ree groups by Thompson and Bombieri was one of the hardest parts of the classification. Many of the existence proofs and some of the uniqueness proofs for the sporadic groups originally used computer calculations, most of which have since been replaced by shorter hand proofs.


History of the proof

Gorenstein's program

In 1972 announced a program for completing the classification of finite simple groups, consisting of the following 16 steps:

1.  Groups of low 2-rank. This was essentially done by Gorenstein and Harada, who classified the groups with sectional 2-rank at most 4. Most of the cases of 2-rank at most 2 had been done by the time Gorenstein announced his program.
2.  The semisimplicity of 2-layers. The problem is to prove that the 2-layer of the centralizer of an involution in a simple group is semisimple.
3.  Standard form in odd characteristic. If a group has an involution with a 2-component that is a group of Lie type of odd characteristic, the goal is to show that it has a centralizer of involution in "standard form" meaning that a centralizer of involution has a component that is of Lie type in odd characteristic and also has a centralizer of 2-rank 1.
4.  Classification of groups of odd type. The problem is to show that if a group has a centralizer of involution in "standard form" then it is a group of Lie type of odd characteristic. This was solved by Aschbacher's classical involution theorem.
5.  Quasi-standard form
6.  Central involutions
7.  Classification of alternating groups.
8.  Some sporadic groups
9.  Thin groups. The simple thin finite groups, those with 2-local _p_-rank at most 1 for odd primes _p_, were classified by Aschbacher in 1978
10. Groups with a strongly p-embedded subgroup for _p_ odd
11. The signalizer functor method for odd primes. The main problem is to prove a signalizer functor theorem for nonsolvable signalizer functors. This was solved by McBride in 1982.
12. Groups of characteristic _p_ type. This is the problem of groups with a strongly _p_-embedded 2-local subgroup with _p_ odd, which was handled by Aschbacher.
13. Quasithin groups. A quasithin group is one whose 2-local subgroups have _p_-rank at most 2 for all odd primes _p_, and the problem is to classify the simple ones of characteristic 2 type. This was completed by Aschbacher and Smith in 2004.
14. Groups of low 2-local 3-rank. This was essentially solved by Aschbacher's trichotomy theorem for groups with _e_(_G_)=3. The main change is that 2-local 3-rank is replaced by 2-local _p_-rank for odd primes.
15. Centralizers of 3-elements in standard form. This was essentially done by the Trichotomy theorem.
16. Classification of simple groups of characteristic 2 type. This was handled by the Gilman–Griess theorem, with 3-elements replaced by _p_-elements for odd primes.

Timeline of the proof

Many of the items in the list below are taken from . The date given is usually the publication date of the complete proof of a result, which is sometimes several years later than the proof or first announcement of the result, so some of the items appear in the "wrong" order.

  Publication date
  ------------------ -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  1832               Galois introduces normal subgroups and finds the simple groups A_(_n_) (_n_ ≥ 5) and PSL₂(F_(_p_)) (_p_ ≥ 5)
  1854               Cayley defines abstract groups
  1861               Mathieu describes the first two Mathieu groups M₁₁, M₁₂, the first sporadic simple groups, and announces the existence of M₂₄.
  1870               Jordan lists some simple groups: the alternating and projective special linear ones, and emphasizes the importance of the simple groups.
  1872               Sylow proves the Sylow theorems
  1873               Mathieu introduces three more Mathieu groups M₂₂, M₂₃, M₂₄.
  1892               Otto Hölder proves that the order of any nonabelian finite simple group must be a product of at least four (not necessarily distinct) primes, and asks for a classification of finite simple groups.
  1893               Cole classifies simple groups of order up to 660
  1896               Frobenius and Burnside begin the study of character theory of finite groups.
  1899               Burnside classifies the simple groups such that the centralizer of every involution is a non-trivial elementary abelian 2-group.
  1901               Frobenius proves that a Frobenius group has a Frobenius kernel, so in particular is not simple.
  1901               Dickson defines classical groups over arbitrary finite fields, and exceptional groups of type _G_₂ over fields of odd characteristic.
  1901               Dickson introduces the exceptional finite simple groups of type _E_₆.
  1904               Burnside uses character theory to prove Burnside's theorem that the order of any non-abelian finite simple group must be divisible by at least 3 distinct primes.
  1905               Dickson introduces simple groups of type G₂ over fields of even characteristic
  1911               Burnside conjectures that every non-abelian finite simple group has even order
  1928               Philip Hall proves the existence of Hall subgroups of solvable groups
  1933               Hall begins his study of _p_-groups
  1935               Brauer begins the study of modular characters.
  1936               Zassenhaus classifies finite sharply 3-transitive permutation groups
  1938               Fitting introduces the Fitting subgroup and proves Fitting's theorem that for solvable groups the Fitting subgroup contains its centralizer.
  1942               Brauer describes the modular characters of a group divisible by a prime to the first power.
  1954               Brauer classifies simple groups with GL₂(F_(_q_)) as the centralizer of an involution.
  1955               The Brauer–Fowler theorem implies that the number of finite simple groups with given centralizer of involution is finite, suggesting an attack on the classification using centralizers of involutions.
  1955               Chevalley introduces the Chevalley groups, in particular introducing exceptional simple groups of types _F_₄, _E_₇, and _E_₈.
  1956               Hall–Higman theorem
  1957               Suzuki shows that all finite simple CA groups of odd order are cyclic.
  1958               The Brauer–Suzuki–Wall theorem characterizes the projective special linear groups of rank 1, and classifies the simple CA groups.
  1959               Steinberg introduces the Steinberg groups, giving some new finite simple groups, of types ³_D_₄ and ²_E_₆ (the latter were independently found at about the same time by Jacques Tits).
  1959               The Brauer–Suzuki theorem about groups with generalized quaternion Sylow 2-subgroups shows in particular that none of them are simple.
  1960               Thompson proves that a group with a fixed-point-free automorphism of prime order is nilpotent.
  1960               Feit, Marshall Hall, and Thompson show that all finite simple CN groups of odd order are cyclic.
  1960               Suzuki introduces the Suzuki groups, with types ²_B_₂.
  1961               Ree introduces the Ree groups, with types ²_F_₄ and ²_G_₂.
  1963               Feit and Thompson prove the odd order theorem.
  1964               Tits introduces BN pairs for groups of Lie type and finds the Tits group
  1965               The Gorenstein–Walter theorem classifies groups with a dihedral Sylow 2-subgroup.
  1966               Glauberman proves the Z* theorem
  1966               Janko introduces the Janko group J1, the first new sporadic group for about a century.
  1968               Glauberman proves the ZJ theorem
  1968               Higman and Sims introduce the Higman–Sims group
  1968               Conway introduces the Conway groups
  1969               Walter's theorem classifies groups with abelian Sylow 2-subgroups
  1969               Introduction of the Suzuki sporadic group, the Janko group J2, the Janko group J3, the McLaughlin group, and the Held group.
  1969               Gorenstein introduces signalizer functors based on Thompson's ideas.
  1970               MacWilliams shows that the 2-groups with no normal abelian subgroup of rank 3 have sectional 2-rank at most 4. (The simple groups with Sylow subgroups satisfying the latter condition were later classified by Gorenstein and Harada.)
  1970               Bender introduced the generalized Fitting subgroup
  1970               The Alperin–Brauer–Gorenstein theorem classifies groups with quasi-dihedral or wreathed Sylow 2-subgroups, completing the classification of the simple groups of 2-rank at most 2
  1971               Fischer introduces the three Fischer groups
  1971               Thompson classifies quadratic pairs
  1971               Bender classifies group with a strongly embedded subgroup
  1972               Gorenstein proposes a 16-step program for classifying finite simple groups; the final classification follows his outline quite closely.
  1972               Lyons introduces the Lyons group
  1973               Rudvalis introduces the Rudvalis group
  1973               Fischer discovers the baby monster group (unpublished), which Fischer and Griess use to discover the monster group, which in turn leads Thompson to the Thompson sporadic group and Norton to the Harada–Norton group (also found in a different way by Harada).
  1974               Thompson classifies N-groups, groups all of whose local subgroups are solvable.
  1974               The Gorenstein–Harada theorem classifies the simple groups of sectional 2-rank at most 4, dividing the remaining finite simple groups into those of component type and those of characteristic 2 type.
  1974               Tits shows that groups with BN pairs of rank at least 3 are groups of Lie type
  1974               Aschbacher classifies the groups with a proper 2-generated core
  1975               Gorenstein and Walter prove the L-balance theorem
  1976               Glauberman proves the solvable signalizer functor theorem
  1976               Aschbacher proves the component theorem, showing roughly that groups of odd type satisfying some conditions have a component in standard form. The groups with a component of standard form were classified in a large collection of papers by many authors.
  1976               O'Nan introduces the O'Nan group
  1976               Janko introduces the Janko group J4, the last sporadic group to be discovered
  1977               Aschbacher characterizes the groups of Lie type of odd characteristic in his classical involution theorem. After this theorem, which in some sense deals with "most" of the simple groups, it was generally felt that the end of the classification was in sight.
  1978               Timmesfeld proves the O₂ extraspecial theorem, breaking the classification of groups of GF(2)-type into several smaller problems.
  1978               Aschbacher classifies the thin finite groups, which are mostly rank 1 groups of Lie type over fields of even characteristic.
  1981               Bombieri uses elimination theory to complete Thompson's work on the characterization of Ree groups, one of the hardest steps of the classification.
  1982               McBride proves the signalizer functor theorem for all finite groups.
  1982               Griess constructs the monster group by hand
  1983               The Gilman–Griess theorem classifies groups of characteristic 2 type and rank at least 4 with standard components, one of the three cases of the trichotomy theorem.
  1983               Aschbacher proves that no finite group satisfies the hypothesis of the uniqueness case, one of the three cases given by the trichotomy theorem for groups of characteristic 2 type.
  1983               Gorenstein and Lyons prove the trichotomy theorem for groups of characteristic 2 type and rank at least 4, while Aschbacher does the case of rank 3. This divides these groups into 3 subcases: the uniqueness case, groups of GF(2) type, and groups with a standard component.
  1983               Gorenstein announces the proof of the classification is complete, somewhat prematurely as the proof of the quasithin case was incomplete.
  1994               Gorenstein, Lyons, and Solomon begin publication of the revised classification
  2004               Aschbacher and Smith publish their work on quasithin groups (which are mostly groups of Lie type of rank at most 2 over fields of even characteristic), filling the last gap in the classification known at that time.
  2008               Harada and Solomon fill a minor gap in the classification by describing groups with a standard component that is a cover of the Mathieu group M22, a case that was accidentally omitted from the proof of the classification due to an error in the calculation of the Schur multiplier of M22.
  2012               Georges Gonthier and collaborators announce a computer-checked version of the Feit–Thompson theorem using the Coq proof assistant.[1]


Second-generation classification

The proof of the theorem, as it stood around 1985 or so, can be called _first generation_. Because of the extreme length of the first generation proof, much effort has been devoted to finding a simpler proof, called a SECOND-GENERATION CLASSIFICATION PROOF. This effort, called "revisionism", was originally led by Daniel Gorenstein.

, eight volumes of the second generation proof have been published (Gorenstein, Lyons & Solomon 1994, 1996, 1998, 1999, 2002, 2005, 2018a, 2018b). In 2012 Solomon estimated that the project would need another 5 volumes, but said that progress on them was slow. It is estimated that the new proof will eventually fill approximately 5,000 pages. (This length stems in part from the second generation proof being written in a more relaxed style.) Aschbacher and Smith wrote their two volumes devoted to the quasithin case in such a way that those volumes can be part of the second generation proof.

Gorenstein and his collaborators have given several reasons why a simpler proof is possible.

-   The most important is that the correct, final statement of the theorem is now known. Simpler techniques can be applied that are known to be adequate for the types of groups we know to be finite simple. In contrast, those who worked on the first generation proof did not know how many sporadic groups there were, and in fact some of the sporadic groups (e.g., the Janko groups) were discovered while proving other cases of the classification theorem. As a result, many of the pieces of the theorem were proved using techniques that were overly general.
-   Because the conclusion was unknown, the first generation proof consists of many stand-alone theorems, dealing with important special cases. Much of the work of proving these theorems was devoted to the analysis of numerous special cases. Given a larger, orchestrated proof, dealing with many of these special cases can be postponed until the most powerful assumptions can be applied. The price paid under this revised strategy is that these first generation theorems no longer have comparatively short proofs, but instead rely on the complete classification.
-   Many first generation theorems overlap, and so divide the possible cases in inefficient ways. As a result, families and subfamilies of finite simple groups were identified multiple times. The revised proof eliminates these redundancies by relying on a different subdivision of cases.
-   Finite group theorists have more experience at this sort of exercise, and have new techniques at their disposal.

has called the work on the classification problem by Ulrich Meierfrankenfeld, Bernd Stellmacher, Gernot Stroth, and a few others, a THIRD GENERATION PROGRAM. One goal of this is to treat all groups in characteristic 2 uniformly using the amalgam method.

Why is the proof so long?

Gorenstein has discussed some of the reasons why there might not be a short proof of the classification similar to the classification of compact Lie groups.

-   The most obvious reason is that the list of simple groups is quite complicated: with 26 sporadic groups there are likely to be many special cases that have to be considered in any proof. So far no one has yet found a clean uniform description of the finite simple groups similar to the parameterization of the compact Lie groups by Dynkin diagrams.
-   Atiyah and others have suggested that the classification ought to be simplified by constructing some geometric object that the groups act on and then classifying these geometric structures. The problem is that no one has been able to suggest an easy way to find such a geometric structure associated to a simple group. In some sense the classification does work by finding geometric structures such as BN-pairs, but this only comes at the end of a very long and difficult analysis of the structure of a finite simple group.
-   Another suggestion for simplifying the proof is to make greater use of representation theory. The problem here is that representation theory seems to require very tight control over the subgroups of a group in order to work well. For groups of small rank one has such control and representation theory works very well, but for groups of larger rank no-one has succeeded in using it to simplify the classification. In the early days of the classification there was considerable effort made to use representation theory, but this never achieved much success in the higher rank case.


Consequences of the classification

This section lists some results that have been proved using the classification of finite simple groups.

-   The Schreier conjecture
-   The Signalizer functor theorem
-   The B conjecture
-   The Schur–Zassenhaus theorem for all groups (though this only uses the Feit–Thompson theorem).
-   A transitive permutation group on a finite set with more than 1 element has a fixed-point-free element of prime power order.
-   The classification of 2-transitive permutation groups.
-   The classification of rank 3 permutation groups.
-   The Sims conjecture[2]
-   Frobenius's conjecture on the number of solutions of .


See also

-   O'Nan–Scott theorem


References

-   -   -   -   -   -   -   Daniel Gorenstein (1985), "The Enormous Theorem", _Scientific American_, December 1, 1985, vol. 253, no. 6, pp. 104–115.
-   -   -   -   -   -   -   -   -   -   Mark Ronan, _Symmetry and the Monster_, , Oxford University Press, 2006. (Concise introduction for lay reader)
-   Marcus du Sautoy, _Finding Moonshine_, Fourth Estate, 2008, (another introduction for the lay reader)
-   Ron Solomon (1995) "On Finite Simple Groups and their Classification," _Notices of the American Mathematical Society_. (Not too technical and good on history)
-   – article won Levi L. Conant prize for exposition

-   -


External links

-   _ATLAS of Finite Group Representations._ Searchable database of representations and other data for many finite simple groups.
-   Elwes, Richard, "An enormous theorem: the classification of finite simple groups," _Plus Magazine_, Issue 41, December 2006. For laypeople.
-   Madore, David (2003) _Orders of nonabelian simple groups._ Includes a list of all nonabelian simple groups up to order 10¹⁰.
-   http://mathoverflow.net/questions/180355/in-what-sense-is-the-classification-of-all-finite-groups-impossible

Category:Group theory * Category:Finite groups Category:Theorems in algebra Category:2004 in science Category:History of mathematics Category:Classification systems

[1]

[2]