In theoretical computer science, a NON-DETERMINISTIC TURING MACHINE is a theoretical model of computation. They are used in thought experiments to examine the abilities and limitations of computers. One of the most important open problems in theoretical computer science is the P vs. NP problem, which concerns the question of how difficult it is to simulate non-deterministic computation with a deterministic computer.


Background

In essence, a Turing machine is imagined to be a simple computer that reads and writes symbols one at a time on an endless tape by strictly following a set of rules. It determines what action it should perform next according to its internal _state_ and _what symbol it currently sees_. An example of one of a Turing Machine's rules might thus be: "If you are in state 2 and you see an 'A', change it to 'B', move left, and change to state 3."

Deterministic Turing Machine

In a deterministic Turing machine (DTM), the set of rules prescribes at most one action to be performed for any given situation.

A deterministic Turing machine has a _transition function_ that, for a given state and symbol under the tape head, specifies three things:

-   the symbol to be written to the tape,
-   the direction (left, right or neither) in which the head should move, and
-   the subsequent state of the finite control.

For example, an X on the tape in state 3 might make the DTM write a Y on the tape, move the head one position to the right, and switch to state 5.

Non-Deterministic Turing Machine

By contrast, in a NON-DETERMINISTIC TURING MACHINE (NTM), the set of rules may prescribe more than one action to be performed for any given situation. For example, an X on the tape in state 3 might allow the NTM to:

-   Write a Y, move right, and switch to state 5

OR

-   Write an X, move left, and stay in state 3.

Resolution of multiple rules

How does the NTM "know" which of these actions it should take? There are two ways of looking at it. One is to say that the machine is the "luckiest possible guesser"; it always picks a transition that eventually leads to an accepting state, if there is such a transition. The other is to imagine that the machine "branches" into many copies, each of which follows one of the possible transitions. Whereas a DTM has a single "computation path" that it follows, an NTM has a "computation tree". If at least one branch of the tree halts with an "accept" condition, we say that the NTM accepts the input.


Definition

A non-deterministic Turing machine can be formally defined as a 6-tuple M = (Q, Σ, ι, ⊔,A, δ), where

-   Q is a finite set of states
-   Σ is a finite set of symbols (the tape alphabet)
-   ι ∈ Q is the initial state
-    ⊔  ∈ Σ is the blank symbol
-   A ⊆ Q is the set of accepting (final) states
-   δ ⊆ (Q∖A×Σ) × (Q×Σ×{L,S,R}) is a relation on states and symbols called the _transition relation_. L is the movement to the left, S is no movement, and R is the movement to the right.

The difference with a standard (deterministic) Turing machine is that for those, the transition relation is a function (the transition function).

Configurations and the _yields_ relation on configurations, which describes the possible actions of the Turing machine given any possible contents of the tape, are as for standard Turing machines, except that the _yields_ relation is no longer single-valued. (If the machine is deterministic, the possible computations are all prefixes of a single, possibly infinite, path.)

The input for an NTM is provided in the same manner as for a deterministic Turing machine: the machine is started in the configuration in which the tape head is on the first character of the string (if any), and the tape is all blank otherwise.

An NTM accepts an input string if and only if _at least one_ of the possible computational paths starting from that string puts the machine into an accepting state. When simulating the many branching paths of an NTM on a deterministic machine, we can stop the entire simulation as soon as _any_ branch reaches an accepting state.

Alternate Definitions

As a mathematical construction used primarily in proofs, there are a variety of minor variations on the definition of an NTM, but these variations all accept equivalent languages.

The head movement in the output of the transition relation is often encoded numerically instead of using letters to represent moving the head Left (-1), Stationary (0), and Right (+1); giving a transition function output of (Q×Σ×{−1,0,+1}). It is common to omit the stationary (0) output,[1] and instead insert the transitive closure of any desired stationary transitions.

Some authors add an explicit _reject_ state,[2] which causes the NTM to halt without accepting. This definition still retains the asymmetry that _any_ nondeterministic branch can accept, but _every_ branch must reject for the string to be rejected.


Computational equivalence with DTMs

Any computational problem that can be solved by a DTM can also be solved by a NTM, and vice versa. However, it is believed that in general the time complexity may not be the same.

DTM as a special case of NTM

NTMs include DTMs as special cases, so every computation that can be carried out by a DTM can also be carried out by the equivalent NTM.

DTM simulation of NTM

It might seem that NTMs are more powerful than DTMs, since they can allow trees of possible computations arising from the same initial configuration, accepting a string if any one branch in the tree accepts it. However, it is possible to simulate NTMs with DTMs, and in fact this can be done in more than one way.

Multiplicity of configuration states

One approach is to use a DTM of which the configurations represent multiple configurations of the NTM, and the DTM's operation consists of visiting each of them in turn, executing a single step at each visit, and spawning new configurations whenever the transition relation defines multiple continuations.

Multiplicity of tapes

Another construction simulates NTMs with 3-tape DTMs, of which the first tape always holds the original input string, the second is used to simulate a particular computation of the NTM, and the third encodes a path in the NTM's computation tree.[3] The 3-tape DTMs are easily simulated with a normal single-tape DTM.

Time complexity and P vs. NP

In the second construction, the constructed DTM effectively performs a breadth-first search of the NTM's computation tree, visiting all possible computations of the NTM in order of increasing length until it finds an accepting one. Therefore, the length of an accepting computation of the DTM is, in general, exponential in the length of the shortest accepting computation of the NTM. This is believed to be a general property of simulations of NTMs by DTMs. The P = NP problem, the most famous unresolved question in computer science, concerns one case of this issue: whether or not every problem solvable by a NTM in polynomial time is necessarily also solvable by a DTM in polynomial time.


Bounded non-determinism

An NTM has the property of bounded non-determinism. That is, if an NTM always halts on a given input tape _T_ then it halts in a bounded number of steps, and therefore can only have a bounded number of possible configurations.


Comparison with quantum computers

(BQP). Note that the figure suggests P ≠ NP and NP ≠ PSPACE. If this is not true then the figure should look different.]] Because quantum computers use quantum bits, which can be in superpositions of states, rather than conventional bits, there is a misconception that quantum computers are NTMs.[4] It is believed by experts (but has not been proven) that instead, the power of quantum computers is incomparable to that of NTMs, that is, problems likely exist that an NTM could efficiently solve that a quantum computer cannot and vice versa.[5] In particular, it is likely that NP-complete problems are solvable by NTMs but not by quantum computers in polynomial time.


See also

-   Probabilistic Turing machine


References

-   Section 4.6: Nondeterministic Turing machines, pp. 204–211.

-   Section 9.6: Nondeterministic Turing machines, pp. 277–281.

-   Section 2.7: Nondeterministic machines, pp. 45–50.


External links

-   C++ Simulator of a Nondeterministic Multitape Turing Machine (free software).
-   C++ Simulator of a Nondeterministic Multitape Turing Machine download link from sourceforge.net

Category:Turing machine

[1]

[2]

[3] _Elements of the Theory of Computation_, by Harry R. Lewis and Christos H. Papadimitriou, Prentice-Hall, Englewood Cliffs, New Jersey, 1981, , pp. 206–211

[4] The Orion Quantum Computer Anti-Hype FAQ, Scott Aaronson.

[5] .