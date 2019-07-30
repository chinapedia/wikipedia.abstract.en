COMPUTATIONAL COMPLEXITY THEORY focuses on classifying computational problems according to their inherent difficulty, and relating these classes to each other. A computational problem is a task solved by a computer. A computation problem is solvable by mechanical application of mathematical steps, such as an algorithm.

A problem is regarded as inherently difficult if its solution requires significant resources, whatever the algorithm used. The theory formalizes this intuition, by introducing mathematical models of computation to study these problems and quantifying their computational complexity, i.e., the amount of resources needed to solve them, such as time and storage. Other measures of complexity are also used, such as the amount of communication (used in communication complexity), the number of gates in a circuit (used in circuit complexity) and the number of processors (used in parallel computing). One of the roles of computational complexity theory is to determine the practical limits on what computers can and cannot do. The P versus NP problem, one of the seven Millennium Prize Problems, is dedicated to the field of computational complexity.[1]

Closely related fields in theoretical computer science are analysis of algorithms and computability theory. A key distinction between analysis of algorithms and computational complexity theory is that the former is devoted to analyzing the amount of resources needed by a particular algorithm to solve a problem, whereas the latter asks a more general question about all possible algorithms that could be used to solve the same problem. More precisely, computational complexity theory tries to classify problems that can or cannot be solved with appropriately restricted resources. In turn, imposing restrictions on the available resources is what distinguishes computational complexity from computability theory: the latter theory asks what kind of problems can, in principle, be solved algorithmically.


Computational problems

Problem instances

A computational problem can be viewed as an infinite collection of _instances_ together with a _solution_ for every instance. The input string for a computational problem is referred to as a problem instance, and should not be confused with the problem itself. In computational complexity theory, a problem refers to the abstract question to be solved. In contrast, an instance of this problem is a rather concrete utterance, which can serve as the input for a decision problem. For example, consider the problem of primality testing. The instance is a number (e.g., 15) and the solution is "yes" if the number is prime and "no" otherwise (in this case, 15 is not prime and the answer is "no"). Stated another way, the _instance_ is a particular input to the problem, and the _solution_ is the output corresponding to the given input.

To further highlight the difference between a problem and an instance, consider the following instance of the decision version of the traveling salesman problem: Is there a route of at most 2000 kilometres passing through all of Germany's 15 largest cities? The quantitative answer to this particular problem instance is of little use for solving other instances of the problem, such as asking for a round trip through all sites in Milan whose total length is at most 10 km. For this reason, complexity theory addresses computational problems and not particular problem instances.

Representing problem instances

When considering computational problems, a problem instance is a string over an alphabet. Usually, the alphabet is taken to be the binary alphabet (i.e., the set {0,1}), and thus the strings are bitstrings. As in a real-world computer, mathematical objects other than bitstrings must be suitably encoded. For example, integers can be represented in binary notation, and graphs can be encoded directly via their adjacency matrices, or by encoding their adjacency lists in binary.

Even though some proofs of complexity-theoretic theorems regularly assume some concrete choice of input encoding, one tries to keep the discussion abstract enough to be independent of the choice of encoding. This can be achieved by ensuring that different representations can be transformed into each other efficiently.

Decision problems as formal languages

has only two possible outputs, _yes_ or _no_ (or alternately 1 or 0) on any input.]] Decision problems are one of the central objects of study in computational complexity theory. A decision problem is a special type of computational problem whose answer is either _yes_ or _no_, or alternately either 1 or 0. A decision problem can be viewed as a formal language, where the members of the language are instances whose output is yes, and the non-members are those instances whose output is no. The objective is to decide, with the aid of an algorithm, whether a given input string is a member of the formal language under consideration. If the algorithm deciding this problem returns the answer _yes_, the algorithm is said to accept the input string, otherwise it is said to reject the input.

An example of a decision problem is the following. The input is an arbitrary graph. The problem consists in deciding whether the given graph is connected or not. The formal language associated with this decision problem is then the set of all connected graphs — to obtain a precise definition of this language, one has to decide how graphs are encoded as binary strings.

Function problems

A function problem is a computational problem where a single output (of a total function) is expected for every input, but the output is more complex than that of a decision problem—that is, the output isn't just yes or no. Notable examples include the traveling salesman problem and the integer factorization problem.

It is tempting to think that the notion of function problems is much richer than the notion of decision problems. However, this is not really the case, since function problems can be recast as decision problems. For example, the multiplication of two integers can be expressed as the set of triples (_a_, _b_, _c_) such that the relation _a_ × _b_ = _c_ holds. Deciding whether a given triple is a member of this set corresponds to solving the problem of multiplying two numbers.

Measuring the size of an instance

To measure the difficulty of solving a computational problem, one may wish to see how much time the best algorithm requires to solve the problem. However, the running time may, in general, depend on the instance. In particular, larger instances will require more time to solve. Thus the time required to solve a problem (or the space required, or any measure of complexity) is calculated as a function of the size of the instance. This is usually taken to be the size of the input in bits. Complexity theory is interested in how algorithms scale with an increase in the input size. For instance, in the problem of finding whether a graph is connected, how much more time does it take to solve a problem for a graph with 2_n_ vertices compared to the time taken for a graph with _n_ vertices?

If the input size is _n_, the time taken can be expressed as a function of _n_. Since the time taken on different inputs of the same size can be different, the worst-case time complexity T(_n_) is defined to be the maximum time taken over all inputs of size _n_. If T(_n_) is a polynomial in _n_, then the algorithm is said to be a polynomial time algorithm. Cobham's thesis argues that a problem can be solved with a feasible amount of resources if it admits a polynomial time algorithm.


Machine models and complexity measures

Turing machine

A Turing machine is a mathematical model of a general computing machine. It is a theoretical device that manipulates symbols contained on a strip of tape. Turing machines are not intended as a practical computing technology, but rather as a general model of a computing machine—anything from an advanced supercomputer to a mathematician with a pencil and paper. It is believed that if a problem can be solved by an algorithm, there exists a Turing machine that solves the problem. Indeed, this is the statement of the Church–Turing thesis. Furthermore, it is known that everything that can be computed on other models of computation known to us today, such as a RAM machine, Conway's Game of Life, cellular automata or any programming language can be computed on a Turing machine. Since Turing machines are easy to analyze mathematically, and are believed to be as powerful as any other model of computation, the Turing machine is the most commonly used model in complexity theory.

Many types of Turing machines are used to define complexity classes, such as deterministic Turing machines, probabilistic Turing machines, non-deterministic Turing machines, quantum Turing machines, symmetric Turing machines and alternating Turing machines. They are all equally powerful in principle, but when resources (such as time or space) are bounded, some of these may be more powerful than others.

A deterministic Turing machine is the most basic Turing machine, which uses a fixed set of rules to determine its future actions. A probabilistic Turing machine is a deterministic Turing machine with an extra supply of random bits. The ability to make probabilistic decisions often helps algorithms solve problems more efficiently. Algorithms that use random bits are called randomized algorithms. A non-deterministic Turing machine is a deterministic Turing machine with an added feature of non-determinism, which allows a Turing machine to have multiple possible future actions from a given state. One way to view non-determinism is that the Turing machine branches into many possible computational paths at each step, and if it solves the problem in any of these branches, it is said to have solved the problem. Clearly, this model is not meant to be a physically realizable model, it is just a theoretically interesting abstract machine that gives rise to particularly interesting complexity classes. For examples, see non-deterministic algorithm.

Other machine models

Many machine models different from the standard multi-tape Turing machines have been proposed in the literature, for example random access machines. Perhaps surprisingly, each of these models can be converted to another without providing any extra computational power. The time and memory consumption of these alternate models may vary.[2] What all these models have in common is that the machines operate deterministically.

However, some computational problems are easier to analyze in terms of more unusual resources. For example, a non-deterministic Turing machine is a computational model that is allowed to branch out to check many different possibilities at once. The non-deterministic Turing machine has very little to do with how we physically want to compute algorithms, but its branching exactly captures many of the mathematical models we want to analyze, so that non-deterministic time is a very important resource in analyzing computational problems.

Complexity measures

For a precise definition of what it means to solve a problem using a given amount of time and space, a computational model such as the deterministic Turing machine is used. The _time required_ by a deterministic Turing machine _M_ on input _x_ is the total number of state transitions, or steps, the machine makes before it halts and outputs the answer ("yes" or "no"). A Turing machine _M_ is said to operate within time _f_(_n_), if the time required by _M_ on each input of length _n_ is at most _f_(_n_). A decision problem _A_ can be solved in time _f_(_n_) if there exists a Turing machine operating in time _f_(_n_) that solves the problem. Since complexity theory is interested in classifying problems based on their difficulty, one defines sets of problems based on some criteria. For instance, the set of problems solvable within time _f_(_n_) on a deterministic Turing machine is then denoted by DTIME(_f_(_n_)).

Analogous definitions can be made for space requirements. Although time and space are the most well-known complexity resources, any complexity measure can be viewed as a computational resource. Complexity measures are very generally defined by the Blum complexity axioms. Other complexity measures used in complexity theory include communication complexity, circuit complexity, and decision tree complexity.

The complexity of an algorithm is often expressed using big O notation.

Best, worst and average case complexity

algorithm that has average case performance 𝒪(nlog n).]] The best, worst and average case complexity refer to three different ways of measuring the time complexity (or any other complexity measure) of different inputs of the same size. Since some inputs of size _n_ may be faster to solve than others, we define the following complexities:

1.  Best-case complexity: This is the complexity of solving the problem for the best input of size _n_.
2.  Average-case complexity: This is the complexity of solving the problem on an average. This complexity is only defined with respect to a probability distribution over the inputs. For instance, if all inputs of the same size are assumed to be equally likely to appear, the average case complexity can be defined with respect to the uniform distribution over all inputs of size _n_.
3.  Amortized analysis: Amortized analysis considers both the costly and less costly operations together over the whole series of operations of the algorithm.
4.  Worst-case complexity: This is the complexity of solving the problem for the worst input of size _n_.

The order from cheap to costly is: Best, average (of discrete uniform distribution), amortized, worst.

For example, consider the deterministic sorting algorithm quicksort. This solves the problem of sorting a list of integers that is given as the input. The worst-case is when the input is sorted or sorted in reverse order, and the algorithm takes time O(_n_²) for this case. If we assume that all possible permutations of the input list are equally likely, the average time taken for sorting is O(_n_ log _n_). The best case occurs when each pivoting divides the list in half, also needing O(_n_ log _n_) time.

Upper and lower bounds on the complexity of problems

To classify the computation time (or similar resources, such as space consumption), one is interested in proving upper and lower bounds on the maximum amount of time required by the most efficient algorithm solving a given problem. The complexity of an algorithm is usually taken to be its worst-case complexity, unless specified otherwise. Analyzing a particular algorithm falls under the field of analysis of algorithms. To show an upper bound _T_(_n_) on the time complexity of a problem, one needs to show only that there is a particular algorithm with running time at most _T_(_n_). However, proving lower bounds is much more difficult, since lower bounds make a statement about all possible algorithms that solve a given problem. The phrase "all possible algorithms" includes not just the algorithms known today, but any algorithm that might be discovered in the future. To show a lower bound of _T_(_n_) for a problem requires showing that no algorithm can have time complexity lower than _T_(_n_).

Upper and lower bounds are usually stated using the big O notation, which hides constant factors and smaller terms. This makes the bounds independent of the specific details of the computational model used. For instance, if _T_(_n_) = 7_n_² + 15_n_ + 40, in big O notation one would write _T_(_n_) = O(_n_²).


Complexity classes

Defining complexity classes

A COMPLEXITY CLASS is a set of problems of related complexity. Simpler complexity classes are defined by the following factors:

-   The type of computational problem: The most commonly used problems are decision problems. However, complexity classes can be defined based on function problems, counting problems, optimization problems, promise problems, etc.
-   The model of computation: The most common model of computation is the deterministic Turing machine, but many complexity classes are based on non-deterministic Turing machines, Boolean circuits, quantum Turing machines, monotone circuits, etc.
-   The resource (or resources) that are being bounded and the bounds: These two properties are usually stated together, such as "polynomial time", "logarithmic space", "constant depth", etc.

Some complexity classes have complicated definitions that do not fit into this framework. Thus, a typical complexity class has a definition like the following:

    The set of decision problems solvable by a deterministic Turing machine within time _f_(_n_). (This complexity class is known as DTIME(_f_(_n_)).)

But bounding the computation time above by some concrete function _f_(_n_) often yields complexity classes that depend on the chosen machine model. For instance, the language {_xx_ | _x_ is any binary string} can be solved in linear time on a multi-tape Turing machine, but necessarily requires quadratic time in the model of single-tape Turing machines. If we allow polynomial variations in running time, Cobham-Edmonds thesis states that "the time complexities in any two reasonable and general models of computation are polynomially related" . This forms the basis for the complexity class P, which is the set of decision problems solvable by a deterministic Turing machine within polynomial time. The corresponding set of function problems is FP.

Important complexity classes

Many important complexity classes can be defined by bounding the time or space used by the algorithm. Some important complexity classes of decision problems defined in this manner are the following:

+-------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------+
|   Complexity class         Model of computation               Resource constraint   |   Complexity class          Model of computation               Resource constraint   |
|   ------------------------ ---------------------------------- --------------------- |   ------------------------- ---------------------------------- --------------------- |
|   Deterministic time                                                                |   Deterministic space                                                                |
|   DTIME(_f_(_n_))          Deterministic Turing machine       Time _f_(_n_)         |   DSPACE(_f_(_n_))          Deterministic Turing machine       Space _f_(_n_)        |
|                                                                                     |   L                         Deterministic Turing machine       Space O(log _n_)      |
|   P                        Deterministic Turing machine       Time poly(_n_)        |   PSPACE                    Deterministic Turing machine       Space poly(_n_)       |
|   EXPTIME                  Deterministic Turing machine       Time 2^(poly(_n_))    |   EXPSPACE                  Deterministic Turing machine       Space 2^(poly(_n_))   |
|   Non-deterministic time                                                            |   Non-deterministic space                                                            |
|   NTIME(_f_(_n_))          Non-deterministic Turing machine   Time _f_(_n_)         |   NSPACE(_f_(_n_))          Non-deterministic Turing machine   Space _f_(_n_)        |
|                                                                                     |   NL                        Non-deterministic Turing machine   Space O(log _n_)      |
|   NP                       Non-deterministic Turing machine   Time poly(_n_)        |   NPSPACE                   Non-deterministic Turing machine   Space poly(_n_)       |
|   NEXPTIME                 Non-deterministic Turing machine   Time 2^(poly(_n_))    |   NEXPSPACE                 Non-deterministic Turing machine   Space 2^(poly(_n_))   |
|                                                                                     |                                                                                      |
+-------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------+
|                                                                                     |                                                                                      |
+-------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------+

The logarithmic-space classes (necessarily) do not take into account the space needed to represent the problem.

It turns out that PSPACE = NPSPACE and EXPSPACE = NEXPSPACE by Savitch's theorem.

Other important complexity classes include BPP, ZPP and RP, which are defined using probabilistic Turing machines; AC and NC, which are defined using Boolean circuits; and BQP and QMA, which are defined using quantum Turing machines. #P is an important complexity class of counting problems (not decision problems). Classes like IP and AM are defined using Interactive proof systems. ALL is the class of all decision problems.

Hierarchy theorems

For the complexity classes defined in this way, it is desirable to prove that relaxing the requirements on (say) computation time indeed defines a bigger set of problems. In particular, although DTIME(_n_) is contained in DTIME(_n_²), it would be interesting to know if the inclusion is strict. For time and space requirements, the answer to such questions is given by the time and space hierarchy theorems respectively. They are called hierarchy theorems because they induce a proper hierarchy on the classes defined by constraining the respective resources. Thus there are pairs of complexity classes such that one is properly included in the other. Having deduced such proper set inclusions, we can proceed to make quantitative statements about how much more additional time or space is needed in order to increase the number of problems that can be solved.

More precisely, the time hierarchy theorem states that

$$\mathsf{DTIME}\big(f(n) \big) \subsetneq \mathsf{DTIME} \big(f(n) \sdot \log^{2}(f(n)) \big)$$
.

The space hierarchy theorem states that

$$\mathsf{DSPACE}\big(f(n)\big) \subsetneq \mathsf{DSPACE} \big(f(n) \sdot \log(f(n)) \big)$$
.

The time and space hierarchy theorems form the basis for most separation results of complexity classes. For instance, the time hierarchy theorem tells us that P is strictly contained in EXPTIME, and the space hierarchy theorem tells us that L is strictly contained in PSPACE.

Reduction

Many complexity classes are defined using the concept of a reduction. A reduction is a transformation of one problem into another problem. It captures the informal notion of a problem being at most as difficult as another problem. For instance, if a problem _X_ can be solved using an algorithm for _Y_, _X_ is no more difficult than _Y_, and we say that _X_ _reduces_ to _Y_. There are many different types of reductions, based on the method of reduction, such as Cook reductions, Karp reductions and Levin reductions, and the bound on the complexity of reductions, such as polynomial-time reductions or log-space reductions.

The most commonly used reduction is a polynomial-time reduction. This means that the reduction process takes polynomial time. For example, the problem of squaring an integer can be reduced to the problem of multiplying two integers. This means an algorithm for multiplying two integers can be used to square an integer. Indeed, this can be done by giving the same input to both inputs of the multiplication algorithm. Thus we see that squaring is not more difficult than multiplication, since squaring can be reduced to multiplication.

This motivates the concept of a problem being hard for a complexity class. A problem _X_ is _hard_ for a class of problems _C_ if every problem in _C_ can be reduced to _X_. Thus no problem in _C_ is harder than _X_, since an algorithm for _X_ allows us to solve any problem in _C_. The notion of hard problems depends on the type of reduction being used. For complexity classes larger than P, polynomial-time reductions are commonly used. In particular, the set of problems that are hard for NP is the set of NP-hard problems.

If a problem _X_ is in _C_ and hard for _C_, then _X_ is said to be _complete_ for _C_. This means that _X_ is the hardest problem in _C_. (Since many problems could be equally hard, one might say that _X_ is one of the hardest problems in _C_.) Thus the class of NP-complete problems contains the most difficult problems in NP, in the sense that they are the ones most likely not to be in P. Because the problem P = NP is not solved, being able to reduce a known NP-complete problem, Π₂, to another problem, Π₁, would indicate that there is no known polynomial-time solution for Π₁. This is because a polynomial-time solution to Π₁ would yield a polynomial-time solution to Π₂. Similarly, because all NP problems can be reduced to the set, finding an NP-complete problem that can be solved in polynomial time would mean that P = NP.[3]


Important open problems

|volume=22|year=1975|pages=151–171|doi=10.1145/321864.321877|issue=1|postscript=.}}]]

P versus NP problem

The complexity class P is often seen as a mathematical abstraction modeling those computational tasks that admit an efficient algorithm. This hypothesis is called the Cobham–Edmonds thesis. The complexity class NP, on the other hand, contains many problems that people would like to solve efficiently, but for which no efficient algorithm is known, such as the Boolean satisfiability problem, the Hamiltonian path problem and the vertex cover problem. Since deterministic Turing machines are special non-deterministic Turing machines, it is easily observed that each problem in P is also member of the class NP.

The question of whether P equals NP is one of the most important open questions in theoretical computer science because of the wide implications of a solution.[4] If the answer is yes, many important problems can be shown to have more efficient solutions. These include various types of integer programming problems in operations research, many problems in logistics, protein structure prediction in biology,[5] and the ability to find formal proofs of pure mathematics theorems.[6] The P versus NP problem is one of the Millennium Prize Problems proposed by the Clay Mathematics Institute. There is a US$1,000,000 prize for resolving the problem.[7]

Problems in NP not known to be in P or NP-complete

It was shown by Ladner that if P ≠ NP then there exist problems in NP that are neither in P nor NP-COMPLETE.[8] Such problems are called NP-intermediate problems. The graph isomorphism problem, the discrete logarithm problem and the integer factorization problem are examples of problems believed to be NP-intermediate. They are some of the very few NP problems not known to be in P or to be NP-COMPLETE.

The graph isomorphism problem is the computational problem of determining whether two finite graphs are isomorphic. An important unsolved problem in complexity theory is whether the graph isomorphism problem is in P, NP-COMPLETE, or NP-intermediate. The answer is not known, but it is believed that the problem is at least not NP-complete.[9] If graph isomorphism is NP-complete, the polynomial time hierarchy collapses to its second level.[10] Since it is widely believed that the polynomial hierarchy does not collapse to any finite level, it is believed that graph isomorphism is not NP-complete. The best algorithm for this problem, due to László Babai and Eugene Luks has run time $O(2^{\sqrt{n \log n}})$ for graphs with _n_ vertices, although some recent work by Babai offers some potentially new perspectives on this.[11]

The integer factorization problem is the computational problem of determining the prime factorization of a given integer. Phrased as a decision problem, it is the problem of deciding whether the input has a prime factor less than _k_. No efficient integer factorization algorithm is known, and this fact forms the basis of several modern cryptographic systems, such as the RSA algorithm. The integer factorization problem is in NP and in CO-NP (and even in UP and co-UP[12]). If the problem is NP-COMPLETE, the polynomial time hierarchy will collapse to its first level (i.e., NP will equal CO-NP). The best known algorithm for integer factorization is the general number field sieve, which takes time $O(e^{\left(\sqrt[3]{\frac{64}{9}}\right)\sqrt[3]{(\log n)}\sqrt[3]{(\log \log n)^2}})$[13] to factor an odd integer _n_. However, the best known quantum algorithm for this problem, Shor's algorithm, does run in polynomial time. Unfortunately, this fact doesn't say much about where the problem lies with respect to non-quantum complexity classes.

Separations between other complexity classes

Many known complexity classes are suspected to be unequal, but this has not been proved. For instance P ⊆ NP ⊆ PP ⊆ PSPACE, but it is possible that P = PSPACE. If P is not equal to NP, then P is not equal to PSPACE either. Since there are many known complexity classes between P and PSPACE, such as RP, BPP, PP, BQP, MA, PH, etc., it is possible that all these complexity classes collapse to one class. Proving that any of these classes are unequal would be a major breakthrough in complexity theory.

Along the same lines, CO-NP is the class containing the complement problems (i.e. problems with the _yes_/_no_ answers reversed) of NP problems. It is believed[14] that NP is not equal to CO-NP; however, it has not yet been proven. It is clear that if these two complexity classes are not equal then P is not equal to NP, since if P=NP we would also have P=CO-NP, since problems in NP are dual to those in CO-NP. ^(_Unclear._)

Similarly, it is not known if L (the set of all problems that can be solved in logarithmic space) is strictly contained in P or equal to P. Again, there are many complexity classes between the two, such as NL and NC, and it is not known if they are distinct or equal classes.

It is suspected that P and BPP are equal. However, it is currently open if BPP = NEXP.


Intractability

A problem that can be solved in theory (e.g. given large but finite resources, especially time), but for which in practice _any_ solution takes too many resources to be useful, is known as an .[15] Conversely, a problem that can be solved in practice is called a , literally "a problem that can be handled". The term _infeasible_ (literally "cannot be done") is sometimes used interchangeably with _intractable_,[16] though this risks confusion with a feasible solution in mathematical optimization.[17]

Tractable problems are frequently identified with problems that have polynomial-time solutions (P, PTIME); this is known as the Cobham–Edmonds thesis. Problems that are known to be intractable in this sense include those that are EXPTIME-hard. If NP is not the same as P, then NP-hard problems are also intractable in this sense.

However, this identification is inexact: a polynomial-time solution with large degree or large leading coefficient grows quickly, and may be impractical for practical size problems; conversely, an exponential-time solution that grows slowly may be practical on realistic input, or a solution that takes a long time in the worst case may take a short time in most cases or the average case, and thus still be practical. Saying that a problem is not in P does not imply that all large cases of the problem are hard or even that most of them are. For example, the decision problem in Presburger arithmetic has been shown not to be in P, yet algorithms have been written that solve the problem in reasonable times in most cases. Similarly, algorithms can solve the NP-complete knapsack problem over a wide range of sizes in less than quadratic time and SAT solvers routinely handle large instances of the NP-complete Boolean satisfiability problem.

To see why exponential-time algorithms are generally unusable in practice, consider a program that makes 2^(_n_) operations before halting. For small _n_, say 100, and assuming for the sake of example that the computer does 10¹² operations each second, the program would run for about 4 × 10¹⁰ years, which is the same order of magnitude as the age of the universe. Even with a much faster computer, the program would only be useful for very small instances and in that sense the intractability of a problem is somewhat independent of technological progress. However, an exponential-time algorithm that takes 1.0001^(_n_) operations is practical until _n_ gets relatively large.

Similarly, a polynomial time algorithm is not always practical. If its running time is, say, _n_¹⁵, it is unreasonable to consider it efficient and it is still useless except on small instances. Indeed, in practice even _n_³ or _n_² algorithms are often impractical on realistic sizes of problems.


Continuous complexity theory

Continuous complexity theory can refer to complexity theory of problems that involve continuous functions that are approximated by discretizations, as studied in numerical analysis. One approach to complexity theory of numerical analysis[18] is information based complexity.

Continuous complexity theory can also refer to complexity theory of the use of analog computation, which uses continuous dynamical systems and differential equations.[19] Control theory can be considered a form of computation and differential equations are used in the modelling of continuous-time and hybrid discrete-continuous-time systems.[20]


History

An early example of algorithm complexity analysis is the running time analysis of the Euclidean algorithm done by Gabriel Lamé in 1844.

Before the actual research explicitly devoted to the complexity of algorithmic problems started off, numerous foundations were laid out by various researchers. Most influential among these was the definition of Turing machines by Alan Turing in 1936, which turned out to be a very robust and flexible simplification of a computer.

The beginning of systematic studies in computational complexity is attributed to the seminal 1965 paper "On the Computational Complexity of Algorithms" by Juris Hartmanis and Richard E. Stearns, which laid out the definitions of time complexity and space complexity, and proved the hierarchy theorems.[21] In addition, in 1965 Edmonds suggested to consider a "good" algorithm to be one with running time bounded by a polynomial of the input size.[22]

Earlier papers studying problems solvable by Turing machines with specific bounded resources include[23] John Myhill's definition of linear bounded automata (Myhill 1960), Raymond Smullyan's study of rudimentary sets (1961), as well as Hisao Yamada's paper[24] on real-time computations (1962). Somewhat earlier, Boris Trakhtenbrot (1956), a pioneer in the field from the USSR, studied another specific complexity measure.[25] As he remembers:

In 1967, Manuel Blum formulated a set of axioms (now known as Blum axioms) specifying desirable properties of complexity measures on the set of computable functions and proved an important result, the so-called speed-up theorem. The field began to flourish in 1971 when the Stephen Cook and Leonid Levin proved the existence of practically relevant problems that are NP-complete. In 1972, Richard Karp took this idea a leap forward with his landmark paper, "Reducibility Among Combinatorial Problems", in which he showed that 21 diverse combinatorial and graph theoretical problems, each infamous for its computational intractability, are NP-complete.[26]

In the 1980s, much work was done on the average difficulty of solving NP-complete problems—both exactly and approximately. At that time, computational complexity theory was at its height, and it was widely believed that if a problem turned out to be NP-complete, then there was little chance of being able to work with the problem in a practical situation. However, it became increasingly clear that this is not always the case, and some authors claimed that general asymptotic results are often unimportant for typical problems arising in practice.[27]


See also

-   Context of computational complexity
-   Descriptive complexity theory
-   Game complexity
-   List of complexity classes
-   List of computability and complexity topics
-   List of important publications in theoretical computer science
-   List of unsolved problems in computer science
-   Parameterized complexity
-   Proof complexity
-   Quantum complexity theory
-   Structural complexity theory
-   Transcomputational problem
-   Computational complexity of mathematical operations


References

Citations

Textbooks

-   -   -   -   -   -   -   -

Surveys

-   -   -   -


External links

-   The Complexity Zoo
-   -   http://mathoverflow.net/questions/34487/what-are-the-most-important-results-and-papers-in-complexity-theory-that-every/

Computational_complexity_theory Category:Computational fields of study

[1]  Clay Mathematics Institute |url=http://www.claymath.org/millennium-problems/p-vs-np-problem |website=www.claymath.org |language=en}}

[2] See

[3]

[4] See

[5]

[6]

[7]

[8]

[9]

[10]

[11]

[12] Lance Fortnow. Computational Complexity Blog: Complexity Class of the Week: Factoring. September 13, 2002. http://weblog.fortnow.com/2002/09/complexity-class-of-week-factoring.html

[13] Wolfram MathWorld: Number Field Sieve

[14] Boaz Barak's course on Computational Complexity Lecture 2

[15] Hopcroft, J.E., Motwani, R. and Ullman, J.D. (2007) Introduction to Automata Theory, Languages, and Computation, Addison Wesley, Boston/San Francisco/New York (page 368)

[16]

[17]

[18]

[19] A Survey on Continuous Time Computations, Olivier Bournez, Manuel Campagnolo, New Computational Paradigms. Changing Conceptions of What is Computable. (Cooper, S.B. and L{\"o}we, B. and Sorbi, A., Eds.). New York, Springer-Verlag, pages 383-423. 2008

[20]

[21]

[22] Richard M. Karp, "Combinatorics, Complexity, and Randomness", 1985 Turing Award Lecture

[23]

[24]

[25] Trakhtenbrot, B.A.: Signalizing functions and tabular operators. Uchionnye Zapiski Penzenskogo Pedinstituta (Transactions of the Penza Pedagogoical Institute) 4, 75–87 (1956) (in Russian)

[26]

[27]