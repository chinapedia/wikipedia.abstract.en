In artificial intelligence, GENETIC PROGRAMMING (GP) is a technique of evolving programs, starting from a population of unfit (usually random) programs, fit for a particular task by applying operations analogous to natural genetic processes to the population of programs. It is essentially a heuristic search technique often described as 'hill climbing', i.e. searching for an optimal or at least suitable program among the space of all programs.

The operations are: selection of the fittest programs for reproduction (crossover) and mutation according to a predefined fitness measure, usually proficiency at the desired task. The crossover operation involves swapping random parts of selected pairs (parents) to produce new and different offspring that become part of the new generation of programs. Mutation involves substitution of some random part of a program with some other random part of a program. - Some programs not selected for reproduction are copied from the current generation to the new generation. Then the selection and other operations are recursively applied to the new generation of programs.

Typically, members of each new generation are on average more fit than the members of the previous generation, and the best-of-generation program is often better than the best-of-generation programs from previous generations. Termination of the recursion is when some individual program reaches a predefined proficiency or fitness level.

It may and often does happen that a particular run of the algorithm results in premature convergence to some local maximum which is not a globally optimal or even good solution. Multiple runs (dozens to hundreds) are usually necessary to produce a very good result. It may also be necessary to increase the starting population size and variability of the individuals to avoid pathologies.

The technique, embodied in a system called the 'invention machine' was patented by Stanford University computer scientist John Koza in 1988.


History

The first record of the proposal to evolve programs is probably that of Alan Turing in 1950.[1] There was a gap of 25 years before the publication of John Holland's 'Adaptation in Natural and Artificial Systems' laid out the theoretical and empirical foundations of the science. In 1981, Richard Forsyth demonstrated the successful evolution of small programs, represented as trees, to perform classification of crime scene evidence for the UK Home Office.[2]

Although the idea of evolving programs, initially in the computer language Lisp, was current amongst John Holland’s students[3], it was not until they organised the first Genetic Algorithms conference in Pittsburgh that Nichael Cramer[4] published evolved programs in two specially designed languages. In 1988 John Koza (also a PhD student of John Holland) patented his invention of a GA for program evolution[5]. This was followed by publication in the International Joint Conference on Artificial Intelligence IJCAI-89[6].

Koza followed this with 205 publications on “Genetic Programming” (GP), name coined by David Goldberg, also a PhD student of John Holland[7]. However, it is the series of 4 books by Koza, starting in 1992[8] with accompanying videos[9], that really established GP. Subsequently, there was an enormous expansion of the number of publications with the Genetic Programming Bibliography, surpassing 10,000 entries[10]. In 2010, Koza[11] listed 77 results where Genetic Programming was human competitive.

In 1996 Koza started the annual Genetic Programming conference[12] which was followed in 1998 by the annual EuroGP conference[13], and the first book[14] in a GP series edited by Koza. 1998 also saw the first GP textbook[15]. GP continued to flourish, leading to the first specialist GP journal[16] and three years later (2003) the annual Genetic Programming Theory and Practice (GPTP) workshop was established by Rick Riolo[17][18]. Genetic Programming papers continue to be published at a diversity of conferences and associated journals. Today there are nineteen GP books including several for students[19].


Foundational Work in GP

Early work that set the stage for current genetic programming research topics and applications is diverse, and includes software synthesis and repair, predictive modeling, data mining[20], financial modeling[21], soft sensors[22], design[23], and image processing[24]. Applications in some areas, such as design, often make use of intermediate representations[25], such as Fred Gruau’s cellular encoding[26]. Industrial uptake has been significant in several areas including finance, the chemical industry, bioinformatics[27][28] and the steel industry[29].


Methods

Program representation

.]]

GP evolves computer programs, traditionally represented in memory as tree structures.[30] Trees can be easily evaluated in a recursive manner. Every tree node has an operator function and every terminal node has an operand, making mathematical expressions easy to evolve and evaluate. Thus traditionally GP favors the use of programming languages that naturally embody tree structures (for example, Lisp; other functional programming languages are also suitable).

Non-tree representations have been suggested and successfully implemented, such as linear genetic programming which suits the more traditional imperative languages [see, for example, Banzhaf _et al._ (1998)].[31] The commercial GP software _Discipulus_ uses automatic induction of binary machine code ("AIM")[32] to achieve better performance. _µGP_[33] uses directed multigraphs to generate programs that fully exploit the syntax of a given assembly language. Other program representations on which significant research and development have been conducted include programs for stack-based virtual machines[34][35][36], and sequences of integers that are mapped to arbitrary programming languages via grammars[37][38]. Cartesian genetic programming is another form of GP, which uses a graph representation instead of the usual tree based representation to encode computer programs.

Most representations have structurally noneffective code (introns). Such non-coding genes may seem to be useless, because they have no effect on the performance of any one individual. However, they alter the probabilities of generating different offspring under the variation operators, and thus alter the individual's variational properties. Experiments seem to show faster convergence when using program representations that allow such non-coding genes, compared to program representations that do not have any non-coding genes.[39][40]

Selection

Selection is a process whereby certain individuals are selected from the current generation that would serve as parents for the next generation. The individuals are selected probabilistically such that the better performing individuals have a higher chance of getting selected[41]. The most commonly used selection method in GP is tournament selection, although other methods such as fitness proportionate selection, lexicase selection[42], and others have been demonstrated to perform better for many GP problems.

Elitism, which involves seeding the next generation with the best individual (or best _n_ individuals) from the current generation, is a technique sometimes employed to avoid regression.

Crossover

Various genetic operators (i.e., crossover and mutation) are applied to the individuals selected in the selection step described above to breed new individuals. The rate at which these operators are applied determine the diversity in the population.

Mutation


Applications

GP has been successfully used as an automatic programming tool, a machine learning tool and an automatic problem-solving engine[43]. GP is especially useful in the domains where the exact form of the solution is not known in advance or an approximates solution is acceptable (possibly because finding the exact solution is very difficult). Some of the applications of GP are curve fitting, data modeling, Symbolic regression, feature selection, classification, etc. John R. Koza mentions 76 instances where Genetic Programming has been able to produce results that are competitive with human-produced results (called Human-competitive results)[44]. Since 2004, the annual Genetic and Evolutionary Computation Conference (GECCO) holds Human Competitive Awards (called Humies) competition[45], where cash awards are presented to human-competitive results produced by any form of genetic and evolutionary computation. GP has won many awards in this competition over the years.


Meta-genetic programming

Meta-genetic programming is the proposed meta learning technique of evolving a genetic programming system using genetic programming itself. It suggests that chromosomes, crossover, and mutation were themselves evolved, therefore like their real life counterparts should be allowed to change on their own rather than being determined by a human programmer. Meta-GP was formally proposed by Jürgen Schmidhuber in 1987[46]. Doug Lenat's Eurisko is an earlier effort that may be the same technique. It is a recursive but terminating algorithm, allowing it to avoid infinite recursion. In the "autoconstructive evolution" approach to meta-genetic programming, the methods for the production and variation of offspring are encoded within the evolving programs themselves, and programs are executed to produce new programs to be added to the population.[47][48]

Critics of this idea often say this approach is overly broad in scope. However, it might be possible to constrain the fitness criterion onto a general class of results, and so obtain an evolved GP that would more efficiently produce results for sub-classes. This might take the form of a meta evolved GP for producing human walking algorithms which is then used to evolve human running, jumping, etc. The fitness criterion applied to the meta GP would simply be one of efficiency.


See also

-   Bio-inspired computing
-   Covariance Matrix Adaptation Evolution Strategy (CMA-ES)
-   Fitness approximation
-   Gene expression programming
-   Genetic improvement
-   Genetic representation
-   Grammatical evolution
-   Inductive programming
-   Linear genetic programming
-   Multi expression programming
-   Propagation of schema


References


External links

-   Aymen S Saket & Mark C Sinclair
-   _Genetic Programming and Evolvable Machines_, a journal
-   _Evo2 for genetic programming_
-   GP bibliography
-   The Hitch-Hiker's Guide to Evolutionary Computation
-   Riccardo Poli, William B. Langdon,Nicholas F. McPhee, John R. Koza, "A Field Guide to Genetic Programming" (2008)
-   Genetic Programming, a community maintained resource

Category:Genetic algorithms Genetic_programming

[1]

[2]

[3] A personal communication with Tom Westerdale

[4]

[5]

[6]

[7] Goldberg. D.E. (1983), Computer-aided gas pipeline operation using genetic algorithms and rule learning. Dissertation presented to the University of Michigan at Ann Arbor, Michigan, in partial fulfillment of the requirements for Ph.D.

[8]

[9]

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

[26]

[27]

[28]

[29]

[30] Nichael L. Cramer "A Representation for the Adaptive Generation of Simple Sequential Programs".

[31] Garnett Wilson and Wolfgang Banzhaf. "A Comparison of Cartesian Genetic Programming and Linear Genetic Programming".

[32] (Peter Nordin, 1997, Banzhaf et al., 1998, Section 11.6.2-11.6.3)

[33]

[34]

[35]

[36]

[37]

[38]

[39] Julian F. Miller. "Cartesian Genetic Programming". p. 19.

[40] Janet Clegg; James Alfred Walker; Julian Francis Miller. A New Crossover Technique for Cartesian Genetic Programming". 2007.

[41]

[42]

[43]

[44]

[45]

[46]

[47]

[48]