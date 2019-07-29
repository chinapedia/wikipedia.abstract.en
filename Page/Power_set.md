Hasse_diagram_of_powerset_of_3.svg with respect to inclusion.]]

In mathematics, the POWER SET (or POWERSET) of any set is the set of all subsets of , including the empty set and itself, variously denoted as (), 𝒫(), ℘() (using the "Weierstrass p"), , , or, identifying the powerset of with the set of all functions from to a given set of two elements, . In axiomatic set theory (as developed, for example, in the ZFC axioms), the existence of the power set of any set is postulated by the axiom of power set.[1]

Any subset of () is called a _family of sets_ over .


Example

If is the set , then the subsets of are

-   (also denoted ⌀ or $\empty$, the empty set or the null set)

-   -   -   -   -   -   -

and hence the power set of is .[2]


Properties

If is a finite set with _S_{{!}} = _n_}} elements, then the number of subsets of is (_S_){{!}} = 2^(_n_)}}. This fact, which is the motivation for the notation , may be demonstrated simply as follows,

    First, order the elements of in any manner. We write any subset of in the format } where , can take the value of or . If , the -th element of is in the subset; otherwise, the -th element is not in the subset. Clearly the number of distinct subsets that can be constructed this way is as .

Cantor's diagonal argument shows that the power set of a set (whether infinite or not) always has strictly higher cardinality than the set itself (informally the power set must be larger than the original set). In particular, Cantor's theorem shows that the power set of a countably infinite set is uncountably infinite. The power set of the set of natural numbers can be put in a one-to-one correspondence with the set of real numbers (see Cardinality of the continuum).

The power set of a set , together with the operations of union, intersection and complement can be viewed as the prototypical example of a Boolean algebra. In fact, one can show that any _finite_ Boolean algebra is isomorphic to the Boolean algebra of the power set of a finite set. For _infinite_ Boolean algebras this is no longer true, but every infinite Boolean algebra can be represented as a subalgebra of a power set Boolean algebra (see Stone's representation theorem).

The power set of a set forms an abelian group when considered with the operation of symmetric difference (with the empty set as the identity element and each set being its own inverse) and a commutative monoid when considered with the operation of intersection. It can hence be shown (by proving the distributive laws) that the power set considered together with both of these operations forms a Boolean ring.


Representing subsets as functions

In set theory, [[Function_(mathematics)#Function_space|}.

In English, return the set with the element added to each set in .

-   If , then is returned.
-   Otherwise:

:*Let be any single element of .

:*Let , where denotes the relative complement of in .

:*And the result: is returned.

In words: The power set of the empty set is the set containing only the empty set and the power set of any other set is all the subsets of the set containing some specific element and all the subsets of the set not containing that specific element.

The following is a Python implementation of the above algorithm as used for lists (note that such lists, opposed to sets, may also hold duplicated enties):

Verbose:

    def p(s):
        if s==[]: # base case
            return [s] # if s is empty, then the only sublist of s is s itself
        else:
            e = s[0] # any element from s (in this implementation, we choose the first element)
            t = s[1:] # s with e removed
            pt = p(t) # the list of all sublists of t (note that this is a recursive call)
            fept = [x + [e] for x in pt] # pt with e appended to each sublist
            return pt + fept # the concatenation of all constructed sublists

    # example:
    print(p(['x', 'y', 'z'])

Concise form:

    def p(s):
        return p(s[1:]) + [x + [s[0]] for x in p(s[1:])] if s else [s]


Subsets of limited cardinality

The set of subsets of of cardinality less than or equal to is sometimes denoted by or , and the set of subsets with cardinality strictly less than is sometimes denoted or . Similarly, the set of non-empty subsets of might be denoted by or .


Power object

A set can be regarded as an algebra having no nontrivial operations or defining equations. From this perspective the idea of the power set of as the set of subsets of generalizes naturally to the subalgebras of an algebraic structure or algebra.

Now the power set of a set, when ordered by inclusion, is always a complete atomic Boolean algebra, and every complete atomic Boolean algebra arises as the lattice of all subsets of some set. The generalization to arbitrary algebras is that the set of subalgebras of an algebra, again ordered by inclusion, is always an algebraic lattice, and every algebraic lattice arises as the lattice of subalgebras of some algebra. So in that regard subalgebras behave analogously to subsets.

However, there are two important properties of subsets that do not carry over to subalgebras in general. First, although the subsets of a set form a set (as well as a lattice), in some classes it may not be possible to organize the subalgebras of an algebra as itself an algebra in that class, although they can always be organized as a lattice. Secondly, whereas the subsets of a set are in bijection with the functions from that set to the set {0,1} = 2, there is no guarantee that a class of algebras contains an algebra that can play the role of 2 in this way.

Certain classes of algebras enjoy both of these properties. The first property is more common, the case of having both is relatively rare. One class that does have both is that of multigraphs. Given two multigraphs and , a homomorphism consists of two functions, one mapping vertices to vertices and the other mapping edges to edges. The set of homomorphisms from to can then be organized as the graph whose vertices and edges are respectively the vertex and edge functions appearing in that set. Furthermore, the subgraphs of a multigraph are in bijection with the graph homomorphisms from to the multigraph definable as the complete directed graph on two vertices (hence four edges, namely two self-loops and two more edges forming a cycle) augmented with a fifth edge, namely a second self-loop at one of the vertices. We can therefore organize the subgraphs of as the multigraph , called the POWER OBJECT of .

What is special about a multigraph as an algebra is that its operations are unary. A multigraph has two sorts of elements forming a set of vertices and of edges, and has two unary operations giving the source (start) and target (end) vertices of each edge. An algebra all of whose operations are unary is called a presheaf. Every class of presheaves contains a presheaf that plays the role for subalgebras that 2 plays for subsets. Such a class is a special case of the more general notion of elementary topos as a category that is closed (and moreover cartesian closed) and has an object , called a subobject classifier. Although the term "power object" is sometimes used synonymously with exponential object , in topos theory is required to be .


Functors and quantifiers

In category theory and the theory of elementary topoi, the universal quantifier can be understood as the right adjoint of a functor between power sets, the inverse image functor of a function between sets; likewise, the existential quantifier is the left adjoint.[3]


See also

-   Set theory
-   Axiomatic set theory
-   Family of sets
-   Field of sets


Notes


References

-   -   -


External links

-   -   -   -   -   Power set Algorithm in C++

Category:Abstract algebra Category:Algebra Category:Basic concepts in set theory

[1]

[2]

[3] Saunders Mac Lane, Ieke Moerdijk, (1992) _Sheaves in Geometry and Logic_ Springer-Verlag. _See page 58_