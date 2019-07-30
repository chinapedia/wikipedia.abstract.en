In probability theory, the SAMPLE SPACE (also called SAMPLE DESCRIPTION SPACE[1], EVENT SPACE[2] or POSSIBILITY SPACE[3]) of an experiment or random trial is the set of all possible outcomes or results of that experiment.[4] A sample space is usually denoted using set notation, and the possible ordered outcomes are listed as elements in the set. It is common to refer to a sample space by the labels _S_, Ω, or _U_ (for "universal set").

For example, if the experiment is tossing a coin, the sample space is typically the set {head, tail}. For tossing two coins, the corresponding sample space would be {(head,head), (head,tail), (tail,head), (tail,tail)}, commonly written {HH, HT, TH, TT}. If the sample space is unordered, it becomes .

For tossing a single six-sided die, the typical sample space is {1, 2, 3, 4, 5, 6} (in which the result of interest is the number of pips facing up).[5]

A well-defined sample space is one of three basic elements in a probabilistic model (a probability space); the other two are a well-defined set of possible events (a sigma-algebra) and a probability assigned to each event (a probability measure function).


Conditions of a sample space

[6] A set Ω with outcomes s₁, s₂, …, s_(n) (i.e. Ω = {s₁, s₂, …, s_(n)}) must meet some conditions in order to be a sample space:

-   The outcomes must be MUTUALLY EXCLUSIVE, i.e. if s_(j) takes place, then no other s_(i) will take place, ∀i, j = 1, 2, …, n i ≠ j.
-   The outcomes must be COLLECTIVELY EXHAUSTIVE, i.e., on every experiment (or random trial) there will always take place some outcome s_(i) ∈ Ω for i ∈ {1, 2, …, n}.
-   The sample space (Ω) must have the RIGHT GRANULARITY depending on what we are interested in. We must remove irrelevant information from the sample space. In other words, we must choose the right abstraction (forget some irrelevant information).

For instance, in the trial of tossing a coin, we could have as a sample space Ω₁ = {H, T}, where H stands for _heads_ and T for _tails_. Another possible sample space could be Ω₂ = {H&R, H&NR, T&R, T&NR}. Here, R stands for _rains_ and NR _not rains_. Obviously, Ω₁ is a better choice than Ω₂ as we do not care about how the weather affects the tossing of a coin.


Multiple sample spaces

For many experiments, there may be more than one plausible sample space available, depending on what result is of interest to the experimenter. For example, when drawing a card from a standard deck of fifty-two playing cards, one possibility for the sample space could be the various ranks (Ace through King), while another could be the suits (clubs, diamonds, hearts, or spades).[7][8] A more complete description of outcomes, however, could specify both the denomination and the suit, and a sample space describing each individual card can be constructed as the Cartesian product of the two sample spaces noted above (this space would contain fifty-two equally likely outcomes). Still other sample spaces are possible, such as {right-side up, up-side down} if some cards have been flipped when shuffling.


Equally likely outcomes

Some treatments of probability assume that the various outcomes of an experiment are always defined so as to be equally likely.[9] However, there are experiments that are not easily described by a sample space of equally likely outcomes—for example, if one were to toss a thumb tack many times and observe whether it landed with its point upward or downward, there is no symmetry to suggest that the two outcomes should be equally likely.

Though most random phenomena do not have equally likely outcomes, it can be helpful to define a sample space in such a way that outcomes are at least approximately equally likely, since this condition significantly simplifies the computation of probabilities for events within the sample space. If each individual outcome occurs with the same probability, then the probability of any event becomes simply:[10]

    $P(event) = \frac{\text{number of outcomes in event}}{\text{number of outcomes in sample space}}$

For example, if two dice are thrown to generate two uniformly distributed integers, D₁ and D₂, each in the range [1...6], the 36 ordered pairs (D₁ , D₂) constitute a sample space of equally likely events. In this case, the above formula applies, such that the probability of a certain sum, say D₁ + D₂ = 5 is easily shown to be 4/36, since 4 of the 36 outcomes produce 5 as a sum. On the other hand, the sample space of the 11 possible sums, {2, ...,12} are not equally likely outcomes, so the formula would give an incorrect result (1/11).

Simple random sample

In statistics, inferences are made about characteristics of a population by studying a sample of that population's individuals. In order to arrive at a sample that presents an unbiased estimate of the true characteristics of the population, statisticians often seek to study a simple random sample—that is, a sample in which every individual in the population is equally likely to be included.[11] The result of this is that every possible combination of individuals who could be chosen for the sample is also equally likely (that is, the space of simple random samples of a given size from a given population is composed of equally likely outcomes).


Infinitely large sample spaces

In an elementary approach to probability, any subset of the sample space is usually called an event. However, this gives rise to problems when the sample space is continuous, so that a more precise definition of an event is necessary. Under this definition only measurable subsets of the sample space, constituting a σ-algebra over the sample space itself, are considered events.


See also

-   Parameter space
-   Probability space
-   Space (mathematics)
-   Set (mathematics)
-   Event (probability theory)
-   σ-algebra


References


External links

-

Category:Experiment (probability theory)

[1]

[2]

[3]

[4]

[5]

[6]

[7]

[8]

[9]

[10]

[11]