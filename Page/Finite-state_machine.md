A FINITE-STATE MACHINE (FSM) or FINITE-STATE AUTOMATON (FSA, plural: _automata_), FINITE AUTOMATON, or simply a STATE MACHINE, is a mathematical model of computation. It is an abstract machine that can be in exactly one of a finite number of _states_ at any given time. The FSM can change from one state to another in response to some external inputs; the change from one state to another is called a _transition_. An FSM is defined by a list of its states, its initial state, and the conditions for each transition. Finite state machines are of two types – deterministic finite state machines and non-deterministic finite state machines.[1] A deterministic finite-state machine can be constructed equivalent to any non-deterministic one.

The behavior of state machines can be observed in many devices in modern society that perform a predetermined sequence of actions depending on a sequence of events with which they are presented. Simple examples are vending machines, which dispense products when the proper combination of coins is deposited, elevators, whose sequence of stops is determined by the floors requested by riders, traffic lights, which change sequence when cars are waiting, and combination locks, which require the input of a sequence of numbers in the proper order.

The finite state machine has less computational power than some other models of computation such as the Turing machine.[2] The computational power distinction means there are computational tasks that a Turing machine can do but a FSM cannot. This is because a FSM's memory is limited by the number of states it has. FSMs are studied in the more general field of automata theory.


Example: coin-operated turnstile

Turnstile_state_machine_colored.svg Torniqueterevolution.jpg An example of a simple mechanism that can be modeled by a state machine is a turnstile.[3][4] A turnstile, used to control access to subways and amusement park rides, is a gate with three rotating arms at waist height, one across the entryway. Initially the arms are locked, blocking the entry, preventing patrons from passing through. Depositing a coin or token in a slot on the turnstile unlocks the arms, allowing a single customer to push through. After the customer passes through, the arms are locked again until another coin is inserted.

Considered as a state machine, the turnstile has two possible states: _LOCKED_ and _UNLOCKED_.[5] THERE ARE TWO POSSIBLE INPUTS THAT AFFECT ITS STATE: PUTTING A COIN IN THE SLOT (_COIN_) AND PUSHING THE ARM (_PUSH_). In the locked state, pushing on the arm has no effect; no matter how many times the input _PUSH_ is given, it stays in the locked state. Putting a coin in – that is, giving the machine a _COIN_ input – shifts the state from _LOCKED_ to _UNLOCKED_. In the unlocked state, putting additional coins in has no effect; that is, giving additional _COIN_ inputs does not change the state. However, a customer pushing through the arms, giving a _PUSH_ input, shifts the state back to _LOCKED_.

The turnstile state machine can be represented by a state transition table, showing for each possible state, the transitions between them (based upon the inputs given to the machine) and the outputs resulting from each input:



        {| class="wikitable"

! Current State ! Input ! Next State ! Output |- ! rowspan="2"|Locked | coin || Unlocked || Unlocks the turnstile so that the customer can push through. |- | push || Locked || None |- ! rowspan="2"|Unlocked | coin || Unlocked || None |- | push || Locked || When the customer has pushed through, locks the turnstile. |} The turnstile state machine can also be represented by a directed graph called a state diagram _(above)_. Each state is represented by a node (_circle_). Edges (_arrows_) show the transitions from one state to another. Each arrow is labeled with the input that triggers that transition. An input that doesn't cause a change of state (such as a _COIN_ input in the _UNLOCKED_ state) is represented by a circular arrow returning to the original state. The arrow into the _LOCKED_ node from the black dot indicates it is the initial state.


Concepts and terminology

A _state_ is a description of the status of a system that is waiting to execute a _transition_. A transition is a set of actions to be executed when a condition is fulfilled or when an event is received. For example, when using an audio system to listen to the radio (the system is in the "radio" state), receiving a "next" stimulus results in moving to the next station. When the system is in the "CD" state, the "next" stimulus results in moving to the next track. Identical stimuli trigger different actions depending on the current state.

In some finite-state machine representations, it is also possible to associate actions with a state:

-   an entry action: performed _when entering_ the state, and
-   an exit action: performed _when exiting_ the state.


Representations

UML_state_machine_Fig5.png SdlStateMachine.png Finite_state_machine_example_with_comments.svg

State/Event table

Several state transition table types are used. The most common representation is shown below: the combination of current state (e.g. B) and input (e.g. Y) shows the next state (e.g. C). The complete action's information is not directly described in the table and can only be added using footnotes. A FSM definition including the full actions information is possible using state tables (see also virtual finite-state machine).

+---------+---------+---------+---------+
|         | State A | State B | State C |
+=========+=========+=========+=========+
| Input X | …       | …       | …       |
+---------+---------+---------+---------+
| Input Y | …       | State C | …       |
+---------+---------+---------+---------+
| Input Z | …       | …       | …       |
+---------+---------+---------+---------+

: State transition table

UML state machines

The Unified Modeling Language has a notation for describing state machines. UML state machines overcome the limitations of traditional finite state machines while retaining their main benefits. UML state machines introduce the new concepts of hierarchically nested states and orthogonal regions, while extending the notion of actions. UML state machines have the characteristics of both Mealy machines and Moore machines. They support actions that depend on both the state of the system and the triggering event, as in Mealy machines, as well as entry and exit actions, which are associated with states rather than transitions, as in Moore machines.

SDL state machines

The Specification and Description Language is a standard from ITU that includes graphical symbols to describe actions in the transition:

-   send an event
-   receive an event
-   start a timer
-   cancel a timer
-   start another concurrent state machine
-   decision

SDL embeds basic data types called "Abstract Data Types", an action language, and an execution semantic in order to make the finite state machine executable.

Other state diagrams

There are a large number of variants to represent an FSM such as the one in figure 3.


Usage

In addition to their use in modeling reactive systems presented here, finite state machines are significant in many different areas, including electrical engineering, linguistics, computer science, philosophy, biology, mathematics, and logic. Finite state machines are a class of automata studied in automata theory and the theory of computation. In computer science, finite state machines are widely used in modeling of application behavior, design of hardware digital systems, software engineering, compilers, network protocols, and the study of computation and languages.


Classification

Finite state machines can be subdivided into transducers, acceptors, classifiers and sequencers.[6]

Acceptors (recognizers)

Fsm_parsing_word_nice.svg

ACCEPTORS (also called RECOGNIZERS and SEQUENCE DETECTORS), produce binary output, indicating whether or not the received input is accepted. Each state of an FSM is either "accepting" or "not accepting". Once all input has been received, if the current state is an accepting state, the input is accepted; otherwise it is rejected. As a rule, input is a sequence of symbols (characters); actions are not used. The example in figure 4 shows a finite state machine that accepts the string "nice". In this FSM, the only accepting state is state 7.

A (possibly infinite) set of symbol sequences, aka. formal language, is called a regular language if there is some Finite State Machine that accepts exactly that set. For example, the set of binary strings with an even number of zeroes is a regular language (cf. Fig. 5), while the set of all strings whose length is a prime number is not.[7]

A machine could also be described as defining a language, that would contain every string accepted by the machine but none of the rejected ones; that language is "accepted" by the machine. By definition, the languages accepted by FSMs are the regular languages—; a language is regular if there is some FSM that accepts it.

The problem of determining the language accepted by a given finite state acceptor is an instance of the algebraic path problem—itself a generalization of the shortest path problem to graphs with edges weighted by the elements of an (arbitrary) semiring.[8][9]

DFAexample.svg

The start state can also be an accepting state, in which case the automaton accepts the empty string.

An example of an accepting state appears in Fig.5: a deterministic finite automaton (DFA) that detects whether the binary input string contains an even number of 0s.

_S_₁ (which is also the start state) indicates the state at which an even number of 0s has been input. S₁ is therefore an accepting state. This machine will finish in an accept state, if the binary string contains an even number of 0s (including any binary string containing no 0s). Examples of strings accepted by this DFA are ε (the empty string), 1, 11, 11…, 00, 010, 1010, 10110, etc.

Classifiers

A CLASSIFIER is a generalization of a finite state machine that, similar to an acceptor, produces a single output on termination but has more than two terminal states.

Transducers

Fsm_Moore_model_door_control.svg

Transducers generate output based on a given input and/or a state using actions. They are used for control applications and in the field of computational linguistics.

In control applications, two types are distinguished:

Moore machine: The FSM uses only entry actions, i.e., output depends only on the state. The advantage of the Moore model is a simplification of the behaviour. Consider an elevator door. The state machine recognizes two commands: "command_open" and "command_close", which trigger state changes. The entry action (E:) in state "Opening" starts a motor opening the door, the entry action in state "Closing" starts a motor in the other direction closing the door. States "Opened" and "Closed" stop the motor when fully opened or closed. They signal to the outside world (e.g., to other state machines) the situation: "door is open" or "door is closed".

Fsm_mealy_model_door_control.svg

Mealy machine: The FSM also uses input actions, i.e., output depends on input and state. The use of a Mealy FSM leads often to a reduction of the number of states. The example in figure 7 shows a Mealy FSM implementing the same behaviour as in the Moore example (the behaviour depends on the implemented FSM execution model and will work, e.g., for virtual FSM but not for event-driven FSM). There are two input actions (I:): "start motor to close the door if command_close arrives" and "start motor in the other direction to open the door if command_open arrives". The "opening" and "closing" intermediate states are not shown.

Generators

SEQUENCERS, or GENERATORS, are a subclass of the acceptor and transducer types that have a single-letter input alphabet. They produce only one sequence which can be seen as an output sequence of acceptor or transducer outputs.

Determinism

A further distinction is between DETERMINISTIC (DFA) and NON-DETERMINISTIC (NFA, GNFA) automata. In a deterministic automaton, every state has exactly one transition for each possible input. In a non-deterministic automaton, an input can lead to one, more than one, or no transition for a given state. The powerset construction algorithm can transform any nondeterministic automaton into a (usually more complex) deterministic automaton with identical functionality.

A finite state machine with only one state is called a "combinatorial FSM". It only allows actions upon transition _into_ a state. This concept is useful in cases where a number of finite state machines are required to work together, and when it is convenient to consider a purely combinatorial part as a form of FSM to suit the design tools.[10]


Alternative semantics

There are other sets of semantics available to represent state machines. For example, there are tools for modeling and designing logic for embedded controllers.[11] They combine hierarchical state machines (which usually have more than one current state), flow graphs, and truth tables into one language, resulting in a different formalism and set of semantics.[12] These charts, like Harel's original state machines,[13] support hierarchically nested states, orthogonal regions, state actions, and transition actions.[14]


Mathematical model

In accordance with the general classification, the following formal definitions are found:

-   A _deterministic finite state machine_ or _acceptor deterministic finite state machine_ is a quintuple (Σ, S, s₀, δ, F), where:
    -   Σ is the input alphabet (a finite, non-empty set of symbols).
    -   S is a finite, non-empty set of states.
    -   s₀ is an initial state, an element of S.
    -   δ is the state-transition function: δ : S × Σ → S (in a nondeterministic finite automaton it would be δ : S × Σ → 𝒫(S), i.e., δ would return a set of states).
    -   F is the set of final states, a (possibly empty) subset of S.

For both deterministic and non-deterministic FSMs, it is conventional to allow δ to be a partial function, i.e. δ(q, x) does not have to be defined for every combination of $q \isin S$ and $x \isin \Sigma$. If an FSM M is in a state q, the next symbol is x and δ(q, x) is not defined, then M can announce an error (i.e. reject the input). This is useful in definitions of general state machines, but less useful when transforming the machine. Some algorithms in their default form may require total functions.

A finite state machine has the same computational power as a Turing machine that is restricted such that its head may only perform "read" operations, and always has to move from left to right. That is, each formal language accepted by a finite state machine is accepted by such a kind of restricted Turing machine, and vice versa.[15]

-   A _finite-state transducer_ is a sextuple (Σ, Γ, S, s₀, δ, ω), where:
    -   Σ is the input alphabet (a finite non-empty set of symbols).
    -   Γ is the output alphabet (a finite, non-empty set of symbols).
    -   S is a finite, non-empty set of states.
    -   s₀ is the initial state, an element of S. In a nondeterministic finite automaton, s₀ is a set of initial states.
    -   δ is the state-transition function: δ : S × Σ → S.
    -   ω is the output function.

If the output function is a function of a state and input alphabet (ω : S × Σ → Γ) that definition corresponds to the MEALY MODEL, and can be modelled as a Mealy machine. If the output function depends only on a state (ω : S → Γ) that definition corresponds to the MOORE MODEL, and can be modelled as a Moore machine. A finite-state machine with no output function at all is known as a semiautomaton or transition system.

If we disregard the first output symbol of a Moore machine, ω(s₀), then it can be readily converted to an output-equivalent Mealy machine by setting the output function of every Mealy transition (i.e. labeling every edge) with the output symbol given of the destination Moore state. The converse transformation is less straightforward because a Mealy machine state may have different output labels on its incoming transitions (edges). Every such state needs to be split in multiple Moore machine states, one for every incident output symbol.[16]


Optimization

Optimizing an FSM means finding a machine with the minimum number of states that performs the same function. The fastest known algorithm doing this is the Hopcroft minimization algorithm.[17][18] Other techniques include using an implication table, or the Moore reduction procedure. Additionally, acyclic FSAs can be minimized in linear time.[19]


Implementation

Hardware applications

4_bit_counter.svg for a 4-bit TTL counter, a type of state machine]] In a digital circuit, an FSM may be built using a programmable logic device, a programmable logic controller, logic gates and flip flops or relays. More specifically, a hardware implementation requires a register to store state variables, a block of combinational logic that determines the state transition, and a second block of combinational logic that determines the output of an FSM. One of the classic hardware implementations is the Richards controller.

In a _Medvedev machine_, the output is directly connected to the state flip-flops minimizing the time delay between flip-flops and output.[20][21]

Through state encoding for low power state machines may be optimized to minimize power consumption.

Software applications

The following concepts are commonly used to build software applications with finite state machines:

-   Automata-based programming
-   Event-driven finite-state machine
-   Virtual finite-state machine
-   State design pattern

Finite state machines and compilers

Finite automata are often used in the frontend of programming language compilers. Such a frontend may comprise several finite state machines that implement a lexical analyzer and a parser. Starting from a sequence of characters, the lexical analyzer builds a sequence of language tokens (such as reserved words, literals, and identifiers) from which the parser builds a syntax tree. The lexical analyzer and the parser handle the regular and context-free parts of the programming language's grammar.[22]


See also


References


Further reading

General

-   -   Wagner, F., "Modeling Software with Finite State Machines: A Practical Approach", Auerbach Publications, 2006, .
-   ITU-T, _Recommendation Z.100 Specification and Description Language (SDL)_
-   Samek, M., _Practical Statecharts in C/C++_, CMP Books, 2002, .
-   Samek, M., _Practical UML Statecharts in C/C++, 2nd Edition_, Newnes, 2008, .
-   Gardner, T., _Advanced State Management_, 2007
-   Cassandras, C., Lafortune, S., "Introduction to Discrete Event Systems". Kluwer, 1999, .
-   Timothy Kam, _Synthesis of Finite State Machines: Functional Optimization_. Kluwer Academic Publishers, Boston 1997,
-   Tiziano Villa, _Synthesis of Finite State Machines: Logic Optimization_. Kluwer Academic Publishers, Boston 1997,
-   Carroll, J., Long, D., _Theory of Finite Automata with an Introduction to Formal Languages_. Prentice Hall, Englewood Cliffs, 1989.
-   Kohavi, Z., _Switching and Finite Automata Theory_. McGraw-Hill, 1978.
-   Gill, A., _Introduction to the Theory of Finite-state Machines_. McGraw-Hill, 1962.
-   Ginsburg, S., _An Introduction to Mathematical Machine Theory_. Addison-Wesley, 1962.

Finite state machines (automata theory) in theoretical computer science

-   -   -   -   -   -   -   -   -   -   -   -   -   -   -   -   -   -

Abstract state machines in theoretical computer science

-

Machine learning using finite-state algorithms

-

Hardware engineering: state minimization and synthesis of sequential circuits

-   -   -   -

Finite Markov chain processes



        "We may think of a Markov chain as a process that moves successively through a set of states _s₁_, _s₂_, …, _s_(r)_. … if it is in state _s_(i)_ it moves on to the next stop to state _s_(j)_ with probability _p_(ij)_. These probabilities can be exhibited in the form of a transition matrix" (Kemeny (1959), p. 384)

Finite Markov-chain processes are also known as subshifts of finite type.

-   -   Chapter 6 "Finite Markov Chains".


External links

-   -   _Modeling a Simple AI behavior using a Finite State Machine_ Example of usage in Video Games
-   Free On-Line Dictionary of Computing description of Finite State Machines
-   NIST Dictionary of Algorithms and Data Structures description of Finite State Machines
-   A brief overview of state machine types, comparing theoretical aspects of Mealy, Moore, Harel & UML state machines.

Finite_automata Category:Behavior selection algorithms

[1]

[2]

[3]

[4]

[5]

[6]

[7]

[8]

[9] , p. 34

[10] Brutscheck, M., Berger, S., Franke, M., Schwarzbacher, A., Becker, S.: Structural Division Procedure for Efficient IC Analysis. IET Irish Signals and Systems Conference, (ISSC 2008), pp.18-23. Galway, Ireland, 18–19 June 2008. 1

[11]

[12]

[13] Harel, D. (1987). A Visual Formalism for Complex Systems. Science of Computer Programming, 231–274.

[14] Alur, R., Kanade, A., Ramesh, S., & Shashidhar, K. C. (2008). Symbolic analysis for improving simulation coverage of Simulink/Stateflow models. International Conference on Embedded Software (pp. 89–98). Atlanta, GA: ACM.

[15]

[16]

[17]

[18]

[19]

[20]

[21] Slides, _Synchronous Finite State Machines; Design and Behaviour_, University of Applied Sciences Hamburg, p.18

[22]