In set theory and its applications throughout mathematics, a CLASS is a collection of sets (or sometimes other mathematical objects) that can be unambiguously defined by a property that all its members share. The precise definition of "class" depends on foundational context. In work on Zermelo–Fraenkel set theory, the notion of class is informal, whereas other set theories, such as von Neumann–Bernays–Gödel set theory, axiomatize the notion of "proper class", e.g., as entities that are not members of another entity.

A class that is not a set (informally in Zermelo–Fraenkel) is called a PROPER CLASS, and a class that is a set is sometimes called a SMALL CLASS. For instance, the class of all ordinal numbers, and the class of all sets, are proper classes in many formal systems.

In Quine's set-theoretical writing, the phrase "ultimate class" is often used instead of the phrase "proper class" emphasising that in the systems he considers, certain classes cannot be members, and are thus the final term in any membership chain to which they belong.

Outside set theory, the word "class" is sometimes used synonymously with "set". This usage dates from a historical period where classes and sets were not distinguished as they are in modern set-theoretic terminology. Many discussions of "classes" in the 19th century and earlier are really referring to sets, or perhaps rather take place without considering that certain classes can fail to be sets.


Examples

The collection of all algebraic objects of a given type will usually be a proper class. Examples include the class of all groups, the class of all vector spaces, and many others. In category theory, a category whose collection of objects forms a proper class (or whose collection of morphisms forms a proper class) is called a large category.

The surreal numbers are a proper class of objects that have the properties of a field.

Within set theory, many collections of sets turn out to be proper classes. Examples include the class of all sets, the class of all ordinal numbers, and the class of all cardinal numbers.

One way to prove that a class is proper is to place it in bijection with the class of all ordinal numbers. This method is used, for example, in the proof that there is no free complete lattice on three or more generators.


Paradoxes

The paradoxes of naive set theory can be explained in terms of the inconsistent assumption that "all classes are sets". With a rigorous foundation, these paradoxes instead suggest proofs that certain classes are proper (i.e., that they are not sets). For example, Russell's paradox suggests a proof that the class of all sets which do not contain themselves is proper, and the Burali-Forti paradox suggests that the class of all ordinal numbers is proper. The paradoxes do not arise with classes because there is no notion of classes containing classes. Otherwise, one could, for example, define a class of all classes that do not contain themselves, which would lead to a Russell paradox for classes. A conglomerate, on the other hand, can have proper classes as members, although the _theory_ of conglomerates is not yet well-established.


Classes in formal set theories

ZF set theory does not formalize the notion of classes, so each formula with classes must be reduced syntactically to a formula without classes.[1] For example, one can reduce the formula A = {x ∣ x = x} to ∀x(x ∈ A ↔ x = x). Semantically, in a metalanguage, the classes can be described as equivalence classes of logical formulas: If 𝒜 is a structure interpreting ZF, then the object language class builder expression {x ∣ ϕ} is interpreted in 𝒜 by the collection of all the elements from the domain of 𝒜 on which λxϕ holds; thus, the class can be described as the set of all predicates equivalent to ϕ (including ϕ itself). In particular, one can identify the "class of all sets" with the set of all predicates equivalent to x = x.

Because classes do not have any formal status in the theory of ZF, the axioms of ZF do not immediately apply to classes. However, if an inaccessible cardinal κ is assumed, then the sets of smaller rank form a model of ZF (a Grothendieck universe), and its subsets can be thought of as "classes".

In ZF, the concept of a function can also be generalised to classes. A class function is not a function in the usual sense, since it is not a set; it is rather a formula Φ(x, y) with the property that for any set x there is no more than one set y such that the pair (x, y) satisfies Φ. For example, the class function mapping each set to its successor may be expressed as the formula y = x ∪ {x}. The fact that the ordered pair (x, y) satisfies Φ may be expressed with the shorthand notation Φ(x) = y.

Another approach is taken by the von Neumann–Bernays–Gödel axioms (NBG); classes are the basic objects in this theory, and a set is then defined to be a class that is an element of some other class. However, the class existence axioms of NBG are restricted so that they only quantify over sets, rather than over all classes. This causes NBG to be a conservative extension of ZF.

Morse–Kelley set theory admits proper classes as basic objects, like NBG, but also allows quantification over all proper classes in its class existence axioms. This causes MK to be strictly stronger than both NBG and ZF.

In other set theories, such as New Foundations or the theory of semisets, the concept of "proper class" still makes sense (not all classes are sets) but the criterion of sethood is not closed under subsets. For example, any set theory with a universal set has proper classes which are subclasses of sets.


Notes


References

-   -   -   Raymond M. Smullyan, Melvin Fitting, 2010, _Set Theory And The Continuum Problem_. Dover Publications .
-   Monk Donald J., 1969, _Introduction to Set Theory_. McGraw-Hill Book Co. .


External links

-

Category:Set theory

[1]