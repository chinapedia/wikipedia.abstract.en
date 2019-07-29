Congruent_non-congruent_triangles.svg is an example of an equivalence relation. The leftmost two triangles are congruent, while the third and fourth triangles are not congruent to any other triangle shown here. Thus, the first two triangles are in the same equivalence class, while the third and fourth triangles are each in their own equivalence class.]]

In mathematics, when the elements of some set have a notion of equivalence (formalized as an equivalence relation) defined on them, then one may naturally split the set into EQUIVALENCE CLASSES. These equivalence classes are constructed so that elements and belong to the same EQUIVALENCE CLASS if and only if they are equivalent.

Formally, given a set and an equivalence relation on , the _equivalence class_ of an element in is the set

{_x_ ∈ _S_ ∣ _x_ ∼ _a_}

of elements which are equivalent to . It may be proven from the defining properties of equivalence relations that the equivalence classes form a partition of . This partition – the set of equivalence classes – is sometimes called the QUOTIENT SET or the QUOTIENT SPACE of by and is denoted by .

When the set has some structure (such as a group operation or a topology) and the equivalence relation is compatible with this structure, the quotient set often inherits a similar structure from its parent set. Examples include quotient spaces in linear algebra, quotient spaces in topology, quotient groups, homogeneous spaces, quotient rings, quotient monoids, and quotient categories.


Examples

-   If is the set of all cars, and is the equivalence relation "has the same color as", then one particular equivalence class consists of all green cars. could be naturally identified with the set of all car colors.
-   Let be the set of all rectangles in a plane, and the equivalence relation "has the same area as". For each positive real number _A_ there will be an equivalence class of all the rectangles that have area _A_.[1]
-   Consider the modulo 2 equivalence relation on the set of integers: if and only if their difference is an even number. This relation gives rise to exactly two equivalence classes: one class consisting of all even numbers, and the other consisting of all odd numbers. Under this relation , , and all represent the same element of .[2]
-   Let be the set of ordered pairs of integers with not zero, and define an equivalence relation on according to which if and only if . Then the equivalence class of the pair can be identified with the rational number , and this equivalence relation and its equivalence classes can be used to give a formal definition of the set of rational numbers.[3] The same construction can be generalized to the field of fractions of any integral domain.
-   If consists of all the lines in, say the Euclidean plane, and _L_ ~ _M_ means that _L_ and _M_ are parallel lines, then the set of lines that are parallel to each other form an equivalence class as long as a line is considered parallel to itself. In this situation, each equivalence class determines a point at infinity.


Notation and formal definition

An equivalence relation on a set is a binary relation on satisfying the three properties:[4]

-   for all in (reflexivity),

-   implies for all and in (symmetry),

-   if and then for all , , and in (transitivity).

The equivalence class of an element is denoted or , and is defined as the set {x ∈ X ∣ a ∼ x} of elements that are related to by . The word "class" in the term "equivalence class" does not refer to classes as defined in set theory, however equivalence classes do often turn out to be proper classes.

The set of all equivalence classes in with respect to an equivalence relation is denoted as and called MODULO (or the QUOTIENT SET of by ).[5] The surjective map x ↦ [x] from onto , which maps each element to its equivalence class, is called the CANONICAL SURJECTION or the CANONICAL PROJECTION MAP.

When an element is chosen (often implicitly) in each equivalence class, this defines an injective map called a _section_. If this section is denoted by , one has for every equivalence class . The element is called a REPRESENTATIVE of . Any element of a class may be chosen as a representative of the class, by choosing the section appropriately.

Sometimes, there is a section that is more "natural" than the other ones. In this case, the representatives are called _canonical representatives_. For example, in modular arithmetic, consider the equivalence relation on the integers defined by if is a multiple of a given positive integer , called the _modulus_. Each class contains a unique non-negative integer smaller than , and these integers are the canonical representatives. The class and its representative are more or less identified, as is witnessed by the fact that the notation may denote either the class or its canonical representative (which is the remainder of the division of by ).


Properties

Every element of is a member of the equivalence class . Every two equivalence classes and are either equal or disjoint. Therefore, the set of all equivalence classes of forms a partition of : every element of belongs to one and only one equivalence class.[6] Conversely every partition of comes from an equivalence relation in this way, according to which if and only if and belong to the same set of the partition.[7]

It follows from the properties of an equivalence relation that



        if and only if .

In other words, if is an equivalence relation on a set , and and are two elements of , then these statements are equivalent:

-   x ∼ y
-   [x] = [y]
-   [x] ∩ [y] ≠ ∅.


Graphical representation

Equivalentie.svg An undirected graph may be associated to any symmetric relation on a set , where the vertices are the elements of , and two vertices and are joined if and only if . Among these graphs are the graphs of equivalence relations; they are characterized as the graphs such that the connected components are cliques.[8]


Invariants

If is an equivalence relation on , and is a property of elements of such that whenever , is true if is true, then the property is said to be an invariant of , or well-defined under the relation .

A frequent particular case occurs when is a function from to another set ; if whenever , then is said to be _class invariant under_ , or simply _invariant under_ . This occurs, e.g. in the character theory of finite groups. Some authors use "compatible with " or just "respects " instead of "invariant under ".

Any function itself defines an equivalence relation on according to which if and only if . The equivalence class of is the set of all elements in which get mapped to , i.e. the class is the inverse image of . This equivalence relation is known as the kernel of .

More generally, a function may map equivalent arguments (under an equivalence relation on ) to equivalent values (under an equivalence relation on ). Such a function is a morphism of sets equipped with an equivalence relation.


Quotient space in topology

In topology, a quotient space is a topological space formed on the set of equivalence classes of an equivalence relation on a topological space using the original space's topology to create the topology on the set of equivalence classes.

In abstract algebra, congruence relations on the underlying set of an algebra allow the algebra to induce an algebra on the equivalence classes of the relation, called a quotient algebra. In linear algebra, a quotient space is a vector space formed by taking a quotient group where the quotient homomorphism is a linear map. By extension, in abstract algebra, the term quotient space may be used for quotient modules, quotient rings, quotient groups, or any quotient algebra. However, the use of the term for the more general cases can as often be by analogy with the orbits of a group action.

The orbits of a group action on a set may be called the quotient space of the action on the set, particularly when the orbits of the group action are the right cosets of a subgroup of a group, which arise from the action of the subgroup on the group by left translations, or respectively the left cosets as orbits under right translation.

A normal subgroup of a topological group, acting on the group by translation action, is a quotient space in the senses of topology, abstract algebra, and group actions simultaneously.

Although the term can be used for any equivalence relation's set of equivalence classes, possibly with further structure, the intent of using the term is generally to compare that type of equivalence relation on a set either to an equivalence relation that induces some structure on the set of equivalence classes from a structure of the same kind on , or to the orbits of a group action. Both the sense of a structure preserved by an equivalence relation and the study of invariants under group actions lead to the definition of invariants of equivalence relations given above.


See also

-   Equivalence partitioning, a method for devising test sets in software testing based on dividing the possible program inputs into equivalence classes according to the behavior of the program on those inputs
-   Homogeneous space, the quotient space of Lie groups
-   Transversal (combinatorics)


Notes


References

-   -   -   -   -


Further reading

This material is basic and can be found in any text dealing with the fundamentals of proof technique, such as any of the following:

-   -   -   -   -   -   -   -   -   -   -   -   -


External links

-

Category:Algebra Category:Binary relations Category:Set theory

[1]

[2]

[3]

[4]

[5]

[6]

[7]

[8]