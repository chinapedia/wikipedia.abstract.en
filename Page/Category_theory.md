CATEGORY THEORY[1] formalizes mathematical structure and its concepts in terms of a labeled directed graph called a _category_, whose nodes are called _objects_, and whose labelled directed edges are called _arrows_ (or morphisms). A category has two basic properties: the ability to compose the arrows associatively, and the existence of an identity arrow for each object. The language of category theory has been used to formalize concepts of other high-level abstractions such as sets, rings, and groups. Informally, category theory is a general theory of functions.

Several terms used in category theory, including the term "morphism", are used differently from their uses in the rest of mathematics. In category theory, morphisms obey conditions specific to category theory itself.

Samuel Eilenberg and Saunders Mac Lane introduced the concepts of categories, functors, and natural transformations in 1942–45 in their study of algebraic topology, with the goal of understanding the processes that preserve mathematical structure.

Category theory has practical applications in programming language theory, for example the usage of monads in functional programming. It may also be used as an axiomatic foundation for mathematics, as an alternative to set theory and other proposed foundations.


Basic concepts

Categories represent abstractions of other mathematical concepts. Many areas of mathematics can be formalised by category theory as categories. Hence category theory uses abstraction to make it possible to state and prove many intricate and subtle mathematical results in these fields in a much simpler way.[2]

A basic example of a category is the category of sets, where the objects are sets and the arrows are functions from one set to another. However, the objects of a category need not be sets, and the arrows need not be functions. Any way of formalising a mathematical concept such that it meets the basic conditions on the behaviour of objects and arrows is a valid category—and all the results of category theory apply to it.

The "arrows" of category theory are often said to represent a process connecting two objects, or in many cases a "structure-preserving" transformation connecting two objects. There are, however, many applications where much more abstract concepts are represented by objects and morphisms. The most important property of the arrows is that they can be "composed", in other words, arranged in a sequence to form a new arrow.


Applications of categories

Categories now appear in many branches of mathematics, some areas of theoretical computer science where they can correspond to types or to database schemas, and mathematical physics where they can be used to describe vector spaces.[3] Probably the first application of category theory outside pure mathematics was the "metabolism-repair" model of autonomous living organisms by Robert Rosen.[4]


Utility

Categories, objects, and morphisms

The study of categories is an attempt to _axiomatically_ capture what is commonly found in various classes of related mathematical structures by relating them to the _structure-preserving functions_ between them. A systematic study of category theory then allows us to prove general results about any of these types of mathematical structures from the axioms of a category.

Consider the following example. The class GRP of groups consists of all objects having a "group structure". One can proceed to prove theorems about groups by making logical deductions from the set of axioms defining groups. For example, it is immediately proven from the axioms that the identity element of a group is unique.

Instead of focusing merely on the individual objects (e.g., groups) possessing a given structure, category theory emphasizes the morphisms – the structure-preserving mappings – _between_ these objects; by studying these morphisms, one is able to learn more about the structure of the objects. In the case of groups, the morphisms are the group homomorphisms. A group homomorphism between two groups "preserves the group structure" in a precise sense; informally it is a "process" taking one group to another, in a way that carries along information about the structure of the first group into the second group. The study of group homomorphisms then provides a tool for studying general properties of groups and consequences of the group axioms.

A similar type of investigation occurs in many mathematical theories, such as the study of continuous maps (morphisms) between topological spaces in topology (the associated category is called TOP), and the study of smooth functions (morphisms) in manifold theory.

Not all categories arise as "structure preserving (set) functions", however; the standard example is the category of homotopies between pointed topological spaces.

If one axiomatizes relations instead of functions, one obtains the theory of allegories.

Functors

A category is _itself_ a type of mathematical structure, so we can look for "processes" which preserve this structure in some sense; such a process is called a functor.

Diagram chasing is a visual method of arguing with abstract "arrows" joined in diagrams. Functors are represented by arrows between categories, subject to specific defining commutativity conditions. Functors can define (construct) categorical diagrams and sequences (viz. Mitchell, 1965). A functor associates to every object of one category an object of another category, and to every morphism in the first category a morphism in the second.

As a result, this defines a category _of categories and functors_ – the objects are categories, and the morphisms (between categories) are functors.

Studying categories and functors is not just studying a class of mathematical structures and the morphisms between them but rather the _relationships between various classes of mathematical structures_. This fundamental idea first surfaced in algebraic topology. Difficult _topological_ questions can be translated into _algebraic_ questions which are often easier to solve. Basic constructions, such as the fundamental group or the fundamental groupoid of a topological space, can be expressed as functors to the category of groupoids in this way, and the concept is pervasive in algebra and its applications.

Natural transformations

Abstracting yet again, some diagrammatic and/or sequential constructions are often "naturally related" – a vague notion, at first sight. This leads to the clarifying concept of natural transformation, a way to "map" one functor to another. Many important constructions in mathematics can be studied in this context. "Naturality" is a principle, like general covariance in physics, that cuts deeper than is initially apparent. An arrow between two functors is a natural transformation when it is subject to certain naturality or commutativity conditions.

Functors and natural transformations ('naturality') are the key concepts in category theory.[5]


Categories, objects, and morphisms

Categories

A _category_ _C_ consists of the following three mathematical entities:

-   A class ob(_C_), whose elements are called _objects_;
-   A class hom(_C_), whose elements are called morphisms or maps or _arrows_. Each morphism _F_ has a _source object A_ and _target object B_.
    The expression , would be verbally stated as "_f_ is a morphism from _a_ to _b_".
    The expression – alternatively expressed as , , or – denotes the _hom-class_ of all morphisms from _a_ to _b_.
-   A binary operation ∘, called _composition of morphisms_, such that for any three objects _a_, _b_, and _c_, we have . The composition of and is written as or _gf_, governed by two axioms:
    -   Associativity: If , and then , and
    -   Identity: For every object _x_, there exists a morphism called the _identity morphism for x_, such that for every morphism , we have .



        From the axioms, it can be proved that there is exactly one identity morphism for every object. Some authors deviate from the definition just given by identifying each object with its identity morphism.

Morphisms

Relations among morphisms (such as ) are often depicted using commutative diagrams, with "points" (corners) representing objects and "arrows" representing morphisms.

Morphisms can have any of the following properties. A morphism is a:

-   monomorphism (or _monic_) if implies for all morphisms .
-   epimorphism (or _epic_) if implies for all morphisms .
-   _bimorphism_ if _f_ is both epic and monic.
-   isomorphism if there exists a morphism such that .
-   endomorphism if . end(_a_) denotes the class of endomorphisms of _a_.
-   automorphism if _f_ is both an endomorphism and an isomorphism. aut(_a_) denotes the class of automorphisms of _a_.
-   retraction if a right inverse of _f_ exists, i.e. if there exists a morphism with .
-   section if a left inverse of _f_ exists, i.e. if there exists a morphism with .

Every retraction is an epimorphism, and every section is a monomorphism. Furthermore, the following three statements are equivalent:

-   _f_ is a monomorphism and a retraction;
-   _f_ is an epimorphism and a section;
-   _f_ is an isomorphism.


Functors

Functors are structure-preserving maps between categories. They can be thought of as morphisms in the category of all (small) categories.

A (COVARIANT) functor _F_ from a category _C_ to a category _D_, written , consists of:

-   for each object _x_ in _C_, an object _F_(_x_) in _D_; and
-   for each morphism in _C_, a morphism ,

such that the following two properties hold:

-   For every object _x_ in _C_, ;
-   For all morphisms and , .

A CONTRAVARIANT functor is like a covariant functor, except that it "turns morphisms around" ("reverses all the arrows"). More specifically, every morphism in _C_ must be assigned to a morphism in _D_. In other words, a contravariant functor acts as a covariant functor from the opposite category _C_^(op) to _D_.


Natural transformations

A _natural transformation_ is a relation between two functors. Functors often describe "natural constructions" and natural transformations then describe "natural homomorphisms" between two such constructions. Sometimes two quite different constructions yield "the same" result; this is expressed by a natural isomorphism between the two functors.

If _F_ and _G_ are (covariant) functors between the categories _C_ and _D_, then a natural transformation η from _F_ to _G_ associates to every object _X_ in _C_ a morphism in _D_ such that for every morphism in _C_, we have ; this means that the following diagram is commutative:

The two functors _F_ and _G_ are called _naturally isomorphic_ if there exists a natural transformation from _F_ to _G_ such that η_(_X_) is an isomorphism for every object _X_ in _C_.


Other concepts

Universal constructions, limits, and colimits

Using the language of category theory, many areas of mathematical study can be categorized. Categories include sets, groups and topologies.

Each category is distinguished by properties that all its objects have in common, such as the empty set or the product of two topologies, yet in the definition of a category, objects are considered atomic, i.e., we _do not know_ whether an object _A_ is a set, a topology, or any other abstract concept. Hence, the challenge is to define special objects without referring to the internal structure of those objects. To define the empty set without referring to elements, or the product topology without referring to open sets, one can characterize these objects in terms of their relations to other objects, as given by the morphisms of the respective categories. Thus, the task is to find _universal properties_ that uniquely determine the objects of interest.

Numerous important constructions can be described in a purely categorical way if the _category limit_ can be developed and dualized to yield the notion of a _colimit_.

Equivalent categories

It is a natural question to ask: under which conditions can two categories be considered _essentially the same_, in the sense that theorems about one category can readily be transformed into theorems about the other category? The major tool one employs to describe such a situation is called _equivalence of categories_, which is given by appropriate functors between two categories. Categorical equivalence has found numerous applications in mathematics.

Further concepts and results

The definitions of categories and functors provide only the very basics of categorical algebra; additional important topics are listed below. Although there are strong interrelations between all of these topics, the given order can be considered as a guideline for further reading.

-   The functor category _D_^(_C_) has as objects the functors from _C_ to _D_ and as morphisms the natural transformations of such functors. The Yoneda lemma is one of the most famous basic results of category theory; it describes representable functors in functor categories.
-   Duality: Every statement, theorem, or definition in category theory has a _dual_ which is essentially obtained by "reversing all the arrows". If one statement is true in a category _C_ then its dual is true in the dual category _C_^(op). This duality, which is transparent at the level of category theory, is often obscured in applications and can lead to surprising relationships.
-   Adjoint functors: A functor can be left (or right) adjoint to another functor that maps in the opposite direction. Such a pair of adjoint functors typically arises from a construction defined by a universal property; this can be seen as a more abstract and powerful view on universal properties.

Higher-dimensional categories

Many of the above concepts, especially equivalence of categories, adjoint functor pairs, and functor categories, can be situated into the context of _higher-dimensional categories_. Briefly, if we consider a morphism between two objects as a "process taking us from one object to another", then higher-dimensional categories allow us to profitably generalize this by considering "higher-dimensional processes".

For example, a (strict) 2-category is a category together with "morphisms between morphisms", i.e., processes which allow us to transform one morphism into another. We can then "compose" these "bimorphisms" both horizontally and vertically, and we require a 2-dimensional "exchange law" to hold, relating the two composition laws. In this context, the standard example is CAT, the 2-category of all (small) categories, and in this example, bimorphisms of morphisms are simply natural transformations of morphisms in the usual sense. Another basic example is to consider a 2-category with a single object; these are essentially monoidal categories. Bicategories are a weaker notion of 2-dimensional categories in which the composition of morphisms is not strictly associative, but only associative "up to" an isomorphism.

This process can be extended for all natural numbers _n_, and these are called _n_-categories. There is even a notion of _ω-category_ corresponding to the ordinal number ω.

Higher-dimensional categories are part of the broader mathematical field of higher-dimensional algebra, a concept introduced by Ronald Brown. For a conversational introduction to these ideas, see John Baez, 'A Tale of _n_-categories' (1996).


Historical notes

In 1942–45, Samuel Eilenberg and Saunders Mac Lane introduced categories, functors, and natural transformations as part of their work in topology, especially algebraic topology. Their work was an important part of the transition from intuitive and geometric homology to axiomatic homology theory. Eilenberg and Mac Lane later wrote that their goal was to understand natural transformations. That required defining functors, which required categories.

Stanislaw Ulam, and some writing on his behalf, have claimed that related ideas were current in the late 1930s in Poland. Eilenberg was Polish, and studied mathematics in Poland in the 1930s. Category theory is also, in some sense, a continuation of the work of Emmy Noether (one of Mac Lane's teachers) in formalizing abstract processes; Noether realized that understanding a type of mathematical structure requires understanding the processes that preserve that structure. To achieve this understanding, Eilenberg and Mac Lane proposed an axiomatic formalization of the relation between structures and the processes that preserve them.

The subsequent development of category theory was powered first by the computational needs of homological algebra, and later by the axiomatic needs of algebraic geometry. General category theory, an extension of universal algebra having many new features allowing for semantic flexibility and higher-order logic, came later; it is now applied throughout mathematics.

Certain categories called topoi (singular _topos_) can even serve as an alternative to axiomatic set theory as a foundation of mathematics. A topos can also be considered as a specific type of category with two additional topos axioms. These foundational applications of category theory have been worked out in fair detail as a basis for, and justification of, constructive mathematics. Topos theory is a form of abstract sheaf theory, with geometric origins, and leads to ideas such as pointless topology.

Categorical logic is now a well-defined field based on type theory for intuitionistic logics, with applications in functional programming and domain theory, where a cartesian closed category is taken as a non-syntactic description of a lambda calculus. At the very least, category theoretic language clarifies what exactly these related areas have in common (in some abstract sense).

Category theory has been applied in other fields as well. For example, John Baez has shown a link between Feynman diagrams in Physics and monoidal categories.[6] Another application of category theory, more specifically: topos theory, has been made in mathematical music theory, see for example the book _The Topos of Music, Geometric Logic of Concepts, Theory, and Performance_ by Guerino Mazzola.

More recent efforts to introduce undergraduates to categories as a foundation for mathematics include those of William Lawvere and Rosebrugh (2003) and Lawvere and Stephen Schanuel (1997) and Mirroslav Yotov (2012).


See also

-   Domain theory
-   Enriched category theory
-   Glossary of category theory
-   Group theory
-   Higher category theory
-   Higher-dimensional algebra
-   Important publications in category theory
-   Lambda calculus
-   Outline of category theory
-   Timeline of category theory and related mathematics


Notes


References

Citations

Sources

-   -   .

-   .

-   -   -   -   -   .

-   -   -   -   -   -   -   -   -   -   -   -   -   -   Notes for a course offered as part of the MSc. in Mathematical Logic, Manchester University.

-   , draft of a book.

-   -   Based on .


Further reading

-


External links

-   Theory and Application of Categories, an electronic journal of category theory, full text, free, since 1995.
-   nLab, a wiki project on mathematics, physics and philosophy with emphasis on the _n_-categorical point of view.
-   The n-Category Café, essentially a colloquium on topics in category theory.
-   Category Theory, a web page of links to lecture notes and freely available books on category theory.
-   , a formal introduction to category theory.

-   -   , with an extensive bibliography.

-   List of academic conferences on category theory
-   — An informal introduction to higher order categories.

-   WildCats is a category theory package for Mathematica. Manipulation and visualization of objects, morphisms, categories, functors, natural transformations, universal properties.
-   , a channel about category theory.

-   .

-   Video archive of recorded talks relevant to categories, logic and the foundations of physics.
-   Interactive Web page which generates examples of categorical constructions in the category of finite sets.
-   Category Theory for the Sciences, an instruction on category theory as a tool throughout the sciences.
-   Category Theory for Programmers A book in blog form explaining category theory for computer programmers.
-   Introduction to category theory.

Category_theory Category:Higher category theory

[1]

[2]

[3] B. Coecke, editor New Structures for Physics Number 831 in Lecture Notes in Physics. Springer-Verlag, 2011

[4]

[5]

[6]