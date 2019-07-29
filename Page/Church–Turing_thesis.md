In computability theory, the CHURCH–TURING THESIS (also known as COMPUTABILITY THESIS,[1] the TURING–CHURCH THESIS,[2] the CHURCH–TURING CONJECTURE, CHURCH'S THESIS, CHURCH'S CONJECTURE, and TURING'S THESIS) is a hypothesis about the nature of computable functions. It states that a function on the natural numbers can be calculated by an effective method, if and only if it is computable by a Turing machine. The thesis is named after American mathematician Alonzo Church and the British mathematician Alan Turing. Before the precise definition of computable function, mathematicians often used the informal term effectively calculable to describe functions that are computable by paper-and-pencil methods. In the 1930s, several independent attempts were made to formalize the notion of computability:

-   In 1933, Kurt Gödel, with Jacques Herbrand, created a formal definition of a class called general recursive functions. The class of general recursive functions is the smallest class of functions (possibly with more than one argument) which includes all constant functions, projections, the successor function, and which is closed under function composition, recursion, and minimization.
-   In 1936, Alonzo Church created a method for defining functions called the λ-calculus. Within λ-calculus, he defined an encoding of the natural numbers called the Church numerals. A function on the natural numbers is called λ-computable if the corresponding function on the Church numerals can be represented by a term of the λ-calculus.
-   Also in 1936, before learning of Church's work, Alan Turing created a theoretical model for machines, now called Turing machines, that could carry out calculations from inputs by manipulating symbols on a tape. Given a suitable encoding of the natural numbers as sequences of symbols, a function on the natural numbers is called Turing computable if some Turing machine computes the corresponding function on encoded natural numbers.

Church[3] and Turing[4]{{#tag:ref|. Proof outline on p.153: λ-definable $\stackrel{triv}{\implies}$ λ-K-definable $\stackrel{160}{\implies}$ Turing computable $\stackrel{161}{\implies}$ μ-recursive $\stackrel{Kleene}{\implies}$[5] λ-definable}} proved that these three formally defined classes of computable functions coincide: a function is λ-computable if and only if it is Turing computable if and only if it is _general recursive_. This has led mathematicians and computer scientists to believe that the concept of computability is accurately characterized by these three equivalent processes. Other formal attempts to characterize computability have subsequently strengthened this belief (see below).

On the other hand, the Church–Turing thesis states that the above three formally-defined classes of computable functions coincide with the _informal_ notion of an effectively calculable function. Since, as an informal notion, the concept of effective calculability does not have a formal definition, the thesis, although it has near-universal acceptance, cannot be formally proven.

Since its inception, variations on the original thesis have arisen, including statements about what can physically be realized by a computer in our universe (physical Church-Turing thesis) and what can be efficiently computed (Church–Turing thesis (complexity theory)). These variations are not due to Church or Turing, but arise from later work in complexity theory and digital physics. The thesis also has implications for the philosophy of mind (see below).


Statement in Church's and Turing's words

addresses the notion of "effective computability" as follows: "Clearly the existence of CC and RC (Church's and Rosser's proofs) presupposes a precise definition of 'effective'. 'Effective method' is here used in the rather special sense of a method each step of which is precisely predetermined and which is certain to produce the answer in a finite number of steps".[6] Thus the adverb-adjective "effective" is used in a sense of "1a: producing a decided, decisive, or desired effect", and "capable of producing a result".[7][8]

In the following, the words "effectively calculable" will mean "produced by any intuitively 'effective' means whatsoever" and "effectively computable" will mean "produced by a Turing-machine or equivalent mechanical device". Turing's "definitions" given in a footnote in his 1938 Ph.D. thesis _Systems of Logic Based on Ordinals_, supervised by Church, are virtually the same:

  We shall use the expression "computable function" to mean a function calculable by a machine, and let "effectively calculable" refer to the intuitive idea without particular identification with any one of these definitions.[9]

The thesis can be stated as: _Every effectively calculable function is a computable function_.[10]

Turing stated it this way:

  It was stated ... that "a function is effectively calculable if its values can be found by some purely mechanical process". We may take this literally, understanding that by a purely mechanical process one which could be carried out by a machine. The development ... leads to ... an identification of computability with effective calculability. [ is the footnote quoted above.][11]


History

One of the important problems for logicians in the 1930s was the Entscheidungsproblem of David Hilbert and Wilhelm Ackermann[12], which asked whether there was a mechanical procedure for separating mathematical truths from mathematical falsehoods. This quest required that the notion of "algorithm" or "effective calculability" be pinned down, at least well enough for the quest to begin.[13] But from the very outset Alonzo Church's attempts began with a debate that continues to this day.[14] the notion of "effective calculability" to be (i) an "axiom or axioms" in an axiomatic system, (ii) merely a _definition_ that "identified" two or more propositions, (iii) an _empirical hypothesis_ to be verified by observation of natural events, or (iv) just _a proposal_ for the sake of argument (i.e. a "thesis").

Circa 1930–1952

In the course of studying the problem, Church and his student Stephen Kleene introduced the notion of λ-definable functions, and they were able to prove that several large classes of functions frequently encountered in number theory were λ-definable.[15] The debate began when Church proposed to Gödel that one should define the "effectively computable" functions as the λ-definable functions. Gödel, however, was not convinced and called the proposal "thoroughly unsatisfactory".[16] Rather, in correspondence with Church (c. 1934–35), Gödel proposed _axiomatizing_ the notion of "effective calculability"; indeed, in a 1935 letter to Kleene, Church reported that:

But Gödel offered no further guidance. Eventually, he would suggest his recursion, modified by Herbrand's suggestion, that Gödel had detailed in his 1934 lectures in Princeton NJ (Kleene and Rosser transcribed the notes). But he did not think that the two ideas could be satisfactorily identified "except heuristically".[17]

Next, it was necessary to identify and prove the equivalence of two notions of effective calculability. Equipped with the λ-calculus and "general" recursion, Stephen Kleene with help of Church and J. Barkley Rosser produced proofs (1933, 1935) to show that the two calculi are equivalent. Church subsequently modified his methods to include use of Herbrand–Gödel recursion and then proved (1936) that the Entscheidungsproblem is unsolvable: there is no algorithm that can determine whether a well formed formula .[18]

Many years later in a letter to Davis (c. 1965), Gödel said that "he was, at the time of these [1934] lectures, not at all convinced that his concept of recursion comprised all possible recursions".[19] By 1963–64 Gödel would disavow Herbrand–Gödel recursion and the λ-calculus in favor of the Turing machine as the definition of "algorithm" or "mechanical procedure" or "formal system".[20]

A HYPOTHESIS LEADING TO A NATURAL LAW?: In late 1936 Alan Turing's paper (also proving that the Entscheidungsproblem is unsolvable) was delivered orally, but had not yet appeared in print.[21] On the other hand, Emil Post's 1936 paper had appeared and was certified independent of Turing's work.[22] Post strongly disagreed with Church's "identification" of effective computability with the λ-calculus and recursion, stating:

Rather, he regarded the notion of "effective calculability" as merely a "working hypothesis" that might lead by inductive reasoning to a "natural law" rather than by "a definition or an axiom".[23] This idea was "sharply" criticized by Church.[24]

Thus Post in his 1936 paper was also discounting Kurt Gödel's suggestion to Church in 1934–35 that the thesis might be expressed as an axiom or set of axioms.[25]

TURING ADDS ANOTHER DEFINITION, ROSSER EQUATES ALL THREE: Within just a short time, Turing's 1936–37 paper "On Computable Numbers, with an Application to the Entscheidungsproblem"[26] appeared. In it he stated another notion of "effective computability" with the introduction of his a-machines (now known as the Turing machine abstract computational model). And in a proof-sketch added as an "Appendix" to his 1936–37 paper, Turing showed that the classes of functions defined by λ-calculus and Turing machines coincided.[27] Church was quick to recognise how compelling Turing's analysis was. In his review of Turing's paper he made clear that Turing's notion made "the identification with effectiveness in the ordinary (not explicitly defined) sense evident immediately".[28]

In a few years (1939) Turing would propose, like Church and Kleene before him, that _his_ formal definition of mechanical computing agent was the correct one.[29] Thus, by 1939, both Church (1934) and Turing (1939) had individually proposed that their "formal systems" should be _definitions_ of "effective calculability";[30] neither framed their statements as _theses_.

Rosser (1939) formally identified the three notions-as-definitions:

KLEENE PROPOSES _CHURCH'S THESIS_: This left the overt expression of a "thesis" to Kleene. In his 1943 paper _Recursive Predicates and Quantifiers_ Kleene proposed his "THESIS I":

(²²) references Church 1936; (²³) references Turing 1936–7 Kleene goes on to note that:

(24) references Post 1936 of Post and Church's _Formal definitions in the theory of ordinal numbers_, _Fund. Math_. vol 28 (1936) pp.11–21 (see ref. #2, ).

KLEENE'S CHURCH–TURING THESIS: A few years later (1952) Kleene, who switched from presenting his work in the mathematical terminology of the lambda calculus of his phd advisor Alonzo Church to the theory of general recursive functions of his other teacher Kurt Gödel, would overtly name the Church–Turing thesis in his correction of Turing's paper "The Word Problem in Semi-Groups with Cancellation",[31] defend, and express the two "theses" and then "identify" them (show equivalence) by use of his Theorem XXX:

Later developments

An attempt to understand the notion of "effective computability" better led Robin Gandy (Turing's student and friend) in 1980 to analyze _machine_ computation (as opposed to human-computation acted out by a Turing machine). Gandy's curiosity about, and analysis of, cellular automata (including Conway's game of life), parallelism, and crystalline automata, led him to propose four "principles (or constraints) ... which it is argued, any machine must satisfy".[32] His most-important fourth, "the principle of causality" is based on the "finite velocity of propagation of effects and signals; contemporary physics rejects the possibility of instantaneous action at a distance".[33] From these principles and some additional constraints—(1a) a lower bound on the linear dimensions of any of the parts, (1b) an upper bound on speed of propagation (the velocity of light), (2) discrete progress of the machine, and (3) deterministic behavior—he produces a theorem that "What can be calculated by a device satisfying principles I–IV is computable."[34]

In the late 1990s Wilfried Sieg analyzed Turing's and Gandy's notions of "effective calculability" with the intent of "sharpening the informal notion, formulating its general features axiomatically, and investigating the axiomatic framework".[35] In his 1997 and 2002 work Sieg presents a series of constraints on the behavior of a _computor_—"a human computing agent who proceeds mechanically". These constraints reduce to:

-   "(B.1) (Boundedness) There is a fixed bound on the number of symbolic configurations a computor can immediately recognize.
-   "(B.2) (Boundedness) There is a fixed bound on the number of internal states a computor can be in.
-   "(L.1) (Locality) A computor can change only elements of an observed symbolic configuration.
-   "(L.2) (Locality) A computor can shift attention from one symbolic configuration to another one, but the new observed configurations must be within a bounded distance of the immediately previously observed configuration.
-   "(D) (Determinacy) The immediately recognizable (sub-)configuration determines uniquely the next computation step (and id [instantaneous description])"; stated another way: "A computor's internal state together with the observed configuration fixes uniquely the next computation step and the next internal state."[36]

The matter remains in active discussion within the academic community.[37][38]

The thesis as a definition

The thesis can be viewed as nothing but an ordinary mathematical definition. Comments by Gödel on the subject suggest this view, e.g. "the correct definition of mechanical computability was established beyond any doubt by Turing".[39] The case for viewing the thesis as nothing more than a definition is made explicitly by Robert I. Soare,[40] where it is also argued that Turing's definition of computability is no less likely to be correct than the epsilon-delta definition of a continuous function.


Success of the thesis

Other formalisms (besides recursion, the λ-calculus, and the Turing machine) have been proposed for describing effective calculability/computability. Stephen Kleene (1952) adds to the list the functions "_reckonable_ in the system S₁" of Kurt Gödel 1936, and Emil Post's (1943, 1946) "_canonical_ [also called _normal_] _systems_".[41] In the 1950s Hao Wang and Martin Davis greatly simplified the one-tape Turing-machine model (see Post–Turing machine). Marvin Minsky expanded the model to two or more tapes and greatly simplified the tapes into "up-down counters", which Melzak and Lambek further evolved into what is now known as the counter machine model. In the late 1960s and early 1970s researchers expanded the counter machine model into the register machine, a close cousin to the modern notion of the computer. Other models include combinatory logic and Markov algorithms. Gurevich adds the pointer machine model of Kolmogorov and Uspensky (1953, 1958): "... they just wanted to ... convince themselves that there is no way to extend the notion of computable function."[42]

All these contributions involve proofs that the models are computationally equivalent to the Turing machine; such models are said to be Turing complete. Because all these different attempts at formalizing the concept of "effective calculability/computability" have yielded equivalent results, it is now generally assumed that the Church–Turing thesis is correct. In fact, Gödel (1936) proposed something stronger than this; he observed that there was something "absolute" about the concept of "reckonable in S₁":


Informal usage in proofs

Proofs in computability theory often invoke the Church–Turing thesis in an informal way to establish the computability of functions while avoiding the (often very long) details which would be involved in a rigorous, formal proof.[43] To establish that a function is computable by Turing machine, it is usually considered sufficient to give an informal English description of how the function can be effectively computed, and then conclude "by the Church–Turing thesis" that the function is Turing computable (equivalently, partial recursive).

Dirk van Dalen gives the following example for the sake of illustrating this informal use of the Church–Turing thesis:[44]

In order to make the above example completely rigorous, one would have to carefully construct a Turing machine, or λ-function, or carefully invoke recursion axioms, or at best, cleverly invoke various theorems of computability theory. But because the computability theorist believes that Turing computability correctly captures what can be computed effectively, and because an effective procedure is spelled out in English for deciding the set B, the computability theorist accepts this as proof that the set is indeed recursive.


Variations

The success of the Church–Turing thesis prompted variations of the thesis to be proposed. For example, the PHYSICAL CHURCH–TURING THESIS states: "All physically computable functions are Turing-computable."[45]

The Church–Turing thesis says nothing about the efficiency with which one model of computation can simulate another. It has been proved for instance that a (multi-tape) universal Turing machine only suffers a logarithmic slowdown factor in simulating any Turing machine.[46]

A variation of the Church–Turing thesis addresses whether an arbitrary but "reasonable" model of computation can be efficiently simulated. This is called the FEASIBILITY THESIS,[47] also known as the (CLASSICAL) COMPLEXITY-THEORETIC CHURCH–TURING THESIS or the EXTENDED CHURCH–TURING THESIS, which is not due to Church or Turing, but rather was realized gradually in the development of complexity theory. It states:[48] "A probabilistic Turing machine can efficiently simulate any realistic model of computation." The word 'efficiently' here means up to polynomial-time reductions. This thesis was originally called COMPUTATIONAL COMPLEXITY-THEORETIC CHURCH–TURING THESIS by Ethan Bernstein and Umesh Vazirani (1997). The complexity-theoretic Church–Turing thesis, then, posits that all 'reasonable' models of computation yield the same class of problems that can be computed in polynomial time. Assuming the conjecture that probabilistic polynomial time (BPP) equals deterministic polynomial time (P), the word 'probabilistic' is optional in the complexity-theoretic Church–Turing thesis. A similar thesis, called the INVARIANCE THESIS, was introduced by Cees F. Slot and Peter van Emde Boas. It states: {{"'}}Reasonable' machines can simulate each other within a polynomially bounded overhead in time and a constant-factor overhead in space."[49] The thesis originally appeared in a paper at STOC'84, which was the first paper to show that polynomial-time overhead and constant-space overhead could be _simultaneously_ achieved for a simulation of a Random Access Machine on a Turing machine.[50]

If BQP is shown to be a strict superset of BPP, it would invalidate the complexity-theoretic Church–Turing thesis. In other words, there would be efficient quantum algorithms that perform tasks that do not have efficient probabilistic algorithms. This would not however invalidate the original Church–Turing thesis, since a quantum computer can always be simulated by a Turing machine, but it would invalidate the classical complexity-theoretic Church–Turing thesis for efficiency reasons. Consequently, the QUANTUM COMPLEXITY-THEORETIC CHURCH–TURING THESIS states:[51] "A quantum Turing machine can efficiently simulate any realistic model of computation."

Eugene Eberbach and Peter Wegner claim that the Church–Turing thesis is sometimes interpreted too broadly, stating "the broader assertion that algorithms precisely capture what can be computed is invalid".[52] They claim that forms of computation not captured by the thesis are relevant today, terms which they call super-Turing computation.


Philosophical implications

Philosophers have interpreted the Church–Turing thesis as having implications for the philosophy of mind.[53][54] B. Jack Copeland states that it is an open empirical question whether there are actual deterministic physical processes that, in the long run, elude simulation by a Turing machine; furthermore, he states that it is an open empirical question whether any such processes are involved in the working of the human brain.[55] There are also some important open questions which cover the relationship between the Church–Turing thesis and physics, and the possibility of hypercomputation. When applied to physics, the thesis has several possible meanings:

1.  The universe is equivalent to a Turing machine; thus, computing non-recursive functions is physically impossible. This has been termed the strong Church–Turing thesis, or Church–Turing–Deutsch principle, and is a foundation of digital physics.
2.  The universe is not equivalent to a Turing machine (i.e., the laws of physics are not Turing-computable), but incomputable physical events are not "harnessable" for the construction of a hypercomputer. For example, a universe in which physics involves random real numbers, as opposed to computable reals, would fall into this category.
3.  The universe is a hypercomputer, and it is possible to build physical devices to harness this property and calculate non-recursive functions. For example, it is an open question whether all quantum mechanical events are Turing-computable, although it is known that rigorous models such as quantum Turing machines are equivalent to deterministic Turing machines. (They are not necessarily efficiently equivalent; see above.) John Lucas and Roger Penrose have suggested that the human mind might be the result of some kind of quantum-mechanically enhanced, "non-algorithmic" computation.[56][57]

There are many other technical possibilities which fall outside or between these three categories, but these serve to illustrate the range of the concept.

Philosophical aspects of the thesis, regarding both physical and biological computers, are also discussed in Odifreddi's 1989 textbook on recursion theory.[58]


Non-computable functions

One can formally define functions that are not computable. A well-known example of such a function is the Busy Beaver function. This function takes an input _n_ and returns the largest number of symbols that a Turing machine with _n_ states can print before halting, when run with no input. Finding an upper bound on the busy beaver function is equivalent to solving the halting problem, a problem known to be unsolvable by Turing machines. Since the busy beaver function cannot be computed by Turing machines, the Church–Turing thesis states that this function cannot be effectively computed by any method.

Several computational models allow for the computation of (Church-Turing) non-computable functions. These are known as hypercomputers. Mark Burgin argues that super-recursive algorithms such as inductive Turing machines disprove the Church–Turing thesis.[59] His argument relies on a definition of algorithm broader than the ordinary one, so that non-computable functions obtained from some inductive Turing machines are called computable. This interpretation of the Church–Turing thesis differs from the interpretation commonly accepted in computability theory, discussed above. The argument that super-recursive algorithms are indeed algorithms in the sense of the Church–Turing thesis has not found broad acceptance within the computability research community.


See also

-   Abstract machine
-   Church's thesis in constructive mathematics
-   Church–Turing–Deutsch principle, which states that every physical process can be simulated by a universal computing device
-   Computability logic
-   Computability theory
-   Decidability
-   Hypercomputation
-   Model of computation
-   Oracle (computer science)
-   Super-recursive algorithm
-   Turing completeness


Footnotes


References

-   -   -   -   -   -   -   -   -   -   -   -   Includes original papers by Gödel, Church, Turing, Rosser, Kleene, and Post mentioned in this section.

-   -   -   -   -   -   Cited by .

-   -   -   -   -   -   -   Reprinted in Davis, p. 255ff. Kleene refined his definition of "general recursion" and proceeded in his chapter "12. Algorithmic theories" to posit "Thesis I" (p. 274); he would later repeat this thesis (in ) and name it "Church's Thesis" (i.e., the Church thesis).

-   -   -   -   -   -   -   -   -   -   -   -   and (See also: )

-


External links

-   .

-   —a comprehensive philosophical treatment of relevant issues.

-   -   A special issue (Vol.28, No.4, 1987) of the _Notre Dame Journal of Formal Logic_ was devoted to the Church-Turing thesis.

Category:Computability theory Category:Alan Turing Category:Theory of computation Category:Philosophy of computer science

[1] Robert Soare, "Turing Oracle Machines, Online Computing, and Three Displacements in Computability Theory"

[2]

[3]

[4]

[5]

[6]  in .

[7]

[8] See also which also gives these definitions for "effective" – the first ["producing a decided, decisive, or desired effect"] as the definition for sense "1a" of the word "effective", and the second ["capable of producing a result"] as part of the "Synonym Discussion of EFFECTIVE" there, (in the introductory part, where it summarizes the similarities between the meanings of the words "effective", "effectual", "efficient", and "efficacious").

[9]

[10]  states it this way: _What is effectively calculable is computable._ He calls this "Church's Thesis".

[11]

[12] David Hilbert and Wilhelm Ackermann: Grundzüge der theoretischen Logik, Berlin, Germany, Springer, 1st ed. 1928. (6th ed. 1972, ) English Translation: David Hilbert and Wilhelm Ackermann: Principles of Mathematical Logic, AMS Chelsea Publishing, Providence, Rhode Island, USA, 1950

[13] Davis's commentary before Church 1936 _An Unsolvable Problem of Elementary Number Theory_ in Davis 1965:88. Church uses the words "effective calculability" on page 100ff.

[14] In his review of _Church's Thesis after 70 Years_ edited by Adam Olszewski et al. 2006, Peter Smith's criticism of a paper by Muraswski and Wolenski suggests 4 "lines" re the status of the Church–Turing Thesis: (1) empirical hypothesis (2) axiom or theorem, (3) definition, (4) explication. But Smith opines that (4) is indistinguishable from (3), cf Smith (July 11, 2007) _Church's Thesis after 70 Years_ at http://www.logicmatters.net/resources/pdfs/CTT.pdf

[15] cf footnote 3 in _An Unsolvable Problem of Elementary Number Theory_ in .

[16] Dawson 1997:99.

[17] Sieg 1997:160 quoting from the 1935 letter written by Church to Kleene, cf Footnote 3 in Gödel 1934 in .

[18] cf. Church 1936 in .

[19] Davis's commentary before Gödel 1934 in .

[20] For a detailed discussion of Gödel's adoption of Turing's machines as models of computation, see

[21] .

[22] cf. Editor's footnote to Post 1936 _Finite Combinatory Process. Formulation I._ at .

[23] Post 1936 in Davis 1952:291.

[24] Sieg 1997:171 and 176–177.

[25] Sieg 1997:160.

[26]

[27] Turing 1936–37 in .

[28] .

[29] Turing 1939 in Davis:160.

[30] cf. Church 1934 in , also Turing 1939 in .

[31] .

[32] .

[33] .

[34]

[35] Sieg 1998–9 in ; also Sieg 1997:154ff.

[36] In a footnote Sieg breaks Post's 1936 (B) into (B.1) and (B.2) and (L) into (L.1) and (L.2) and describes (D) differently. With respect to his proposed Gandy machine he later adds LC.1, LC.2, GA.1 and GA.2. These are complicated; see Sieg 1998–99 in .

[37] A collection of papers can be found in . Also a review of this collection:

[38] See also

[39]

[40]

[41] Kleene 1952:320

[42] Gurevich 1988:2

[43] Horsten in .

[44]

[45]

[46]  Sections 1.4, "Machines as strings and the universal Turing machine" and 1.7, "Proof of theorem 1.9".

[47]

[48]

[49]

[50]

[51]

[52] .

[53]

[54] For a good place to encounter original papers see

[55]

[56] cf

[57] Also the description of "the non-algorithmic nature of mathematical insight",

[58]

[59]