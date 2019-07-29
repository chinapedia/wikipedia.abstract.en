In the field of artificial intelligence, the most difficult problems are informally known as AI-COMPLETE or AI-HARD, implying that the difficulty of these computational problems, assuming intelligence is computational, is equivalent to that of solving the central artificial intelligence problem—making computers as intelligent as people, or strong AI.[1] To call a problem AI-complete reflects an attitude that it would not be solved by a simple specific algorithm.

AI-complete problems are hypothesised to include computer vision, natural language understanding, and dealing with unexpected circumstances while solving any real world problem.[2]

Currently, AI-complete problems cannot be solved with modern computer technology alone, but would also require human computation. This property could be useful, for example, to test for the presence of humans as CAPTCHAs aim to do, and for computer security to circumvent brute-force attacks.[3][4]


History

The term was coined by Fanya Montalvo by analogy with NP-complete and NP-hard in complexity theory, which formally describes the most famous class of difficult problems.[5] Early uses of the term are in Erik Mueller's 1987 Ph.D. dissertation[6] and in Eric Raymond's 1991 Jargon File.[7]


AI-complete problems

AI-complete problems are hypothesized to include:

-   AI peer review (composite natural language understanding, automated reasoning, automated theorem proving, formalized logic expert system)
-   Bongard problems
-   Computer vision (and subproblems such as object recognition)
-   Natural language understanding (and subproblems such as text mining, machine translation, and word sense disambiguation[8])
-   Dealing with unexpected circumstances while solving any real world problem, whether it's navigation or planning or even the kind of reasoning done by expert systems.

Machine translation

To translate accurately, a machine must be able to understand the text. It must be able to follow the author's argument, so it must have some ability to reason. It must have extensive world knowledge so that it knows what is being discussed — it must at least be familiar with all the same commonsense facts that the average human translator knows. Some of this knowledge is in the form of facts that can be explicitly represented, but some knowledge is unconscious and closely tied to the human body: for example, the machine may need to understand how an ocean makes one _feel_ to accurately translate a specific metaphor in the text. It must also model the authors' goals, intentions, and emotional states to accurately reproduce them in a new language. In short, the machine is required to have wide variety of human intellectual skills, including reason, commonsense knowledge and the intuitions that underlie motion and manipulation, perception, and social intelligence. Machine translation, therefore, is believed to be AI-complete: it may require strong AI to be done as well as humans can do it.


Software brittleness

Current AI systems can solve very simple and/or restricted versions of AI-complete problems, but never in their full generality. When AI researchers attempt to "scale up" their systems to handle more complicated, real world situations, the programs tend to become excessively brittle without commonsense knowledge or a rudimentary understanding of the situation: they fail as unexpected circumstances outside of its original problem context begin to appear. When human beings are dealing with new situations in the world, they are helped immensely by the fact that they know what to expect: they know what all things around them are, why they are there, what they are likely to do and so on. They can recognize unusual situations and adjust accordingly. A machine without strong AI has no other skills to fall back on.[9]


Formalization

Computational complexity theory deals with the relative computational difficulty of computable functions. By definition it does not cover problems whose solution is unknown or has not been characterised formally. Since many AI problems have no formalisation yet, conventional complexity theory does not allow the definition of AI-completeness.

To address this problem, a complexity theory for AI has been proposed.[10] It is based on a model of computation that splits the computational burden between a computer and a human: one part is solved by computer and the other part solved by human. This is formalised by a HUMAN-ASSISTED TURING MACHINE. The formalisation defines algorithm complexity, problem complexity and reducibility which in turn allows equivalence classes to be defined.

The complexity of executing an algorithm with a human-assisted Turing machine is given by a pair ⟨Φ_(H), Φ_(M)⟩, where the first element represents the complexity of the human's part and the second element is the complexity of the machine's part.

Results

The complexity of solving the following problems with a human-assisted Turing machine is:[11]

-   Optical character recognition for printed text: ⟨O(1), poly(n)⟩
-   Turing test:
    -   for an n-sentence conversation where the oracle remembers the conversation history (persistent oracle): ⟨O(n), O(n)⟩
    -   for an n-sentence conversation where the conversation history must be retransmitted: ⟨O(n), O(n²)⟩
    -   for an n-sentence conversation where the conversation history must be retransmitted and the person takes linear time to read the query: ⟨O(n²), O(n²)⟩
-   ESP game: ⟨O(n), O(n)⟩
-   Image labelling (based on the Arthur–Merlin protocol): ⟨O(n), O(n)⟩
-   Image classification: human only: ⟨O(n), O(n)⟩, and with less reliance on the human: ⟨O(log n), O(nlog n)⟩.


See also

-   ASR-complete
-   List of unsolved problems in computer science
-   Synthetic intelligence


References

Category:Artificial intelligence Category:Computational problems

[1] Shapiro, Stuart C. (1992). Artificial Intelligence In Stuart C. Shapiro (Ed.), _Encyclopedia of Artificial Intelligence_ (Second Edition, pp. 54–57). New York: John Wiley. (Section 4 is on "AI-Complete Tasks".)

[2] Roman V. Yampolskiy. Turing Test as a Defining Feature of AI-Completeness . In Artificial Intelligence, Evolutionary Computation and Metaheuristics (AIECM) --In the footsteps of Alan Turing. Xin-She Yang (Ed.). pp. 3-17. (Chapter 1). Springer, London. 2013. http://cecs.louisville.edu/ry/TuringTestasaDefiningFeature04270003.pdf

[3] Luis von Ahn, Manuel Blum, Nicholas Hopper, and John Langford. CAPTCHA: Using Hard AI Problems for Security . In Proceedings of Eurocrypt, Vol. 2656 (2003), pp. 294-311.

[4]  (unpublished?)

[5] .

[6] Mueller, Erik T. (1987, March). _Daydreaming and Computation_ (Technical Report CSD-870017) Ph.D. dissertation, University of California, Los Angeles. ("Daydreaming is but one more _AI-complete_ problem: if we could solve any one artificial intelligence problem, we could solve all the others", p. 302)

[7] Raymond, Eric S. (1991, March 22). Jargon File Version 2.8.1 (Definition of "AI-complete" first added to jargon file.)

[8]

[9]

[10] Dafna Shahaf and Eyal Amir (2007) Towards a theory of AI completeness. Commonsense 2007, 8th International Symposium on Logical Formalizations of Commonsense Reasoning.

[11]