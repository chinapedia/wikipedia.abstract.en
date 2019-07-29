In computer science, the COMPUTATIONAL COMPLEXITY, or simply COMPLEXITY of an algorithm is the amount of resources required for running it. The computational complexity of a problem is the minimum of the complexities of all possible algorithms for this problem (including the unknown algorithms).

As the amount of needed resources varies with the input, the complexity is generally expressed as a function , where is the size of the input, and is either the worst-case complexity, that is the maximum of the amount of resources that are needed for all inputs of size , or the average-case complexity, that is average of the amount of resources over all input of size .

When the nature of the resources is not explicitly given, this is usually the time needed for running the algorithm, and one talks of time complexity. However, this depends on the computer that is used, and the time is generally expressed as the number of needed elementary operations, which are supposed to take a constant time on a given computer, and to change by a constant factor when one changes of computer.

Otherwise, the resource that is considered is often the size of the memory that is needed, and one talks of space complexity.

The study of the complexity of explicitly given algorithms is called analysis of algorithms, while the study of the complexity of problems is called computational complexity theory. Clearly, both areas are strongly related, as the complexity of an algorithm is always an upper bound of the complexity of the problem solved by this algorithm.


Resources

Time

The resource that is most commonly considered is the time, and one talks of time complexity. When "complexity" is used without being qualified, this generally means time complexity.

The usual units of time are not used in complexity theory, because they are too dependent on the choice of a specific computer and of the evolution of the technology. Therefore, instead of the real time, one generally consider the elementary operations that are done during the computation. These operations are supposed to take a constant time on a given machine, and are often called _steps_.

Space

Another important resource is the size of computer memory that is needed for running algorithms.

Others

The number of arithmetic operations is another resource that is commonly used. In this case, one talks of ARITHMETIC COMPLEXITY. If one knows an upper bound on the size of the binary representation of the numbers that occur during a computation, the time complexity is generally the product of the arithmetic complexity by a constant factor.

For many algorithms the size of the integers that are used during a computation is not bounded, and it is not realistic to consider that arithmetic operations take a constant time. Therefore, the time complexity, generally called bit complexity in this context, may be much larger than the arithmetic complexity. For example, the arithmetic complexity of the computation of the determinant of a integer matrix is O(n³) for the usual algorithms (Gaussian elimination). The bit complexity of the same algorithms is exponential in , because the size of the coefficients may grow exponentially during the computation. On the other hand, if these algorithms are coupled with multi-modular arithmetic, the bit complexity may be reduced to {{math.

In sorting and searching, the resource that is generally considered is the number of entries comparisons. This is generally a good measure of the time complexity if data are suitably organized.


Complexity as a function of input size

    _For clarity, only time complexity is considered in this section, but everything applies (with slight modifications) to the complexity with respect to other resources._

It is impossible to count the number of steps of an algorithm on all possible inputs. As the complexity increases generally with the size of the input, the complexity is generally expressed as a function of the size (in bits) of the input, and therefore, the complexity is a function of . However, the complexity of an algorithm may vary dramatically for different inputs of the same size. Therefore several complexity functions are commonly used.

The worst-case complexity is the maximum of the complexity over all inputs of size , and the average-case complexity is the average of the complexity over all inputs of size (this makes sense, as the number of possible inputs of a given size is finite). Generally, when "complexity" is used without being further specified, this is the worst-case time complexity that is considered.


Asymptotic complexity

It is generally difficult to compute precisely the worst-case and the average-case complexity. In addition, these exact values provide little practical application, as any change of computer or of model of computation would change the complexity somewhat. Moreover, the resource use is not critical for small values of , and this makes that, for small , the ease of implementation is generally more interesting than a good complexity.

For these reasons, one generally focuses on the behavior of the complexity for large , that is on its asymptotic behavior when tends to the infinity. Therefore, the complexity is generally expressed by using big O notation.

For example, the usual algorithm for integer multiplication has a complexity of O(n²), this means that there is a constant c_(u) such that the multiplication of two integers of at most digits may be done in a time less than c_(u)n². This bound is _sharp_ in the sense that the worst-case complexity and the average-case complexity are Ω(n²), which means that there is a constant c_(l) such that these complexities are larger than c_(l)n². The radix does not appear in these complexity, as changing of radix changes only the constants c_(u) and c_(l).


Models of computation

The evaluation of the complexity relies on the choice of a model of computation, which consist in defining the basic operations that are done in a unit of time. When the model of computation is not explicitly specified, this is generally meant as being multitape Turing machine.

Deterministic models

A deterministic model of computation is a model of computation such that the successive states of the machine and the operations to be performed are completely determined by the preceding state. Historically, the first deterministic models were recursive functions, lambda calculus, and Turing machines. The model of Random access machines (also called RAM-machines) is also widely used, as closer to real computers.

When the model of computation is not specified, it is generally the model of multitape Turing machines. For most algorithms, the complexity is the same on multitape Turing machines and on RAM-machines, although, some care may be needed in storing data for getting this equivalence.

Non-deterministic computation

In a non-deterministic model of computation, such as non-deterministic Turing machines, some choices may be done at some steps of the computation. In complexity theory, one considers all possible choices simultaneously, and the non-deterministic time complexity is the time needed, when the best choices are always done. In other words, one considers that the computation is done simultaneously on as many (identical) processors as needed, and the non-deterministic computation time is the time spent by the first processor that finishes the computation. This parallelism is partly amenable to quantum computing via superposed entangled states in running specific quantum algorithms, like e.g. Shor's factorization of yet only small integers (: 21 = 3 × 7).

Even when such a computation model is not realistic yet, it has theoretical importance, mostly related to the P = NP problem, which questions the identity of the complexity classes formed by taking "polynomial time" and "non-deterministic polynomial time" as least upper bounds. Simulating an NP-algorithm on a deterministic computer usually takes "exponential time". A problem is in the complexity class NP, if it may be solved in polynomial time on a non-deterministic machine. A problem is NP-complete if, roughly speaking, it is in NP and is not easier than any other NP problem. Many combinatorial problems, such as the Knapsack problem, the travelling salesman problem, and the Boolean satisfiability problem are NP-complete. For all these problems, the best known algorithm has exponential complexity. If any one of these problems could be solved in polynomial time on a deterministic machine, then all NP problems could also be solved in polynomial time, and one would have P = NP. it is generally conjectured that with the practical implication that the worst cases of NP problems are intrinsically difficult to solve, i.e., take longer than any reasonable time span (decades!) for interesting lengths of input.

Parallel and distributed computation

Parallel and distributed computing consist of splitting computation on several processors, which work simultaneously. The difference between the different model lies mainly in the way of transmitting information between processors. Typically, in parallel computing the data transmission between processors is very fast, while, in distributed computating, the data transmission is done through a network and is therefore much slower.

The time needed for a computation on processors is at least the quotient by of the time needed by a single processor. In fact this theoretically optimal bound can never be reached, because some subtasks cannot be parallelized, and some processors may have to wait a result from another processor.

The main complexity problem is thus to design algorithms such that the product of the computation time by the number of processors is as close as possible to the time needed for the same computation on a single processor.

Quantum computing

A quantum computer is a computer whose model of computation is based on quantum mechanics. The Church–Turing thesis applies to quantum computers, that is, every problem that can be solved by a quantum computer may be also solved by a Turing machine. However, some problems may theoretically be solved with a much lower complexity using a quantum computer than using a classical computer. This is, for the moment, purely theoretical, as no one knows how to build an efficient quantum computer.

Quantum complexity theory has been developed for studying computational complexity of quantum computing. It is used in post-quantum cryptography, which consists of designing cryptographic protocols that will resist to attacks with quantum computers, when such computers will really exist.


Problem complexity (lower bounds)

The complexity of a problem is the infimum of the complexities of the algorithms that may solve the problem, including unknown algorithms. Thus the complexity of a problem is not greater than the complexity of any algorithm that solves the problems.

It follows that every complexity that is expressed with big O notation is a complexity of the algorithm as well as of the corresponding problem.

On the other hand, it is generally hard to obtain nontrivial lower bounds for problem complexity, and there are few methods for obtaining such lower bounds.

For solving most problems, it is required to read all input data, which, normally, needs a time proportional to the size of the data. Thus, such problems have a complexity that is at least linear, that is, using big omega notation, a complexity Ω(n).

The solution of some problems, typically in computer algebra and computational algebraic geometry, may be very large. In such a case, the complexity is lower bounded by the maximal size of the output, since the output must be written. For example, a system of {{mvar may have up to d^(n) complex solutions, if the number of solutions is finite (this is Bézout's theorem). As these solutions must be written down, the complexity of this problem is Ω(d^(n)). For this problem, an algorithm of complexity d^(O(n)) is known, which may thus be considered as asymptotically quasi-optimal.

A nonlinear lower bound of Ω(nlog n) is known for the number of comparisons needed for a sorting algorithm. Thus the best sorting algorithms are optimal, as their complexity is O(nlog n). This lower bound results from the fact that there are ways of ordering objects. As each comparison splits in two parts this set of orders, the number of of comparisons that are needed for distinguishing all orders must verify 2^(N) > n!, which implies N = Ω(nlog n), by Stirling's formula.

A standard method for getting lower bounds of complexity consists of _reducing_ a problem to another problem. More precisely, suppose that one may encode a problem of size into a subproblem of size of a problem , and that the complexity of is Ω(g(n)). Without loss of generality, one may suppose that the function increases with and has an inverse function . Then the complexity of the problem is Ω(g(h(n))). This is this method that is used for proving that, if P ≠ NP (a unsolved conjecture), the complexity of every NP-complete problem is Ω(n^(k)), for every positive integer .


Use in algorithm design

Evaluating the complexity of an algorithm is an important part of algorithm design, as this gives useful information on the performance that may be expected.

It is a common misconception that the evaluation of the complexity of algorithms becomes less important, because of the exponential growth (Moore's law) of the power of modern computers. This is wrong because, this power increase allows working with large input data (big data). For example, when one want to sort alphabetically a list of a few hundreds of entries, such as the bibliography of a book, any algorithm should work well in less than a second. On the other hand, for a list of a million of entries (the phone numbers of a large town, for example), the elementary algorithms that require O(n²) comparisons would have to do a trillion of comparisons, which would need around three hours at the speed of 10 million of comparisons per second. On the other hand, the quicksort and merge sort require only nlog₂n comparisons (as average-case complexity for the former, as worst-case complexity for the latter). For , this gives approximately 30,000,000 comparisons, which may be done in less than a second on a powerful computer.

Thus the evaluation of the complexity may allow eliminating many inefficient algorithms before any implementation. This may also be used for tuning complex algorithms without testing all variants. By determining the most costly steps of a complex algorithms, the study of complexity allows also focusing on these steps the effort for improving the efficiency of an implementation.


See also

-   Computational complexity of mathematical operations


References

-   -   -   -   -   -   -

Category:Analysis of algorithms Category:Computational complexity theory Category:Computational resources