The QUASISPECIES MODEL is a description of the process of the Darwinian evolution of certain self-replicating entities within the framework of physical chemistry. A quasispecies is a large group or "CLOUD" of related genotypes that exist in an environment of high mutation rate (at stationary state[1]), where a large fraction of offspring are expected to contain one or more mutations relative to the parent. This is in contrast to a species, which from an evolutionary perspective is a more-or-less stable single genotype, most of the offspring of which will be genetically accurate copies.[2]

It is useful mainly in providing a qualitative understanding of the evolutionary processes of self-replicating macromolecules such as RNA or DNA or simple asexual organisms such as bacteria or viruses (see also viral quasispecies), and is helpful in explaining something of the early stages of the origin of life. Quantitative predictions based on this model are difficult because the parameters that serve as its input are impossible to obtain from actual biological systems. The quasispecies model was put forward by Manfred Eigen and Peter Schuster[3] based on initial work done by Eigen.[4]


Simplified explanation

When evolutionary biologists describe competition between species, they generally assume that each species is a single genotype whose descendants are mostly accurate copies. (Such genotypes are said to have a high reproductive _fidelity_.) Evolutionary, we are interested in the behavior and fitness of that one species or genotype over time.[5]

Some organisms or genotypes, however, may exist in circumstances of low fidelity, where most descendants contain one or more mutations. A group of such genotypes is constantly changing, so discussions of which single genotype is the most fit become meaningless. Importantly, if many closely related genotypes are only one mutation away from each other, then genotypes in the group can mutate back and forth into each other. For example, with one mutation per generation, a child of the sequence AGGT could be AGTT, and a grandchild could be AGGT again. Thus we can envision a "CLOUD" of related genotypes that is rapidly mutating, with sequences going back and forth among different points in the cloud. Though the proper definition is mathematical, that cloud, roughly speaking, is a quasispecies.

Quasispecies behavior exists for large numbers of individuals existing at a certain (high) range of mutation rates.[6]

Quasispecies, fitness, and evolutionary selection

In a species, though reproduction may be mostly accurate, periodic mutations will give rise to one or more competing genotypes. If a mutation results in greater replication and survival, the mutant genotype may out-compete the parent genotype and come to dominate the species. Thus, the individual genotypes (or species) may be seen as the units on which selection acts and biologists will often speak of a single genotype's fitness.[7]

In a quasispecies, however, mutations are ubiquitous and so the fitness of an individual genotype becomes meaningless: if one particular mutation generates a boost in reproductive success, it can't amount to much because that genotype's offspring are unlikely to be accurate copies with the same properties. Instead, what matters is the _connectedness_ of the cloud. For example, the sequence AGGT has 12 (3+3+3+3) possible single point mutants AGGA, AGGG, and so on. If 10 of those mutants are viable genotypes that may reproduce (and some of whose offspring or grandchildren may mutate back into AGGT again), we would consider that sequence a well-connected node in the cloud. If instead only two of those mutants are viable, the rest being lethal mutations, then that sequence is poorly connected and most of its descendants will not reproduce. The analog of fitness for a quasispecies is the tendency of nearby relatives within the cloud to be well-connected, meaning that more of the mutant descendants will be viable and give rise to further descendants within the cloud.[8]

When the fitness of a single genotype becomes meaningless because of the high rate of mutations, the cloud as a whole or quasispecies becomes the natural unit of selection.

Application to biological research

Quasispecies represents the evolution of high-mutation-rate viruses such as HIV and sometimes single genes or molecules within the genomes of other organisms.[9][10][11] Quasispecies models have also been proposed by Jose Fontanari and Emmanuel David Tannenbaum to model the evolution of sexual reproduction.[12] Quasispecies was also shown in compositional replicators (based on the Gard model for abiogenesis)[13] and was also suggested to be applicable to describe cell's replication, which amongst other things requires the maintenance and evolution of the internal composition of the parent and bud.


Formal background

The model rests on four assumptions[14]:

1.  The self-replicating entities can be represented as sequences composed of a small number of building blocks—for example, sequences of RNA consisting of the four bases adenine, guanine, cytosine, and uracil.
2.  New sequences enter the system solely as the result of a copy process, either correct or erroneous, of other sequences that are already present.
3.  The substrates, or raw materials, necessary for ongoing replication are always present in sufficient quantity. Excess sequences are washed away in an outgoing flux.
4.  Sequences may decay into their building blocks. The probability of decay does not depend on the sequences' age; old sequences are just as likely to decay as young sequences.

In the quasispecies model, mutations occur through errors made in the process of copying already existing sequences. Further, selection arises because different types of sequences tend to replicate at different rates, which leads to the suppression of sequences that replicate more slowly in favor of sequences that replicate faster. However, the quasispecies model does not predict the ultimate extinction of all but the fastest replicating sequence. Although the sequences that replicate more slowly cannot sustain their abundance level by themselves, they are constantly replenished as sequences that replicate faster mutate into them. At equilibrium, removal of slowly replicating sequences due to decay or outflow is balanced by replenishing, so that even relatively slowly replicating sequences can remain present in finite abundance[15].

Due to the ongoing production of mutant sequences, selection does not act on single sequences, but on mutational "clouds" of closely related sequences, referred to as _quasispecies_. In other words, the evolutionary success of a particular sequence depends not only on its own replication rate, but also on the replication rates of the mutant sequences it produces, and on the replication rates of the sequences of which it is a mutant. As a consequence, the sequence that replicates fastest may even disappear completely in selection-mutation equilibrium, in favor of more slowly replicating sequences that are part of a quasispecies with a higher average growth rate.[16] Mutational clouds as predicted by the quasispecies model have been observed in RNA viruses and in _in vitro_ RNA replication.[17][18]

The mutation rate and the general fitness of the molecular sequences and their neighbors is crucial to the formation of a quasispecies. If the mutation rate is zero, there is no exchange by mutation, and each sequence is its own species. If the mutation rate is too high, exceeding what is known as the error threshold, the quasispecies will break down and be dispersed over the entire range of available sequences.[19]


Mathematical description

A simple mathematical model for a quasispecies is as follows:[20] let there be S possible sequences and let there be n_(i) organisms with sequence _i_. Let's say that each of these organisms asexually gives rise to A_(i) offspring. Some are duplicates of their parent, having sequence _i_, but some are mutant and have some other sequence. Let the mutation rate q_(ij) correspond to the probability that a _j_ type parent will produce an _i_ type organism. Then the expected fraction of offspring generated by _j_ type organisms that would be _i_ type organisms is w_(ij) = A_(j)q_(ij),

where ∑_(i)q_(ij) = 1.

Then the total number of _i_-type organisms after the first round of reproduction, given as n′_(i), is

_n_′_(_i_) = ∑_(_j_)_w__(_i__j_)_n__(_j_)

Sometimes a death rate term D_(i) is included so that:

_w__(_i__j_) = _A__(_j_)_q__(_i__j_) − _D__(_i_)_δ__(_i__j_)

where δ_(ij) is equal to 1 when i=j and is zero otherwise. Note that the _n-th_ generation can be found by just taking the _n-th_ power of W substituting it in place of W in the above formula.

This is just a system of linear equations. The usual way to solve such a system is to first diagonalize the W matrix. Its diagonal entries will be eigenvalues corresponding to certain linear combinations of certain subsets of sequences which will be eigenvectors of the W matrix. These subsets of sequences are the quasispecies. Assuming that the matrix W is a primitive matrix (irreducible and aperiodic), then after very many generations only the eigenvector with the largest eigenvalue will prevail, and it is this quasispecies that will eventually dominate. The components of this eigenvector give the relative abundance of each sequence at equilibrium.[21]

Note about primitive matrices

W being primitive means that for some integer n > 0, that the n^(th) power of W is > 0, i.e. all the entries are positive. If W is primitive then each type can, through a sequence of mutations (i.e. powers of W) mutate into all the other types after some number of generations. W is not primitive if it is periodic, where the population can perpetually cycle through different disjoint sets of compositions, or if it is reducible, where the dominant species (or quasispecies) that develops can depend on the initial population, as is the case in the simple example given below.

Alternative formulations

The quasispecies formulae may be expressed as a set of linear differential equations. If we consider the difference between the new state n′_(i) and the old state n_(i) to be the state change over one moment of time, then we can state that the time derivative of n_(i) is given by this difference, ṅ_(i) = n′_(i) − n_(i) we can write:

_ṅ__(_i_) = ∑_(_j_)_w__(_i__j_)_n__(_j_) − _n__(_i_)

The quasispecies equations are usually expressed in terms of concentrations x_(i) where

$$x_i\ \stackrel{\mathrm{def}}{=}\  \frac{n_i}{\sum_j n_j}$$
.

$$x'_i\ \stackrel{\mathrm{def}}{=}\  \frac{n'_i}{\sum_j n'_j}$$
.

The above equations for the quasispecies then become for the discrete version:

$$x'_i = \frac{\sum_j w_{ij}x_j}{\sum_{ij} w_{ij}x_j}$$

or, for the continuum version:

_ẋ__(_i_) = ∑_(_j_)_w__(_i__j_)_x__(_j_) − _x__(_i_)∑_(_i__j_)_w__(_i__j_)_x__(_j_).

Simple example

The quasispecies concept can be illustrated by a simple system consisting of 4 sequences. Sequences [0,0], [0,1], [1,0], and [1,1] are numbered 1, 2, 3, and 4, respectively. Let's say the [0,0] sequence never mutates and always produces a single offspring. Let's say the other 3 sequences all produce, on average, 1 − k replicas of themselves, and k of each of the other two types, where 0 ≤ k ≤ 1. The W matrix is then:

$$\mathbf{W}=
\begin{bmatrix}
1&0&0&0\\
0&1-k&k&k\\
0&k&1-k&k\\
0&k&k&1-k
\end{bmatrix}$$
.

The diagonalized matrix is:

$$\mathbf{W'}=
\begin{bmatrix}
1-2k&0&0&0\\
0&1-2k&0&0\\
0&0&1&0\\
0&0&0&1+k
\end{bmatrix}$$
.

And the eigenvectors corresponding to these eigenvalues are:

    {| class="wikitable"

|- !Eigenvalue !! Eigenvector |- |1-2k || [0,-1,0,1] |- | 1-2k || [0,-1,1,0] |- | 1 || [1,0,0,0] |- | 1+k || [0,1,1,1] |}

Only the eigenvalue 1 + k is more than unity. For the n-th generation, the corresponding eigenvalue will be (1 + k)^(n) and so will increase without bound as time goes by. This eigenvalue corresponds to the eigenvector [0,1,1,1], which represents the quasispecies consisting of sequences 2, 3, and 4, which will be present in equal numbers after a very long time. Since all population numbers must be positive, the first two quasispecies are not legitimate. The third quasispecies consists of only the non-mutating sequence 1. It's seen that even though sequence 1 is the most fit in the sense that it reproduces more of itself than any other sequence, the quasispecies consisting of the other three sequences will eventually dominate (assuming that the initial population was not homogeneous of the sequence 1 type).


References


Further reading

-   -

Category:Virology Category:Evolutionary biology Category:Microbial population biology Category:Evolutionary dynamics Category:Mathematical modeling

[1]

[2]

[3]

[4]

[5]

[6] Martinez, MA, Martus G, Capel E, Parera M, Franco S, Nevot M (2012) Quasispecies Dynamics of RNA Viruses. In: Viruses: Essential Agents of Life, Springer, Dordrecht, pp. 21-42.

[7]  Biology {{!}} Science|website=Khan Academy|language=en|access-date=2019-02-20}}

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