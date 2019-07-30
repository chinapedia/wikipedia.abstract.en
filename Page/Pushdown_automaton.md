In the theory of computation, a branch of theoretical computer science, a PUSHDOWN AUTOMATON (PDA) is a type of automaton that employs a stack.

Pushdown automata are used in theories about what can be computed by machines. They are more capable than finite-state machines but less capable than Turing machines. Deterministic pushdown automata can recognize all deterministic context-free languages while nondeterministic ones can recognize all context-free languages, with the former often used in parser design.

The term "pushdown" refers to the fact that the stack can be regarded as being "pushed down" like a tray dispenser at a cafeteria, since the operations never work on elements other than the top element. A STACK AUTOMATON, by contrast, does allow access to and operations on deeper elements. Stack automata can recognize a strictly larger set of languages than pushdown automata.[1] A nested stack automaton allows full access, and also allows stacked values to be entire sub-stacks rather than just single finite symbols.


Informal description

A finite state machine just looks at the input signal and the current state: it has no stack to work with. It chooses a new state, the result of following the transition. A PUSHDOWN AUTOMATON (PDA) differs from a finite state machine in two ways:

1.  It can use the top of the stack to decide which transition to take.
2.  It can manipulate the stack as part of performing a transition.

A pushdown automaton reads a given input string from left to right. In each step, it chooses a transition by indexing a table by input symbol, current state, and the symbol at the top of the stack. A pushdown automaton can also manipulate the stack, as part of performing a transition. The manipulation can be to push a particular symbol to the top of the stack, or to pop off the top of the stack. The automaton can alternatively ignore the stack, and leave it as it is.

Put together: Given an input symbol, current state, and stack symbol, the automaton can follow a transition to another state, and optionally manipulate (push or pop) the stack.

If, in every situation, at most one such transition action is possible, then the automaton is called a DETERMINISTIC PUSHDOWN AUTOMATON (DPDA). In general, if several actions are possible, then the automaton is called a GENERAL, or NONDETERMINISTIC, PDA. A given input string may drive a nondeterministic pushdown automaton to one of several configuration sequences; if one of them leads to an accepting configuration after reading the complete input string, the latter is said to belong to the _language accepted by the automaton_.


Formal definition

We use standard formal language notation: Γ^(*) denotes the set of finite-length strings over alphabet Γ and ε denotes the empty string.

A PDA is formally defined as a 7-tuple:

M = (Q, Σ, Γ, δ, q₀, Z, F) where

-   Q is a finite set of _states_
-   Σ is a finite set which is called the _input alphabet_
-   Γ is a finite set which is called the _stack alphabet_
-   δ is a finite subset of Q × (Σ ∪ {ε}) × Γ × Q × Γ^(*), the _transition relation_
-   q₀ ∈ Q is the _start state_
-   Z ∈ Γ is the _initial stack symbol_
-   F ⊆ Q is the set of _accepting states_

An element (p, a, A, q, α) ∈ δ is a transition of M. It has the intended meaning that M, in state p ∈ Q, on the input a ∈ Σ ∪ {ε} and with A ∈ Γ as topmost stack symbol, may read a, change the state to q, pop A, replacing it by pushing α ∈ Γ^(*). The (Σ ∪ {ε}) component of the transition relation is used to formalize that the PDA can either read a letter from the input, or proceed leaving the input untouched.

In many texts[2] the transition relation is replaced by an (equivalent) formalization, where

-   δ is the _transition function_, mapping Q × (Σ ∪ {ε}) × Γ into finite subsets of Q × Γ^(*)

Here δ(p, a, A) contains all possible actions in state p with A on the stack, while reading a on the input. One writes for example δ(p, a, A) = {(q, BA)} precisely when (q, BA) ∈ {(q, BA)}, (q, BA) ∈ δ(p, a, A), because ((p, a, A), {(q, BA)}) ∈ δ. Note that _finite_ in this definition is essential.

''' _Computations_ '''

In order to formalize the semantics of the pushdown automaton a description of the current situation is introduced. Any 3-tuple (p, w, β) ∈ Q × Σ^(*) × Γ^(*) is called an instantaneous description (ID) of M, which includes the current state, the part of the input tape that has not been read, and the contents of the stack (topmost symbol written first). The transition relation δ defines the step-relation ⊢_(M) of M on instantaneous descriptions. For instruction (p, a, A, q, α) ∈ δ there exists a step (p, ax, Aγ)⊢_(M)(q, x, αγ), for every x ∈ Σ^(*) and every γ ∈ Γ^(*).

In general pushdown automata are nondeterministic meaning that in a given instantaneous description (p, w, β) there may be several possible steps. Any of these steps can be chosen in a computation. With the above definition in each step always a single symbol (top of the stack) is popped, replacing it with as many symbols as necessary. As a consequence no step is defined when the stack is empty.

Computations of the pushdown automaton are sequences of steps. The computation starts in the initial state q₀ with the initial stack symbol Z on the stack, and a string w on the input tape, thus with initial description (q₀, w, Z). There are two modes of accepting. The pushdown automaton either accepts by final state, which means after reading its input the automaton reaches an accepting state (in F), or it accepts by empty stack (ε), which means after reading its input the automaton empties its stack. The first acceptance mode uses the internal memory (state), the second the external memory (stack).

Formally one defines

1.  $L(M) = \{ w\in\Sigma^* | (q_{0},w,Z) \vdash_M^* (f,\varepsilon,\gamma)$ with f ∈ F and γ ∈ Γ^(*)} (final state)
2.  $N(M) = \{ w\in\Sigma^* | (q_{0},w,Z) \vdash_M^* (q,\varepsilon,\varepsilon)$ with q ∈ Q} (empty stack)

Here $\vdash_M^*$ represents the reflexive and transitive closure of the step relation ⊢_(M) meaning any number of consecutive steps (zero, one or more).

For each single pushdown automaton these two languages need to have no relation: they may be equal but usually this is not the case. A specification of the automaton should also include the intended mode of acceptance. Taken over all pushdown automata both acceptance conditions define the same family of languages.

THEOREM. For each pushdown automaton M one may construct a pushdown automaton M′ such that L(M) = N(M′), and vice versa, for each pushdown automaton M one may construct a pushdown automaton M′ such that N(M) = L(M′)


Example

The following is the formal description of the PDA which recognizes the language {0^(n)1^(n) ∣ n ≥ 0} by final state:

M = (Q, Σ, Γ, δ, q₀, Z, F), where

-   STATES: Q = {p, q, r}
-   INPUT ALPHABET: Σ = {0, 1}
-   STACK ALPHABET: Γ = {A, Z}
-   START STATE: q₀ = p
-   START STACK SYMBOL:
-   ACCEPTING STATES: F = {r}

The transition relation δ consists of the following six instructions:

(_p_, 0, _Z_, _p_, _A__Z_)
,

(_p_, 0, _A_, _p_, _A__A_)
,

(_p_, _ϵ_, _Z_, _q_, _Z_)
,

(_p_, _ϵ_, _A_, _q_, _A_)
,

(_q_, 1, _A_, _q_, _ϵ_)
, and

(_q_, _ϵ_, _Z_, _r_, _Z_)
.

In words, the first two instructions say that in state any time the symbol is read, one is pushed onto the stack. Pushing symbol on top of another is formalized as replacing top by (and similarly for pushing symbol on top of a ).

The third and fourth instructions say that, at any moment the automaton may move from state to state .

The fifth instruction says that in state , for each symbol read, one is popped.

Finally, the sixth instruction says that the machine may move from state to accepting state only when the stack consists of a single .

There seems to be no generally used representation for PDA. Here we have depicted the instruction (p, a, A, q, α) by an edge from state to state labelled by a; A/α (read ; replace by α).


Understanding the computation process

The following illustrates how the above PDA computes on different input strings. The subscript from the step symbol ⊢ is here omitted.


PDA and context-free languages

Every context-free grammar can be transformed into an equivalent nondeterministic pushdown automaton. The derivation process of the grammar is simulated in a leftmost way. Where the grammar rewrites a nonterminal, the PDA takes the topmost nonterminal from its stack and replaces it by the right-hand part of a grammatical rule (_expand_). Where the grammar generates a terminal symbol, the PDA reads a symbol from input when it is the topmost symbol on the stack (_match_). In a sense the stack of the PDA contains the unprocessed data of the grammar, corresponding to a pre-order traversal of a derivation tree.

Technically, given a context-free grammar, the PDA has a single state, 1, and its transition relation is constructed as follows.

1.  (1, ε, A, 1, α) for each rule A → α (_expand_)
2.  (1, a, a, 1, ε) for each terminal symbol a (_match_)

The PDA accepts by empty stack. Its initial stack symbol is the grammar's start symbol.

For a context-free grammar in Greibach normal form, defining (1,γ) ∈ δ(1,_a_,_A_) for each grammar rule _A_ → _a_γ also yields an equivalent nondeterministic pushdown automaton.[3]

The converse, finding a grammar for a given PDA, is not that easy. The trick is to code two states of the PDA into the nonterminals of the grammar.

THEOREM. For each pushdown automaton M one may construct a context-free grammar G such that N(M) = L(G).[4]

The language of strings accepted by a deterministic pushdown automaton is called a deterministic context-free language. Not all context-free languages are deterministic.{{#tag:ref|The set of even-length palindromes of bits can't be recognized by a deterministic PDA, but is a context-free language, with the grammar _S_ → ε | 0_S_0 | 1_S_1.[5]|group=note}} As a consequence, the DPDA is a strictly weaker variant of the PDA

A finite automaton with access to two stacks is a more powerful device, equivalent in power to a Turing machine.[6] A linear bounded automaton is a device which is more powerful than a pushdown automaton but less so than a Turing machine.{{#tag:ref|Linear bounded automata are acceptors for the class of context-sensitive languages,[7] which is a proper superclass of the context-free languages, and a proper subclass of Turing-recognizable (i.e. recursively enumerable) languages.[8]|group=note}}


Generalized pushdown automaton (GPDA)

A GPDA is a PDA which writes an entire string of some known length to the stack or removes an entire string from the stack in one step.

A GPDA is formally defined as a 6-tuple:

_M_ = (_Q_, _Σ_, _Γ_, _δ_, _q_₀, _F_)
where Q, Σ , Γ , q₀, and are defined the same way as a PDA.

 _δ_
: Q × Σ_(ϵ) × Γ^(*) → P(Q × Γ^(*)) is the transition function.

Computation rules for a GPDA are the same as a PDA except that the a_(i + 1)'s and b_(i + 1)'s are now strings instead of symbols.

GPDA's and PDA's are equivalent in that if a language is recognized by a PDA, it is also recognized by a GPDA and vice versa.

One can formulate an analytic proof for the equivalence of GPDA's and PDA's using the following simulation:

Let δ(q₁, w, x₁x₂ ⋅ x_(m)) → (q₂, y₁y₂...y_(n)) be a transition of the GPDA

where q₁, q₂ ∈ Q, w ∈ Σ_(ϵ), x₁, x₂, …, x_(m) ∈ Γ^(*), m ≥ 0, y₁, y₂, …, y_(n) ∈ Γ^(*), n ≥ 0.

Construct the following transitions for the PDA:

$$\begin{array}{lcl}
\delta^{'}(q_{1}, w, x_{1}) &\longrightarrow& (p_{1}, \epsilon)
\\
\delta^{'}(p_{1}, \epsilon, x_{2}) &\longrightarrow& (p_{2}, \epsilon)
\\
&\vdots&
\\
\delta^{'}(p_{m-1}, \epsilon, x_{m}) &\longrightarrow& (p_{m}, \epsilon)
\\
\delta^{'}(p_{m}, \epsilon, \epsilon ) &\longrightarrow& (p_{m+1}, y_{n})
\\
\delta^{'}(p_{m+1}, \epsilon, \epsilon ) &\longrightarrow& (p_{m+2}, y_{n-1})
\\
&\vdots&
\\
\delta^{'}(p_{m+n-1}, \epsilon, \epsilon ) &\longrightarrow& (q_{2}, y_{1})
\end{array}$$


Stack automaton

As a generalization of pushdown automata, Ginsburg, Greibach, and Harrison (1967) investigated STACK AUTOMATA, which may additionally step left or right in the input string (surrounded by special endmarker symbols to prevent slipping out), and step up or down in the stack in read-only mode.[9][10] A stack automaton is called _nonerasing_ if it never pops from the stack. The class of languages accepted by nondeterministic, nonerasing stack automata is _NSPACE_(_n_²), which is a superset of the context-sensitive languages.[11] The class of languages accepted by deterministic, nonerasing stack automata is _DSPACE_(_n_⋅log(_n_)).[12]


Alternating pushdown automata

An ALTERNATING PUSHDOWN AUTOMATON (APDA) is a pushdown automaton with a state set

-   Q = Q_(∃) ∪ Q_(∀) where Q_(∃) ∩ Q_(∀) = ∅.

States in Q_(∃) and Q_(∀) are called _existential_ resp. _universal_. In an existential state an APDA nondeterministically chooses the next state and accepts if _at least one_ of the resulting computations accepts. In a universal state APDA moves to all next states and accepts if _all_ the resulting computations accept.

The model was introduced by Chandra, Kozen and Stockmeyer.[13] Ladner, Lipton and Stockmeyer[14] proved that this model is equivalent to EXPTIME i.e. a language is accepted by some APDA iff it can be decided by an exponential-time algorithm.

Aizikowitz and Kaminski[15] introduced _synchronized alternating pushdown automata_ (SAPDA) that are equivalent to conjunctive grammars in the same way as nondeterministic PDA are equivalent to context-free grammars.


See also

-   Stack machine
-   Context-free grammar
-   Finite automaton
-   Counter automaton
-   Queue automaton


Notes


References

-   Section 2.2: Pushdown Automata, pp. 101–114.

-   Jean-Michel Autebert, Jean Berstel, Luc Boasson, Context-Free Languages and Push-Down Automata, in: G. Rozenberg, A. Salomaa (eds.), Handbook of Formal Languages, Vol. 1, Springer-Verlag, 1997, 111-174.


External links

-   JFLAP, simulator for several types of automata including nondeterministic pushdown automata
-   CoAn, another simulator for several machine types including nondeterministic pushdown automata (C++, Windows, Linux, MacOS)

Category:Automata (computation) Category:Models of computation

[1]

[2]

[3]

[4]

[5]  Here: Sect.6.4.3, p.249

[6]

[7]

[8]

[9]

[10]

[11]

[12]

[13]

[14]

[15]