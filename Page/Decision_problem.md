Decision_Problem.svg In computability theory and computational complexity theory, a DECISION PROBLEM is a problem that can be posed as a yes-no question of the input values. An example of a decision problem is deciding whether a given natural number is prime. Another is the problem "given two numbers _x_ and _y_, does _x_ evenly divide _y_?". The answer is either 'yes' or 'no' depending upon the values of _x_ and _y_. A method for solving a decision problem, given in the form of an algorithm, is called a DECISION PROCEDURE for that problem. A decision procedure for the decision problem "given two numbers _x_ and _y_, does _x_ evenly divide _y_?" would give the steps for determining whether _x_ evenly divides _y_. One such algorithm is long division. If the remainder is zero the answer is 'yes', otherwise it is 'no'. A decision problem which can be solved by an algorithm is called _decidable_.

Decision problems typically appear in mathematical questions of decidability, that is, the question of the existence of an effective method to determine the existence of some object or its membership in a set; some of the most important problems in mathematics are undecidable.

The field of computational complexity categorizes _decidable_ decision problems by how difficult they are to solve. "Difficult", in this sense, is described in terms of the computational resources needed by the most efficient algorithm for a certain problem. The field of recursion theory, meanwhile, categorizes _undecidable_ decision problems by Turing degree, which is a measure of the noncomputability inherent in any solution.


Definition

A _decision problem_ is a yes-or-no question on an infinite set of inputs. It is traditional to define the decision problem as the set of possible inputs together with the set of inputs for which the answer is _yes_.[1]

These inputs can be natural numbers, but can also be values of some other kind, like binary strings or strings over some other alphabet. The subset of strings for which the problem returns "yes" is a formal language, and often decision problems are defined as formal languages.

Using an encoding such as Gödel numberings, any string can be encoded as a natural number, via which a decision problem can be defined as a subset of the natural numbers.


Examples

A classic example of a decidable decision problem is the set of prime numbers. It is possible to effectively decide whether a given natural number is prime by testing every possible nontrivial factor. Although much more efficient methods of primality testing are known, the existence of any effective method is enough to establish decidability.


Decidability

A decision problem _A_ is _decidable_ or _effectively solvable_ if _A_ is a recursive set. A problem is _partially decidable_, _semidecidable_, _solvable_, or _provable_ if _A_ is a recursively enumerable set. Problems that are not decidable are _undecidable_. For those it is not possible to create an algorithm, efficient or otherwise, that solves them.

The halting problem is an important undecidable decision problem; for more examples, see list of undecidable problems.


Complete problems

Decision problems can be ordered according to many-one reducibility and related to feasible reductions such as polynomial-time reductions. A decision problem _P_ is said to be _complete_ for a set of decision problems _S_ if _P_ is a member of _S_ and every problem in _S_ can be reduced to _P_. Complete decision problems are used in computational complexity theory to characterize complexity classes of decision problems. For example, the Boolean satisfiability problem is complete for the class NP of decision problems under polynomial-time reducibility.


Function problems

Decision problems are closely related to function problems, which can have answers that are more complex than a simple 'yes' or 'no'. A corresponding function problem is "given two numbers _x_ and _y_, what is _x_ divided by _y_?".

A function problem consists of a partial function _f_; the informal "problem" is to compute the values of _f_ on the inputs for which it is defined.

Every function problem can be turned into a decision problem; the decision problem is just the graph of the associated function. (The graph of a function _f_ is the set of pairs (_x_,_y_) such that _f_(_x_) = _y_.) If this decision problem were effectively solvable then the function problem would be as well. This reduction does not respect computational complexity, however. For example, it is possible for the graph of a function to be decidable in polynomial time (in which case running time is computed as a function of the pair (_x_,_y_) ) when the function is not computable in polynomial time (in which case running time is computed as a function of _x_ alone). The function _f_(_x_) = _2_^(_x_) has this property.

Every decision problem can be converted into the function problem of computing the characteristic function of the set associated to the decision problem. If this function is computable then the associated decision problem is decidable. However, this reduction is more liberal than the standard reduction used in computational complexity (sometimes called polynomial-time many-one reduction); for example, the complexity of the characteristic functions of an NP-complete problem and its co-NP-complete complement is exactly the same even though the underlying decision problems may not be considered equivalent in some typical models of computation.


Optimization problems

Unlike decision problems, for which there is only one correct answer for each input, optimization problems are concerned with finding the _best_ answer to a particular input. Optimization problems arise naturally in many applications, such as the traveling salesman problem and many questions in linear programming.

There are standard techniques for transforming function and optimization problems into decision problems. For example, in the traveling salesman problem, the optimization problem is to produce a tour with minimal weight. The associated decision problem is: for each _N_, to decide whether the graph has any tour with weight less than _N_. By repeatedly answering the decision problem, it is possible to find the minimal weight of a tour.

Because the theory of decision problems is very well developed, research in complexity theory has typically focused on decision problems. Optimization problems themselves are still of interest in computability theory, as well as in fields such as operations research.


See also

-   ALL (complexity)
-   Computational problem
-   Decidability (logic) – for the problem of deciding whether a formula is a consequence of a logical theory.
-   Search problem
-   Counting problem (complexity)
-   Word problem (mathematics)


References

-   Kozen, D.C. (2012), _Automata and Computability_, Springer.
-   Hartley Rogers, Jr., _The Theory of Recursive Functions and Effective Computability_, MIT Press, (paperback),
-   Sipser, M. (1996), _Introduction to the Theory of Computation_, PWS Publishing Co.
-   Robert I. Soare (1987), _Recursively Enumerable Sets and Degrees_, Springer-Verlag,
-   Daniel Kroening & Ofer Strichman, _Decision procedures_, Springer,
-   Aaron Bradley & Zohar Manna, _The calculus of computation_, Springer,

de:Entscheidungsproblem

Category:Computational problems Category:Computability theory

[1]