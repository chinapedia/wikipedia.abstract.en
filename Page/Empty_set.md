Nullset.svg In mathematics, the EMPTY SET is the unique set having no elements; its size or cardinality (count of elements in a set) is zero. Some axiomatic set theories ensure that the empty set exists by including an axiom of empty set; in other theories, its existence can be deduced. Many possible properties of sets are vacuously true for the empty set.

In some textbooks and popularizations, the empty set is referred to as the "null set". However _null set_ is a distinct notion within the context of measure theory. In that setting, it describes a set of measure zero; such a set is not necessarily empty. The empty set may also be called the _void set_. Common notations for the empty set include "{}", "∅", and "∅".


Notation

Empty_set.svg Common notations for the empty set include "{}", "∅", and "∅". The latter two symbols were introduced by the Bourbaki group (specifically André Weil) in 1939, inspired by the letter Ø in the Norwegian and Danish alphabets (and not related in any way to the Greek letter Φ).[1] In the past, "0" was occasionally used as a symbol for the empty set, but this is now considered to be an improper use of notation.[2]

The symbol ∅ is available at Unicode point U+2205.[3] It can be coded in HTML as ∅ and as ∅. It can be coded in LaTeX as \varnothing. The symbol ∅ is coded in LaTeX as \emptyset.


Properties

In standard axiomatic set theory, by the principle of extensionality, two sets are equal if they have the same elements; therefore there can be only one set with no elements. Hence there is but one empty set, and we speak of "the empty set" rather than "an empty set".

(The mathematical symbols used below are explained in the article _List of mathematical symbols_.)

For any set _A_:

-   The empty set is a subset of _A_:
    ∀_A_ : ⌀ ⊆ _A_

-   The union of _A_ with the empty set is _A_:
    ∀_A_ : _A_ ∪ ⌀ = _A_

-   The intersection of _A_ with the empty set is the empty set:
    ∀_A_ : _A_ ∩ ⌀ = ⌀

-   The Cartesian product of _A_ and the empty set is the empty set:
    ∀_A_ : _A_ × ⌀ = ⌀

The empty set has the following properties:

-   Its only subset is the empty set itself:
    ∀_A_ : _A_ ⊆ ⌀ ⇒ _A_ = ⌀

-   The power set of the empty set is the set containing only the empty set:
    2^(⌀) = {⌀}

-   Its number of elements (that is, its cardinality) is zero:
    |⌀| = 0

The connection between the empty set and zero goes further, however: in the standard set-theoretic definition of natural numbers, sets are used to model the natural numbers. In this context, zero is modelled by the empty set.

For any property:

-   For every element of ⌀ the property holds (vacuous truth);
-   There is no element of ⌀ for which the property holds.

Conversely, if for some property and some set _V_, the following two statements hold:

-   For every element of _V_ the property holds
-   There is no element of _V_ for which the property holds

then _V_ = ∅.

By the definition of subset, the empty set is a subset of any set _A_. That is, _every_ element _x_ of ⌀ belongs to _A_. Indeed, if it were not true that every element of ⌀ is in _A_ then there would be at least one element of ⌀ that is not present in _A_. Since there are _no_ elements of ⌀ at all, there is no element of ⌀ that is not in _A_. Any statement that begins "for every element of ⌀" is not making any substantive claim; it is a vacuous truth. This is often paraphrased as "everything is true of the elements of the empty set."

Operations on the empty set

When speaking of the sum of the elements of a finite set, one is inevitably led to the convention that the sum of the elements of the empty set is zero. The reason for this is that zero is the identity element for addition. Similarly, the product of the elements of the empty set should be considered to be one (see empty product), since one is the identity element for multiplication.

A derangement is a permutation of a set without fixed points. The empty set can be considered a derangement of itself, because it has only one permutation (0! = 1), and it is vacuously true that no element (of the empty set) can be found that retains its original position.


In other areas of mathematics

Extended real numbers

Since the empty set has no members, when it is considered as a subset of any ordered set, then every member of that set will be an upper bound and lower bound for the empty set. For example, when considered as a subset of the real numbers, with its usual ordering, represented by the real number line, every real number is both an upper and lower bound for the empty set.[4] When considered as a subset of the extended reals formed by adding two "numbers" or "points" to the real numbers, namely negative infinity, denoted  − ∞​ , which is defined to be less than every other extended real number, and positive infinity, denoted  + ∞​ , which is defined to be greater than every other extended real number, then:

sup ⌀ = min ({ − ∞,  + ∞} ∪ ℝ) =  − ∞,

and

inf ⌀ = max ({ − ∞,  + ∞} ∪ ℝ) =  + ∞.

That is, the least upper bound (sup or supremum) of the empty set is negative infinity, while the greatest lower bound (inf or infimum) is positive infinity. By analogy with the above, in the domain of the extended reals, negative infinity is the identity element for the maximum and supremum operators, while positive infinity is the identity element for minimum and infimum.

Topology

In any topological space _X_, the empty set is open by definition, as is _X_. Since the complement of an open set is closed and the empty set and _X_ are complements of each other, the empty set is also closed, making it a clopen set. Moreover, the empty set is compact by the fact that every finite set is compact.

The closure of the empty set is empty. This is known as "preservation of nullary unions."

Category theory

If _A_ is a set, then there exists precisely one function _f_ from ∅ to _A_, the empty function. As a result, the empty set is the unique initial object of the category of sets and functions.

The empty set can be turned into a topological space, called the empty space, in just one way: by defining the empty set to be open. This empty topological space is the unique initial object in the category of topological spaces with continuous maps. In fact, it is a strict initial object: only the empty set has a function to the empty set.

Set theory

In the von Neumann construction of the ordinals, 0 is defined as the empty set, and the successor of an ordinal is defined as S(α) = α ∪ {α}. Thus, we have 0 = ⌀, 1 = 0 ∪ {0} = {⌀}, 2 = 1 ∪ {1} = {⌀, {⌀}}, and so on. The von Neumann construction, along with the axiom of infinity, which guarantees the existence of at least one infinite set, can be used to construct the set of natural numbers, ℕ₀, such that the Peano axioms of arithmetic are satisfied.


Questioned existence

Axiomatic set theory

In Zermelo set theory, the existence of the empty set is assured by the axiom of empty set, and its uniqueness follows from the axiom of extensionality. However, the axiom of empty set can be shown redundant in at least two ways:

-   Standard first-order logic implies, merely from the logical axioms, that _something_ exists, and in the language of set theory, that thing must be a set. Now the existence of the empty set follows easily from the axiom of separation.
-   Even using free logic (which does not logically imply that something exists), there is already an axiom implying the existence of at least one set, namely the axiom of infinity.

Philosophical issues

While the empty set is a standard and widely accepted mathematical concept, it remains an ontological curiosity, whose meaning and usefulness are debated by philosophers and logicians.

The empty set is not the same thing as _nothing_; rather, it is a set with nothing _inside_ it and a set is always _something_. This issue can be overcome by viewing a set as a bag—an empty bag undoubtedly still exists. Darling (2004) explains that the empty set is not nothing, but rather "the set of all triangles with four sides, the set of all numbers that are bigger than nine but smaller than eight, and the set of all opening moves in chess that involve a king."[5]

The popular syllogism

    Nothing is better than eternal happiness; a ham sandwich is better than nothing; therefore, a ham sandwich is better than eternal happiness

is often used to demonstrate the philosophical relation between the concept of nothing and the empty set. Darling writes that the contrast can be seen by rewriting the statements "Nothing is better than eternal happiness" and "[A] ham sandwich is better than nothing" in a mathematical tone. According to Darling, the former is equivalent to "The set of all things that are better than eternal happiness is ⌀" and the latter to "The set {ham sandwich} is better than the set ⌀". It is noted that the first compares elements of sets, while the second compares the sets themselves.[6]

Jonathan Lowe argues that while the empty set:

    "...was undoubtedly an important landmark in the history of mathematics, … we should not assume that its utility in calculation is dependent upon its actually denoting some object."

it is also the case that:

    "All that we are ever informed about the empty set is that it (1) is a set, (2) has no members, and (3) is unique amongst sets in having no members. However, there are very many things that 'have no members', in the set-theoretical sense—namely, all non-sets. It is perfectly clear why these things have no members, for they are not sets. What is unclear is how there can be, uniquely amongst sets, a _set_ which has no members. We cannot conjure such an entity into existence by mere stipulation."[7]

George Boolos argued that much of what has been heretofore obtained by set theory can just as easily be obtained by plural quantification over individuals, without reifying sets as singular entities having other entities as members.[8]


See also

-   Inhabited set
-   Nothing


References


Further reading

-   Halmos, Paul, _Naive Set Theory_. Princeton, NJ: D. Van Nostrand Company, 1960. Reprinted by Springer-Verlag, New York, 1974. (Springer-Verlag edition). Reprinted by Martino Fine Books, 2011. (paperback edition).
-   -


External links

-

Category:Basic concepts in set theory

[1] Earliest Uses of Symbols of Set Theory and Logic.

[2]

[3] Unicode Standard 5.2

[4] Bruckner, A.N., Bruckner, J.B., and Thomson, B.S., 2008. _Elementary Real Analysis_, 2nd ed. Prentice Hall. P. 9.

[5]

[6]

[7]

[8] *George Boolos, 1984, "To be is to be the value of a variable," _The Journal of Philosophy_ 91: 430–49. Reprinted in his 1998 _Logic, Logic and Logic_ (Richard Jeffrey, and Burgess, J., eds.) Harvard Univ. Press: 54–72.