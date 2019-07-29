On_Off_-_Zał_Wył_(3086204137).jpg. Pressing the _On_ button (green) is an idempotent operation, since it has the same effect whether done once or multiple times.]] IDEMPOTENCE (,[1] )[2] is the property of certain operations in mathematics and computer science whereby they can be applied multiple times without changing the result beyond the initial application. The concept of idempotence arises in a number of places in abstract algebra (in particular, in the theory of projectors and closure operators) and functional programming (in which it is connected to the property of referential transparency).

The term was introduced by Benjamin Peirce[3] in the context of elements of algebras that remain invariant when raised to a positive integer power, and literally means "(the quality of having) the same power", from + _potence_ (same + power).


Definition

An element _x_ of a magma (_M_, •) is said to be _idempotent_ if:[4][5]

    .

If all elements are idempotent with respect to •, then • is called idempotent. The formula ∀_x_, is called the idempotency law for •.[6][7]


Examples

-   The natural number 1 is an idempotent element with respect to multiplication (since 1×1 = 1), and so is 0 (since 0×0 = 0), but no other natural number is (e.g. 2×2 = 2 does not hold). For the latter reason, multiplication of natural numbers is _not_ an idempotent operation. More formally, in the monoid (ℕ, ×), idempotent elements are just 0 and 1.
-   In a magma (_M_, •), an identity element _e_ or an absorbing element _a_, if it exists, is idempotent. Indeed, and .
-   In a group (_G_, •), the identity element _e_ is the only idempotent element. Indeed, if _x_ is an element of _G_ such that , then and finally _x_ = _e_ by multiplying on the left by the inverse element of _x_.

-   Taking the intersection _x_∩_y_ of two sets _x_ and _y_ is an idempotent operation, since _x_∩_x_ always equals _x_. This means that the idempotency law ∀_x_, _x_∩_x_ = _x_ is true. Similarly, taking the union of two sets is an idempotent operation. Formally, in the monoids (𝒫(_E_), ∪) and (𝒫(_E_), ∩) of the power set of the set _E_ with the set union ∪ and set intersection ∩ respectively, all elements are idempotent; hence ∪ and ∩ are idempotent operations on 𝒫(_E_).
-   In the monoids ({0, 1}, ∨) and ({0, 1}, ∧) of the Boolean domain with the logical disjunction ∨ and the logical conjunction ∧ respectively, all elements are idempotent.
-   In a Boolean ring, multiplication is idempotent.
-   In a Tropical semiring, addition is idempotent.

Idempotent functions

In the monoid (_F^(E)_, ∘) of the functions from a set _E_ to a subset _F_ of _E_ with the function composition ∘, idempotent elements are the functions such that , in other words such that for all _x_ in _E_, (the image of each element in _E_ is a fixed point of _f_). For example:

-   Taking the absolute value _abs_(_x_)[8] of an integer number _x_ is an idempotent function for the following reason: _abs_(_abs_(_x_)) = _abs_(_x_) is true for each integer number _x_.[9] This means that _abs_ ∘ _abs_ = _abs_[10] holds, that is, _abs_ is an idempotent element in the set of all functions (from integers to integers)[11] with respect to function composition. Therefore, _abs_ satisfies the above definition of an idempotent function.

Other examples include:

-   the identity function is idempotent;
-   constant functions are idempotent;
-   the floor, ceiling and fractional part functions are idempotent;
-   the subgroup generated function from the power set of a group to itself is idempotent;
-   the convex hull function from the power set of an affine space over the reals to itself is idempotent;
-   the closure and interior functions of the power set of a topological space to itself are idempotent;
-   the Kleene star and Kleene plus functions of the power set of a monoid to itself are idempotent;
-   the idempotent endomorphisms of a vector space are its projections.

If the set _E_ has _n_ elements, we can partition it into _k_ chosen fixed points and non-fixed points under _f_, and then _k_^(_n_−_k_) is the number of different idempotent functions. Hence, taking into account all possible partitions,

    $\sum_{k=0}^n {n \choose k} k^{n-k}$

is the total number of possible idempotent functions on the set. The integer sequence of the number of idempotent functions as given by the sum above for _n_ = 0, 1, 2, 3, 4, 5, 6, 7, 8, … starts with 1, 1, 3, 10, 41, 196, 1057, 6322, 41393, … .

Neither the property of being idempotent nor that of being not is preserved under function composition.[12] As an example for the former, mod 3 and _g_(_x_) = max(_x_, 5) are both idempotent, but is not,[13] although happens to be.[14] As an example for the latter, the negation function ¬ on the Boolean domain is not idempotent, but is. Similarly, unary negation of real numbers is not idempotent, but is.


Computer science meaning

In computer science, the term _idempotence_ may have a different meaning depending on the context in which it is applied:

-   in imperative programming, a subroutine with side effects is idempotent if the system state remains the same after one or several calls, in other words if the function from the system state space to itself associated to the subroutine is idempotent in the mathematical sense given in the definition;
-   in functional programming, a pure function is idempotent if it is idempotent in the mathematical sense given in the definition.

This is a very useful property in many situations, as it means that an operation can be repeated or retried as often as necessary without causing unintended effects. With non-idempotent operations, the algorithm may have to keep track of whether the operation was already performed or not.

Computer science examples

A function looking up a customer's name and address in a database is typically idempotent, since this will not cause the database to change. Similarly, changing a customer's address to XYZ is typically idempotent, because the final address will be the same no matter how many times XYZ is submitted. However, placing an order for a cart for the customer is typically not idempotent, since running the call several times will lead to several orders being placed. Canceling an order is idempotent, because the order remains canceled no matter how many requests are made.

A composition of idempotent methods or subroutines, however, is not necessarily idempotent if a later method in the sequence changes a value that an earlier method depends on – _idempotence is not closed under composition_. For example, suppose the initial value of a variable is 3 and there is a sequence that reads the variable, then changes it to 5, and then reads it again. Each step in the sequence is idempotent: both steps reading the variable have no side effects and changing a variable to 5 will always have the same effect no matter how many times it is executed. Nonetheless, executing the entire sequence once produces the output (3, 5), but executing it a second time produces the output (5, 5), so the sequence is not idempotent.

In the Hypertext Transfer Protocol (HTTP), idempotence and safety are the major attributes that separate HTTP verbs. Of the major HTTP verbs, GET, PUT, and DELETE should be implemented in an idempotent manner according to the standard, but POST need not be.[15] GET retrieves a resource; PUT stores content at a resource; and DELETE eliminates a resource. As in the example above, reading data usually has no side effects, so it is idempotent (in fact _nullipotent_). Storing and deleting a given set of content are each usually idempotent as long as the request specifies a location or identifier that uniquely identifies that resource and only that resource again in the future. The PUT and DELETE operations with unique identifiers reduce to the simple case of assignment to an immutable variable of either a value or the null-value, respectively, and are idempotent for the same reason; the end result is always the same as the result of the initial execution, even if the response differs.[16]

Violation of the unique identification requirement in storage or deletion typically causes violation of idempotence. For example, storing or deleting a given set of content without specifying a unique identifier: POST requests, which do not need to be idempotent, often do not contain unique identifiers, so the creation of the identifier is delegated to the receiving system which then creates a corresponding new record. Similarly, PUT and DELETE requests with nonspecific criteria may result in different outcomes depending on the state of the system - for example, a request to delete the most recent record. In each case, subsequent executions will further modify the state of the system, so they are not idempotent.

In Event stream processing, idempotence refers to the ability of a system to produce the same outcome, even if the same file, event or message is received more than once.

In a load-store architecture, instructions that might possibly cause a page fault are idempotent. So if a page fault occurs, the OS can load the page from disk and then simply re-execute the faulted instruction. In a processor where such instructions are not idempotent, dealing with page faults is much more complex.

When reformatting output, pretty-printing is expected to be idempotent. In other words, if the output is already "pretty", there should be nothing to do for the pretty-printer.

In Service oriented architecture (SOA), a multiple-step orchestration process composed entirely of idempotent steps can be replayed without side-effects if any part of that process fails.


Applied examples

Colección_de_hombres_cruzando.JPG Applied examples that many people could encounter in their day-to-day lives include elevator call buttons and crosswalk buttons.[17] The initial activation of the button moves the system into a requesting state, until the request is satisfied. Subsequent activations of the button between the initial activation and the request being satisfied have no effect, unless the system is designed to adjust the time for satisfying the request based on the number of activations.


See also

-   Closure operator
-   Fixed point (mathematics)
-   Idempotent of a code
-   Nilpotent
-   Idempotent matrix
-   Idempotent relation — a generalization of idempotence to binary relations
-   List of matrices
-   Pure function
-   Referential transparency
-   Iterated function
-   Biordered set
-   Involution (mathematics)


References


Further reading

-   “idempotent” at FOLDOC
-   -   -   -   -   -   p. 443

-   Peirce, Benjamin. _Linear Associative Algebra_ 1870.
-

Category:Abstract algebra Category:Closure operators Category:Mathematical relations Category:Theoretical computer science Category:Binary operations

[1]

[2]

[3] Polcino & Sehgal (2002), p. 127.

[4]

[5]

[6]  Here: Sect.1.2, p.5.

[7] . Here: Sect.I.5, p.8.

[8] A more common notation for this is |x|, however, it is harder to read when expressions are nested.

[9] In fact, this equation holds for all rational, real and even complex numbers, too.

[10] This is an equation between functions. Two functions are equal if their domains and ranges agree, and their output values agree on their whole domain.

[11] This set of functions is formally denoted as ℤ^(ℤ).

[12] If _f_ and _g_ commute, i.e. if , then idempotency of both _f_ and _g_ implies that of , since , using the associativity of composition.

[13] e.g. _f_(_g_(7)) = _f_(7) = 1, but _f_(_g_(1)) = _f_(5) = 2 ≠ 1

[14] also showing that commutation of _f_ and _g_ is not a necessary condition for idempotency preservation

[15] IETF, Hypertext Transfer Protocol (HTTP/1.1): Semantics and Content . See also HyperText Transfer Protocol.

[16]

[17] https://web.archive.org/web/20110523081716/http://www.nclabor.com/elevator/geartrac.pdf For example, this design specification includes detailed algorithm for when elevator cars will respond to subsequent calls for service