 NP. The existence of problems within NP but outside both P and NP-complete, under that assumption, was established by Ladner's theorem.[1]]]

The P VERSUS NP PROBLEM is a major unsolved problem in computer science. It asks whether every problem whose solution can be quickly verified (technically, verified in polynomial time) can also be solved quickly (again, in polynomial time).

It is one of the seven Millennium Prize Problems selected by the Clay Mathematics Institute, each of which carries a US$1,000,000 prize for the first correct solution.

The informal term _quickly_, used above, means the existence of an algorithm solving the task that runs in polynomial time, such that the time to complete the task varies as a polynomial function on the size of the input to the algorithm (as opposed to, say, exponential time). The general class of questions for which some algorithm can provide an answer in polynomial time is called "class P" or just "P". For some questions, there is no known way to find an answer quickly, but if one is provided with information showing what the answer is, it is possible to verify the answer quickly. The class of questions for which an answer can be _verified_ in polynomial time is called NP, which stands for "nondeterministic polynomial time".[2]

An answer to the P = NP question would determine whether problems that can be verified in polynomial time can also be solved in polynomial time. If it turned out that P ≠ NP, it would mean that there are problems in NP that are harder to compute than to verify: they could not be solved in polynomial time, but the answer could be verified in polynomial time.

Aside from being an important problem in computational theory, a proof either way would have profound implications for mathematics, cryptography, algorithm research, artificial intelligence, game theory, multimedia processing, philosophy, economics and many other fields.[3]


Example

Consider Sudoku, a game where the player is given a partially filled-in grid of numbers and attempts to complete the grid following certain rules. Given an incomplete Sudoku grid, of any size, is there at least one legal solution? Any proposed solution is easily verified, and the time to check a solution grows slowly (polynomially) as the grid gets bigger. However, all known algorithms for finding solutions take, for difficult examples, time that grows exponentially as the grid gets bigger. So, Sudoku is in NP (quickly checkable) but does not seem to be in P (quickly solvable). Thousands of other problems seem similar, in that they are fast to check but slow to solve. Researchers have shown that many of the problems in NP have the extra property that a fast solution to any one of them could be used to build a quick solution to any other problem in NP, a property called NP-completeness. Decades of searching have not yielded a fast solution to any of these problems, so most scientists suspect that none of these problems can be solved quickly. This, however, has never been proven.


History

The underlying issues were first discussed in the 1950s, in letters from John Forbes Nash Jr. to the National Security Agency, and from Kurt Gödel to John von Neumann. The precise statement of the P versus NP problem was introduced in 1971 by Stephen Cook in his seminal paper "The complexity of theorem proving procedures"[4] (and independently by Leonid Levin in 1973[5]) and is considered by many to be the most important open problem in computer science.[6]

Although the P versus NP problem was formally defined in 1971, there were previous inklings of the problems involved, the difficulty of proof, and the potential consequences. In 1955, mathematician John Nash wrote a letter to the NSA, where he speculated that cracking a sufficiently complex code would require time exponential in the length of the key.[7] If proved (and Nash was suitably skeptical) this would imply what is now called P ≠ NP, since a proposed key can easily be verified in polynomial time. Another mention of the underlying problem occurred in a 1956 letter written by Kurt Gödel to John von Neumann. Gödel asked whether theorem-proving (now known to be CO-NP-complete) could be solved in quadratic or linear time,[8] and pointed out one of the most important consequences—that if so, then the discovery of mathematical proofs could be automated.


Context

The relation between the complexity classes P and NP is studied in computational complexity theory, the part of the theory of computation dealing with the resources required during computation to solve a given problem. The most common resources are time (how many steps it takes to solve a problem) and space (how much memory it takes to solve a problem).

In such analysis, a model of the computer for which time must be analyzed is required. Typically such models assume that the computer is _deterministic_ (given the computer's present state and any inputs, there is only one possible action that the computer might take) and _sequential_ (it performs actions one after the other).

In this theory, the class P consists of all those _decision problems_ (defined below) that can be solved on a deterministic sequential machine in an amount of time that is polynomial in the size of the input; the class NP consists of all those decision problems whose positive solutions can be verified in polynomial time given the right information, or equivalently, whose solution can be found in polynomial time on a non-deterministic machine.[9] Clearly, P ⊆ NP. Arguably the biggest open question in theoretical computer science concerns the relationship between those two classes:

    Is P equal to NP?

Since 2002, William Gasarch has conducted three polls of researchers concerning this and related questions.[10][11][12] Confidence that P ≠ NP has been increasing - in 2019, 88% believed P ≠ NP, as opposed to 83% in 2012 and 61% in 2002. When restricted to experts, the 2019 answers became 99% P ≠ NP.[13]


NP-completeness

for P, NP, NP-complete, and NP-hard set of problems (excluding the empty language and its complement, which belong to P but are not NP-complete)]] To attack the P = NP question, the concept of NP-completeness is very useful. NP-complete problems are a set of problems to each of which any other NP-problem can be reduced in polynomial time and whose solution may still be verified in polynomial time. That is, any NP problem can be transformed into any of the NP-complete problems. Informally, an NP-complete problem is an '''NP '''problem that is at least as "tough" as any other problem in NP.

NP-hard problems are those at least as hard as NP problems, i.e., all NP problems can be reduced (in polynomial time) to them. NP-hard problems need not be in NP, i.e., they need not have solutions verifiable in polynomial time.

For instance, the Boolean satisfiability problem is NP-complete by the Cook–Levin theorem, so _any_ instance of _any_ problem in NP can be transformed mechanically into an instance of the Boolean satisfiability problem in polynomial time. The Boolean satisfiability problem is one of many such NP-complete problems. If any NP-complete problem is in P, then it would follow that P = NP. However, many important problems have been shown to be NP-complete, and no fast algorithm for any of them is known.

Based on the definition alone it is not obvious that NP-complete problems exist; however, a trivial and contrived NP-complete problem can be formulated as follows: given a description of a Turing machine _M_ guaranteed to halt in polynomial time, does there exist a polynomial-size input that _M_ will accept?[14] It is in NP because (given an input) it is simple to check whether _M_ accepts the input by simulating _M_; it is NP-complete because the verifier for any particular instance of a problem in NP can be encoded as a polynomial-time machine _M_ that takes the solution to be verified as input. Then the question of whether the instance is a yes or no instance is determined by whether a valid input exists.

The first natural problem proven to be NP-complete was the Boolean satisfiability problem, also known as SAT. As noted above, this is the Cook–Levin theorem; its proof that satisfiability is NP-complete contains technical details about Turing machines as they relate to the definition of NP. However, after this problem was proved to be NP-complete, proof by reduction provided a simpler way to show that many other problems are also NP-complete, including the game Sudoku discussed earlier. In this case, the proof shows that a solution of Sudoku in polynomial time could also be used to complete Latin squares in polynomial time.[15] This in turn gives a solution to the problem of partitioning tri-partite graphs into triangles,[16] which could then be used to find solutions for the special case of SAT known as 3-SAT,[17] which then provides a solution for general Boolean satisfiability. So a polynomial time solution to Sudoku leads, by a series of mechanical transformations, to a polynomial time solution of satisfiability, which in turn can be used to solve any other NP-problem in polynomial time. Using transformations like this, a vast class of seemingly unrelated problems are all reducible to one another, and are in a sense "the same problem".


Harder problems

Although it is unknown whether P = NP, problems outside of P are known. Just as the class P is defined in terms of polynomial running time, the class EXPTIME is the set of all decision problems that have _exponential_ running time. In other words, any problem in EXPTIME is solvable by a deterministic Turing machine in O(2^(_p_(_n_))) time, where _p_(_n_) is a polynomial function of _n_. A decision problem is EXPTIME-complete if it is in EXPTIME, and every problem in EXPTIME has a polynomial-time many-one reduction to it. A number of problems are known to be EXPTIME-complete. Because it can be shown that P ≠ EXPTIME, these problems are outside P, and so require more than polynomial time. In fact, by the time hierarchy theorem, they cannot be solved in significantly less than exponential time. Examples include finding a perfect strategy for chess positions on an _N_ × _N_ board[18] and similar problems for other board games.[19]

The problem of deciding the truth of a statement in Presburger arithmetic requires even more time. Fischer and Rabin proved in 1974[20] that every algorithm that decides the truth of Presburger statements of length _n_ has a runtime of at least 2^(2^(cn)) for some constant _c_. Hence, the problem is known to need more than exponential run time. Even more difficult are the undecidable problems, such as the halting problem. They cannot be completely solved by any algorithm, in the sense that for any particular algorithm there is at least one input for which that algorithm will not produce the right answer; it will either produce the wrong answer, finish without giving a conclusive answer, or otherwise run forever without producing any answer at all.

It is also possible to consider questions other than decision problems. One such class, consisting of counting problems, is called #P: whereas an NP problem asks "Are there any solutions?", the corresponding #P problem asks "How many solutions are there?" Clearly, a #P problem must be at least as hard as the corresponding NP problem, since a count of solutions immediately tells if at least one solution exists, if the count is greater than zero. Surprisingly, some #P problems that are believed to be difficult correspond to easy (for example linear-time) P problems.[21] For these problems, it is very easy to tell whether solutions exist, but thought to be very hard to tell how many. Many of these problems are #P-complete, and hence among the hardest problems in #P, since a polynomial time solution to any of them would allow a polynomial time solution to all other #P problems.


Problems in NP not known to be in P or NP-complete

In 1975, Richard E. Ladner showed that if P ≠ NP then there exist problems in NP that are neither in P nor NP-complete.[22] Such problems are called NP-intermediate problems. The graph isomorphism problem, the discrete logarithm problem and the integer factorization problem are examples of problems believed to be NP-intermediate. They are some of the very few NP problems not known to be in P or to be NP-complete.

The graph isomorphism problem is the computational problem of determining whether two finite graphs are isomorphic. An important unsolved problem in complexity theory is whether the graph isomorphism problem is in P, NP-complete, or NP-intermediate. The answer is not known, but it is believed that the problem is at least not NP-complete.[23] If graph isomorphism is NP-complete, the polynomial time hierarchy collapses to its second level.[24][25] Since it is widely believed that the polynomial hierarchy does not collapse to any finite level, it is believed that graph isomorphism is not NP-complete. The best algorithm for this problem, due to László Babai and Eugene Luks, has run time 2^(O()) for graphs with _n_ vertices.

The integer factorization problem is the computational problem of determining the prime factorization of a given integer. Phrased as a decision problem, it is the problem of deciding whether the input has a factor less than _k_. No efficient integer factorization algorithm is known, and this fact forms the basis of several modern cryptographic systems, such as the RSA algorithm. The integer factorization problem is in NP and in CO-NP (and even in UP and CO-UP[26]). If the problem is NP-complete, the polynomial time hierarchy will collapse to its first level (i.e., NP = CO-NP). The best known algorithm for integer factorization is the general number field sieve, which takes expected time

$$O\left (\exp \left ( \left (\tfrac{64n}{9} \log(2) \right )^{\frac{1}{3}} \left ( \log(n\log(2)) \right )^{\frac{2}{3}} \right) \right )$$

to factor an _n_-bit integer. However, the best known quantum algorithm for this problem, Shor's algorithm, does run in polynomial time, although this does not indicate where the problem lies with respect to non-quantum complexity classes.


Does P mean "easy"?

All of the above discussion has assumed that P means "easy" and "not in P" means "hard", an assumption known as _Cobham's thesis_. It is a common and reasonably accurate assumption in complexity theory; however, it has some caveats.

First, it is not always true in practice. A theoretical polynomial algorithm may have extremely large constant factors or exponents thus rendering it impractical. On the other hand, even if a problem is shown to be NP-complete, and even if P ≠ NP, there may still be effective approaches to tackling the problem in practice. There are algorithms for many NP-complete problems, such as the knapsack problem, the traveling salesman problem and the Boolean satisfiability problem, that can solve to optimality many real-world instances in reasonable time. The empirical average-case complexity (time vs. problem size) of such algorithms can be surprisingly low. An example is the simplex algorithm in linear programming, which works surprisingly well in practice; despite having exponential worst-case time complexity it runs on par with the best known polynomial-time algorithms.[27]

Second, there are types of computations which do not conform to the Turing machine model on which P and NP are defined, such as quantum computation and randomized algorithms.


Reasons to believe P ≠ NP

According to polls,[28][29] most computer scientists believe that P ≠ NP. A key reason for this belief is that after decades of studying these problems no one has been able to find a polynomial-time algorithm for any of more than 3000 important known NP-complete problems (see List of NP-complete problems). These algorithms were sought long before the concept of NP-completeness was even defined (Karp's 21 NP-complete problems, among the first found, were all well-known existing problems at the time they were shown to be NP-complete). Furthermore, the result P = NP would imply many other startling results that are currently believed to be false, such as NP = CO-NP and P = PH.

It is also intuitively argued that the existence of problems that are hard to solve but for which the solutions are easy to verify matches real-world experience.[30]

On the other hand, some researchers believe that there is overconfidence in believing P ≠ NP and that researchers should explore proofs of P = NP as well. For example, in 2002 these statements were made:[31]


Consequences of solution

One of the reasons the problem attracts so much attention is the consequences of the answer. Either direction of resolution would advance theory enormously, and perhaps have huge practical consequences as well.

===P = NP=== A proof that P = NP could have stunning practical consequences if the proof leads to efficient methods for solving some of the important problems in NP. It is also possible that a proof would not lead directly to efficient methods, perhaps if the proof is non-constructive, or the size of the bounding polynomial is too big to be efficient in practice. The consequences, both positive and negative, arise since various NP-complete problems are fundamental in many fields.

Cryptography, for example, relies on certain problems being difficult. A constructive and efficient solution[32] to an NP-complete problem such as 3-SAT would break most existing cryptosystems including:

-   Existing implementations of public-key cryptography,[33] a foundation for many modern security applications such as secure financial transactions over the Internet.
-   Symmetric ciphers such as AES or 3DES,[34] used for the encryption of communications data.
-   Cryptographic hashing as the problem of finding a pre-image that hashes to a given value must be difficult in order to be useful, and ideally should require exponential time. However, if P=NP, then finding a pre-image _M_ can be done in polynomial time, through reduction to SAT.[35]

These would need to be modified or replaced by information-theoretically secure solutions not inherently based on P-NP equivalence.

On the other hand, there are enormous positive consequences that would follow from rendering tractable many currently mathematically intractable problems. For instance, many problems in operations research are NP-complete, such as some types of integer programming and the travelling salesman problem. Efficient solutions to these problems would have enormous implications for logistics. Many other important problems, such as some problems in protein structure prediction, are also NP-complete;[36] if these problems were efficiently solvable it could spur considerable advances in life sciences and biotechnology.

But such changes may pale in significance compared to the revolution an efficient method for solving NP-complete problems would cause in mathematics itself. Gödel, in his early thoughts on computational complexity, noted that a mechanical method that could solve any problem would revolutionize mathematics:[37][38] Similarly, Stephen Cook says[39]

Research mathematicians spend their careers trying to prove theorems, and some proofs have taken decades or even centuries to find after problems have been stated—for instance, Fermat's Last Theorem took over three centuries to prove. A method that is guaranteed to find proofs to theorems, should one exist of a "reasonable" size, would essentially end this struggle.

Donald Knuth has stated that he has come to believe that P = NP, but is reserved about the impact of a possible proof:[40]

P ≠ NP

A proof that showed that P ≠ NP would lack the practical computational benefits of a proof that P = NP, but would nevertheless represent a very significant advance in computational complexity theory and provide guidance for future research. It would allow one to show in a formal way that many common problems cannot be solved efficiently, so that the attention of researchers can be focused on partial solutions or solutions to other problems. Due to widespread belief in P ≠ NP, much of this focusing of research has already taken place.[41]

Also P ≠ NP still leaves open the average-case complexity of hard problems in NP. For example, it is possible that SAT requires exponential time in the worst case, but that almost all randomly selected instances of it are efficiently solvable. Russell Impagliazzo has described five hypothetical "worlds" that could result from different possible resolutions to the average-case complexity question.[42] These range from "Algorithmica", where P = NP and problems like SAT can be solved efficiently in all instances, to "Cryptomania", where P ≠ NP and generating hard instances of problems outside P is easy, with three intermediate possibilities reflecting different possible distributions of difficulty over instances of NP-hard problems. The "world" where P ≠ NP but all problems in NP are tractable in the average case is called "Heuristica" in the paper. A Princeton University workshop in 2009 studied the status of the five worlds.[43]


Results about difficulty of proof

Although the P = NP problem itself remains open despite a million-dollar prize and a huge amount of dedicated research, efforts to solve the problem have led to several new techniques. In particular, some of the most fruitful research related to the P = NP problem has been in showing that existing proof techniques are not powerful enough to answer the question, thus suggesting that novel technical approaches are required.

As additional evidence for the difficulty of the problem, essentially all known proof techniques in computational complexity theory fall into one of the following classifications, each of which is known to be insufficient to prove that P ≠ NP:

  Classification        Definition
  --------------------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  Relativizing proofs   Imagine a world where every algorithm is allowed to make queries to some fixed subroutine called an _oracle_ (a black box which can answer a fixed set of questions in constant time, such as a black box that solves any given traveling salesman problem in 1 step), and the running time of the oracle is not counted against the running time of the algorithm. Most proofs (especially classical ones) apply uniformly in a world with oracles regardless of what the oracle does. These proofs are called _relativizing_. In 1975, Baker, Gill, and Solovay showed that P = NP with respect to some oracles, while P ≠ NP for other oracles.[44] Since relativizing proofs can only prove statements that are uniformly true with respect to all possible oracles, this showed that relativizing techniques cannot resolve P = NP.
  Natural proofs        In 1993, Alexander Razborov and Steven Rudich defined a general class of proof techniques for circuit complexity lower bounds, called _natural proofs_.[45] At the time all previously known circuit lower bounds were natural, and circuit complexity was considered a very promising approach for resolving P = NP. However, Razborov and Rudich showed that, if one-way functions exist, then no natural proof method can distinguish between P and NP. Although one-way functions have never been formally proven to exist, most mathematicians believe that they do, and a proof of their existence would be a much stronger statement than P ≠ NP. Thus it is unlikely that natural proofs alone can resolve P = NP.
  Algebrizing proofs    After the Baker-Gill-Solovay result, new non-relativizing proof techniques were successfully used to prove that IP = PSPACE. However, in 2008, Scott Aaronson and Avi Wigderson showed that the main technical tool used in the IP = PSPACE proof, known as _arithmetization_, was also insufficient to resolve P = NP.[46]

These barriers are another reason why NP-complete problems are useful: if a polynomial-time algorithm can be demonstrated for an NP-complete problem, this would solve the P = NP problem in a way not excluded by the above results.

These barriers have also led some computer scientists to suggest that the P versus NP problem may be independent of standard axiom systems like ZFC (cannot be proved or disproved within them). The interpretation of an independence result could be that either no polynomial-time algorithm exists for any NP-complete problem, and such a proof cannot be constructed in (e.g.) ZFC, or that polynomial-time algorithms for NP-complete problems may exist, but it is impossible to prove in ZFC that such algorithms are correct.[47] However, if it can be shown, using techniques of the sort that are currently known to be applicable, that the problem cannot be decided even with much weaker assumptions extending the Peano axioms (PA) for integer arithmetic, then there would necessarily exist nearly-polynomial-time algorithms for every problem in NP.[48] Therefore, if one believes (as most complexity theorists do) that not all problems in NP have efficient algorithms, it would follow that proofs of independence using those techniques cannot be possible. Additionally, this result implies that proving independence from PA or ZFC using currently known techniques is no easier than proving the existence of efficient algorithms for all problems in NP.


Claimed solutions

While the P versus NP problem is generally considered unsolved,[49] many amateur and some professional researchers have claimed solutions. Gerhard J. Woeginger maintains a list that, as of 2018, contains 62 purported proofs of P = NP, 50 of P ≠ NP, 2 proofs the problem is unprovable, and one proof that it is undecidable.[50] An August 2010 claim of proof that P ≠ NP, by Vinay Deolalikar, a researcher at HP Labs, received heavy Internet and press attention after two leading specialists described it as " to be a relatively serious attempt".[51] The proof has been reviewed publicly by academics,[52][53] and Neil Immerman, an expert in the field, has pointed out two possibly fatal errors in the proof.[54] In September 2010, Deolalikar was reported to be working on a detailed expansion of his attempted proof.[55] However, opinions expressed by several notable theoretical computer scientists indicate that the attempted proof is neither correct nor a significant advancement in the understanding of the problem.[56] This assessment prompted a May 2013 article in _The New Yorker_ to call the proof attempt "thoroughly discredited".[57]


Logical characterizations

The P = NP problem can be restated in terms of expressible certain classes of logical statements, as a result of work in descriptive complexity.

Consider all languages of finite structures with a fixed signature including a linear order relation. Then, all such languages in P can be expressed in first-order logic with the addition of a suitable least fixed-point combinator. Effectively, this, in combination with the order, allows the definition of recursive functions. As long as the signature contains at least one predicate or function in addition to the distinguished order relation, so that the amount of space taken to store such finite structures is actually polynomial in the number of elements in the structure, this precisely characterizes P.

Similarly, NP is the set of languages expressible in existential second-order logic—that is, second-order logic restricted to exclude universal quantification over relations, functions, and subsets. The languages in the polynomial hierarchy, PH, correspond to all of second-order logic. Thus, the question "is P a proper subset of NP" can be reformulated as "is existential second-order logic able to describe languages (of finite linearly ordered structures with nontrivial signature) that first-order logic with least fixed point cannot?".[58] The word "existential" can even be dropped from the previous characterization, since P = NP if and only if P = PH (as the former would establish that NP = CO-NP, which in turn implies that NP = PH).


Polynomial-time algorithms

No algorithm for any NP-complete problem is known to run in polynomial time. However, there are algorithms known for NP-complete problems with the property that if P = NP, then the algorithm runs in polynomial time on accepting instances (although with enormous constants, making the algorithm impractical). However, these algorithms do not qualify as polynomial time because their running time on rejecting instances are not polynomial. The following algorithm, due to Levin (without any citation), is such an example below. It correctly accepts the NP-complete language SUBSET-SUM. It runs in polynomial time on inputs that are in SUBSET-SUM if and only if P = NP:

''// Algorithm that accepts the NP-complete language SUBSET-SUM.
''//
''// this is a polynomial-time algorithm if and only if P = NP.
''//
''// "Polynomial-time" means it returns "yes" in polynomial time when
''// the answer should be "yes", and runs forever when it is "no".
''//
''// Input: S = a finite set of integers
''// Output: "yes" if any subset of S adds up to 0.
''// Runs forever with no output otherwise.
''// Note: "Program number M" is the program obtained by
''// writing the integer M in binary, then
''// considering that string of bits to be a
''// program. Every possible program can be
''// generated this way, though most do nothing
_// because of syntax errors._
FOR K = 1...∞
  FOR M = 1...K
    Run program number M for K steps with input S
    IF the program outputs a list of distinct integers
      AND the integers are all in S
      AND the integers sum to 0
    THEN
      OUTPUT "yes" and HALT

If, and only if, P = NP, then this is a polynomial-time algorithm accepting an NP-complete language. "Accepting" means it gives "yes" answers in polynomial time, but is allowed to run forever when the answer is "no" (also known as a _semi-algorithm_).

This algorithm is enormously impractical, even if P = NP. If the shortest program that can solve SUBSET-SUM in polynomial time is _b_ bits long, the above algorithm will try at least other programs first.


Formal definitions

P and NP

Conceptually speaking, a _decision problem_ is a problem that takes as input some string _w_ over an alphabet Σ, and outputs "yes" or "no". If there is an algorithm (say a Turing machine, or a computer program with unbounded memory) that can produce the correct answer for any input string of length _n_ in at most _cn^(k)_ steps, where _k_ and _c_ are constants independent of the input string, then we say that the problem can be solved in _polynomial time_ and we place it in the class P. Formally, P is defined as the set of all languages that can be decided by a deterministic polynomial-time Turing machine. That is,

P = {_L_ : _L_ = _L_(_M_) for some deterministic polynomial-time Turing machine _M_}
where

_L_(_M_) = {_w_ ∈ _Σ_^(*) : _M_ accepts _w_}
and a deterministic polynomial-time Turing machine is a deterministic Turing machine _M_ that satisfies the following two conditions:

1.  _M_ halts on all inputs _w_ and
2.  there exists k ∈ N such that T_(M)(n) ∈ O(n^(k)), where _O_ refers to the big O notation and

_T__(_M_)(_n_) = max {_t__(_M_)(_w_) : _w_ ∈ _Σ_^(*), |_w_| = _n_}

_t__(_M_)(_w_) =  number of steps _M_ takes to halt on input _w_.

NP can be defined similarly using nondeterministic Turing machines (the traditional way). However, a modern approach to define NP is to use the concept of _certificate_ and _verifier_. Formally, NP is defined as the set of languages over a finite alphabet that have a verifier that runs in polynomial time, where the notion of "verifier" is defined as follows.

Let _L_ be a language over a finite alphabet, Σ.

_L_ ∈ NP if, and only if, there exists a binary relation R ⊂ Σ^(*) × Σ^(*) and a positive integer _k_ such that the following two conditions are satisfied:

1.  For all x ∈ Σ^(*), x ∈ L ⇔ ∃y ∈ Σ^(*) such that (_x_, _y_) ∈ _R_ and |y| ∈ O(|x|^(k)); and
2.  the language L_(R) = {x#y : (x, y) ∈ R} over Σ ∪ {#} is decidable by a deterministic Turing machine in polynomial time.

A Turing machine that decides _L_(R)_ is called a _verifier_ for _L_ and a _y_ such that (_x_, _y_) ∈ _R_ is called a _certificate of membership_ of _x_ in _L_.

In general, a verifier does not have to be polynomial-time. However, for _L_ to be in NP, there must be a verifier that runs in polynomial time.

Example

Let

_C__O__M__P__O__S__I__T__E_ = {_x_∈ℕ∣_x_=_p__q_ for integers _p_,_q_>1}

$$R = \left \{(x,y)\in\mathbb{N} \times\mathbb{N} \mid 1<y \leq \sqrt x \text{ and } y \text{ divides } x \right \}.$$
Clearly, the question of whether a given _x_ is a composite is equivalent to the question of whether _x_ is a member of COMPOSITE. It can be shown that COMPOSITE ∈ NP by verifying that it satisfies the above definition (if we identify natural numbers with their binary representations).

COMPOSITE also happens to be in P, a fact demonstrated by the invention of the AKS primality test.[59]

NP-completeness

There are many equivalent ways of describing NP-completeness.

Let _L_ be a language over a finite alphabet Σ.

_L_ is NP-complete if, and only if, the following two conditions are satisfied:

1.  _L_ ∈ NP; and
2.  any _L′_ in NP is polynomial-time-reducible to _L_ (written as L′≤_(p)L), where L′≤_(p)L if, and only if, the following two conditions are satisfied:
    1.  There exists _f_ : Σ* → Σ* such that for all _w_ in Σ* we have: (w ∈ L′ ⇔ f(w) ∈ L); and
    2.  there exists a polynomial-time Turing machine that halts with _f_(_w_) on its tape on any input _w_.

Alternatively, if _L_ ∈ NP, and there is another NP-complete problem that can be polynomial-time reduced to _L_, then _L_ is NP-complete. This is a common way of proving some new problem is NP-complete.


Popular culture

The film _Travelling Salesman_, by director Timothy Lanzone, is the story of four mathematicians hired by the US government to solve the P versus NP problem.[60]

In the sixth episode of _The Simpsons_{{'}} seventh season "Treehouse of Horror VI", the equation P=NP is seen shortly after Homer accidentally stumbles into the "third dimension".[61][62]

In the second episode of season 2 of _Elementary_, "Solve for X" revolves around Sherlock and Watson investigating the murders of mathematicians who were attempting to solve P versus NP.[63][64]


See also

-   Game complexity
-   List of unsolved problems in mathematics
-   Unique games conjecture
-   Unsolved problems in computer science


Notes


References


Further reading

-   -   Online drafts

-   -   -   -


External links

-   Aviad Rubinstein's _Hardness of Approximation Between P and NP_, winner of the ACM's 2017 Doctoral Dissertation Award.

Category:1956 in computer science Category:Structural complexity theory Category:Mathematical optimization Category:Conjectures Category:Unsolved problems in mathematics Category:Unsolved problems in computer science Category:Millennium Prize Problems Category:Computer-related introductions in 1956

[1] R. E. Ladner "On the structure of polynomial time reducibility," _Journal of the ACM_ 22, pp. 151–171, 1975. Corollary 1.1. ACM site.

[2] A nondeterministic Turing machine can move to a state that is not determined by the previous state. Such a machine could solve an NP problem in polynomial time by falling into the correct answer state (by luck), then conventionally verifying it. Such machines are not practical for solving realistic problems but can be used as theoretical models.

[3]

[4]

[5]

[6]

[7]

[8]

[9] Sipser, Michael: _Introduction to the Theory of Computation, Second Edition, International Edition_, page 270. Thomson Course Technology, 2006. Definition 7.19 and Theorem 7.20.

[10]

[11]

[12]

[13]

[14]

[15]

[16]

[17]

[18]

[19]

[20]

[21]

[22]

[23]

[24]

[25]

[26] Lance Fortnow. Computational Complexity Blog: Complexity Class of the Week: Factoring. 13 September 2002.

[27]

[28]

[29]

[30] , point 9.

[31]

[32] Exactly how efficient a solution must be to pose a threat to cryptography depends on the details. A solution of O(N²) with a reasonable constant term would be disastrous. On the other hand, a solution that is Ω(N⁴) in almost all cases would not pose an immediate practical danger.

[33] See for a reduction of factoring to SAT. A 512 bit factoring problem (8400 MIPS-years when factored) translates to a SAT problem of 63,652 variables and 406,860 clauses.

[34] See, for example, in which an instance of DES is encoded as a SAT problem with 10336 variables and 61935 clauses. A 3DES problem instance would be about 3 times this size.

[35]

[36]

[37] History of this letter and its translation from

[38]  From pages 359–376 of Optimization Stories, M. Grötschel (editor), a special issue of ¨ Documenta Mathematica, published in August 2012 and distributed to attendees at the 21st International Symposium on Mathematical Programming in Berlin.

[39]

[40]

[41]

[42] R. Impagliazzo, "A personal view of average-case complexity," sct, pp.134, 10th Annual Structure in Complexity Theory Conference (SCT'95), 1995

[43]

[44]

[45]

[46]

[47] .

[48] .

[49]

[50]

[51]

[52]

[53] Science News, "Crowdsourcing peer review"

[54]

[55]

[56] Gödel’s Lost Letter and P=NP, Update on Deolalikar’s Proof that P≠NP

[57]

[58] Elvira Mayordomo. "P versus NP" _Monografías de la Real Academia de Ciencias de Zaragoza_ 26: 57–68 (2004).

[59]

[60]

[61]

[62]

[63]

[64]