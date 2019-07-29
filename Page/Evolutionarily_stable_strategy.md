An EVOLUTIONARILY STABLE STRATEGY (ESS) is a strategy (or set of strategies) which, if adopted by a population in a given environment, is impenetrable, meaning that it cannot be invaded by any alternative strategy (or strategies) that are initially rare. It is relevant in game theory, behavioural ecology, and evolutionary psychology. An ESS is an equilibrium refinement of the Nash equilibrium. It is a Nash equilibrium that is "evolutionarily" stable: once it is fixed in a population, natural selection alone is sufficient to prevent alternative (mutant) strategies from invading successfully. The theory is not intended to deal with the possibility of gross external changes to the environment that bring new selective forces to bear.

First published as a specific term in the 1972 book by John Maynard Smith,[1] the ESS is widely used in behavioural ecology and economics, and has been used in anthropology, evolutionary psychology, philosophy, and political science.


History

Evolutionarily stable strategies were defined and introduced by John Maynard Smith and George R. Price in a 1973 _Nature_ paper.[2] Such was the time taken in peer-reviewing the paper for _Nature_ that this was preceded by a 1972 essay by Maynard Smith in a book of essays titled _On Evolution_.[3] The 1972 essay is sometimes cited instead of the 1973 paper, but university libraries are much more likely to have copies of _Nature_. Papers in _Nature_ are usually short; in 1974, Maynard Smith published a longer paper in the _Journal of Theoretical Biology_.[4] Maynard Smith explains further in his 1982 book _Evolution and the Theory of Games_.[5] Sometimes these are cited instead. In fact, the ESS has become so central to game theory that often no citation is given, as the reader is assumed to be familiar with it.

Maynard Smith mathematically formalised a verbal argument made by Price, which he read while peer-reviewing Price's paper. When Maynard Smith realized that the somewhat disorganised Price was not ready to revise his article for publication, he offered to add Price as co-author.

The concept was derived from R. H. MacArthur[6] and W. D. Hamilton's[7] work on sex ratios, derived from Fisher's principle, especially Hamilton's (1967) concept of an unbeatable strategy. Maynard Smith was jointly awarded the 1999 Crafoord Prize for his development of the concept of evolutionarily stable strategies and the application of game theory to the evolution of behaviour.[8]

Uses of ESS:

-   The ESS was a major element used to analyze evolution in Richard Dawkins' bestselling 1976 book _The Selfish Gene_.
-   The ESS was first used in the social sciences by Robert Axelrod in his 1984 book _The Evolution of Cooperation_. Since then, it has been widely used in the social sciences, including anthropology, economics, philosophy, and political science.
-   In the social sciences, the primary interest is not in an ESS as the end of biological evolution, but as an end point in cultural evolution or individual learning.[9]
-   In evolutionary psychology, ESS is used primarily as a model for human biological evolution.


Motivation

The Nash equilibrium is the traditional solution concept in game theory. It depends on the cognitive abilities of the players. It is assumed that players are aware of the structure of the game and consciously try to predict the moves of their opponents and to maximize their own payoffs. In addition, it is presumed that all the players know this (see common knowledge). These assumptions are then used to explain why players choose Nash equilibrium strategies.

Evolutionarily stable strategies are motivated entirely differently. Here, it is presumed that the players' strategies are biologically encoded and heritable. Individuals have no control over their strategy and need not be aware of the game. They reproduce and are subject to the forces of natural selection, with the payoffs of the game representing reproductive success (biological fitness). It is imagined that alternative strategies of the game occasionally occur, via a process like mutation. To be an ESS, a strategy must be resistant to these alternatives.

Given the radically different motivating assumptions, it may come as a surprise that ESSes and Nash equilibria often coincide. In fact, every ESS corresponds to a Nash equilibrium, but some Nash equilibria are not ESSes.


Nash equilibrium

An ESS is a refined or modified form of a Nash equilibrium. (See the next section for examples which contrast the two.) In a Nash equilibrium, if all players adopt their respective parts, no player can _benefit_ by switching to any alternative strategy. In a two player game, it is a strategy pair. Let E(_S_,_T_) represent the payoff for playing strategy _S_ against strategy _T_. The strategy pair (_S_, _S_) is a Nash equilibrium in a two player game if and only if this is true for both players and for all _T_≠_S_:

    E(_S_,_S_) ≥ E(_T_,_S_)

In this definition, strategy _T_ can be a neutral alternative to _S_ (scoring equally well, but not better). A Nash equilibrium is presumed to be stable even if _T_ scores equally, on the assumption that there is no long-term incentive for players to adopt _T_ instead of _S_. This fact represents the point of departure of the ESS.

Maynard Smith and Price[10] specify two conditions for a strategy _S_ to be an ESS. For all _T_≠_S_, either

1.  E(_S_,_S_) > E(_T_,_S_), OR
2.  E(_S_,_S_) = E(_T_,_S_) and E(_S_,_T_) > E(_T_,_T_)

The first condition is sometimes called a _strict_ Nash equilibrium.[11] The second is sometimes called "Maynard Smith's second condition". The second condition means that although strategy _T_ is neutral with respect to the payoff against strategy _S_, the population of players who continue to play strategy _S_ has an advantage when playing against _T_.

There is also an alternative, stronger definition of ESS, due to Thomas.[12] This places a different emphasis on the role of the Nash equilibrium concept in the ESS concept. Following the terminology given in the first definition above, this definition requires that for all _T_≠_S_

1.  E(_S_,_S_) ≥ E(_T_,_S_), AND
2.  E(_S_,_T_) > E(_T_,_T_)

In this formulation, the first condition specifies that the strategy is a Nash equilibrium, and the second specifies that Maynard Smith's second condition is met. Note that the two definitions are not precisely equivalent: for example, each pure strategy in the coordination game below is an ESS by the first definition but not the second.

In words, this definition looks like this: The payoff of the first player when both players play strategy S is higher than (or equal to) the payoff of the first player when he changes to another strategy T and the second player keeps his strategy S _and_ the payoff of the first player when only his opponent changes his strategy to T is higher than his payoff in case that both of players change their strategies to T.

This formulation more clearly highlights the role of the Nash equilibrium condition in the ESS. It also allows for a natural definition of related concepts such as a weak ESS or an evolutionarily stable set.[13]

Examples of differences between Nash equilibria and ESSes

  --------------------------------------------- ---------------------------------------------------------------------------------------------------------------- -------------------------------------------- --------------------------------------------------------------------------------------
  {{Payoff matrix | Name = Prisoner's Dilemma   2L = Cooperate | 2R = Defect | 1U = Cooperate | UL = 3, 3 | UR = 1, 4 | 1D = Defect | DL = 4, 1 | DR = 2, 2 }}   {{Payoff matrix | Name = Harm thy neighbor   2L = A | 2R = B | 1U = A | UL = 2, 2 | UR = 1, 2 | 1D = B | DL = 2, 1 | DR = 2, 2 }}
  --------------------------------------------- ---------------------------------------------------------------------------------------------------------------- -------------------------------------------- --------------------------------------------------------------------------------------

In most simple games, the ESSes and Nash equilibria coincide perfectly. For instance, in the prisoner's dilemma there is only one Nash equilibrium, and its strategy (_Defect_) is also an ESS.

Some games may have Nash equilibria that are not ESSes. For example, in harm thy neighbor (whose payoff matrix is shown here) both (_A_, _A_) and (_B_, _B_) are Nash equilibria, since players cannot do better by switching away from either. However, only _B_ is an ESS (and a strong Nash). _A_ is not an ESS, so _B_ can neutrally invade a population of _A_ strategists and predominate, because _B_ scores higher against _B_ than _A_ does against _B_. This dynamic is captured by Maynard Smith's second condition, since E(_A_, _A_) = E(_B_, _A_), but it is not the case that E(_A_,_B_) > E(_B_,_B_).

  ---------------------------------------- -------------------------------------------------------------------------------------- ---------------------------------- ----------------------------------------------------------------------------------------------------------
  {{Payoff matrix | Name = Harm everyone   2L = C | 2R = D | 1U = C | UL = 2, 2 | UR = 1, 2 | 1D = D | DL = 2, 1 | DR = 0, 0 }}   {{Payoff matrix | Name = Chicken   2L = Swerve | 2R = Stay | 1U = Swerve | UL = 0,0 | UR = −1,+1 | 1D = Stay | DL = +1,−1 | DR = −20,−20 }}
  ---------------------------------------- -------------------------------------------------------------------------------------- ---------------------------------- ----------------------------------------------------------------------------------------------------------

Nash equilibria with equally scoring alternatives can be ESSes. For example, in the game _Harm everyone_, _C_ is an ESS because it satisfies Maynard Smith's second condition. _D_ strategists may temporarily invade a population of _C_ strategists by scoring equally well against _C_, but they pay a price when they begin to play against each other; _C_ scores better against _D_ than does _D_. So here although E(_C_, _C_) = E(_D_, _C_), it is also the case that E(_C_,_D_) > E(_D_,_D_). As a result, _C_ is an ESS.

Even if a game has pure strategy Nash equilibria, it might be that none of those pure strategies are ESS. Consider the Game of chicken. There are two pure strategy Nash equilibria in this game (_Swerve_, _Stay_) and (_Stay_, _Swerve_). However, in the absence of an uncorrelated asymmetry, neither _Swerve_ nor _Stay_ are ESSes. There is a third Nash equilibrium, a mixed strategy which is an ESS for this game (see Hawk-dove game and Best response for explanation).

This last example points to an important difference between Nash equilibria and ESS. Nash equilibria are defined on _strategy sets_ (a specification of a strategy for each player), while ESS are defined in terms of strategies themselves. The equilibria defined by ESS must always be symmetric, and thus have fewer equilibrium points.


Vs. evolutionarily stable state

In population biology, the two concepts of an _evolutionarily stable strategy_ (ESS) and an _evolutionarily stable state_ are closely linked but describe different situations.

In an evolutionarily stable _strategy,_ if all the members of a population adopt it, no mutant strategy can invade.[14] Once virtually all members of the population use this strategy, there is no 'rational' alternative. ESS is part of classical game theory.

In an evolutionarily stable _state,_ a population's genetic composition is restored by selection after a disturbance, if the disturbance is not too large. An evolutionarily stable state is a dynamic property of a population that returns to using a strategy, or mix of strategies, if it is perturbed from that initial state. It is part of population genetics, dynamical system, or evolutionary game theory. This is now called convergent stability.[15]

B. Thomas (1984) applies the term ESS to an individual strategy which may be mixed, and evolutionarily stable population state to a population mixture of pure strategies which may be formally equivalent to the mixed ESS.[16]

Whether a population is evolutionarily stable does not relate to its genetic diversity: it can be genetically monomorphic or polymorphic.[17]


Stochastic ESS

In the classic definition of an ESS, no mutant strategy can invade. In finite populations, any mutant could in principle invade, albeit at low probability, implying that no ESS can exist. In a finite population, an ESS can instead be defined as a strategy which, should it become invaded by a new mutant strategy with probability p, would be able to counterinvade from a single starting individual with probability >p, as illustrated by the evolution of bet-hedging.[18]


Prisoner's dilemma

A common model of altruism and social cooperation is the Prisoner's dilemma. Here a group of players would collectively be better off if they could play _Cooperate_, but since _Defect_ fares better each individual player has an incentive to play _Defect_. One solution to this problem is to introduce the possibility of retaliation by having individuals play the game repeatedly against the same player. In the so-called _iterated_ Prisoner's dilemma, the same two individuals play the prisoner's dilemma over and over. While the Prisoner's dilemma has only two strategies (_Cooperate_ and _Defect_), the iterated Prisoner's dilemma has a huge number of possible strategies. Since an individual can have different contingency plan for each history and the game may be repeated an indefinite number of times, there may in fact be an infinite number of such contingency plans.

Three simple contingency plans which have received substantial attention are _Always Defect_, _Always Cooperate_, and _Tit for Tat_. The first two strategies do the same thing regardless of the other player's actions, while the latter responds on the next round by doing what was done to it on the previous round—it responds to _Cooperate_ with _Cooperate_ and _Defect_ with _Defect_.

If the entire population plays _Tit-for-Tat_ and a mutant arises who plays _Always Defect_, _Tit-for-Tat_ will outperform _Always Defect_. If the population of the mutant becomes too large — the percentage of the mutant will be kept small. _Tit for Tat_ is therefore an ESS, _with respect to ONLY these two strategies_. On the other hand, an island of _Always Defect_ players will be stable against the invasion of a few _Tit-for-Tat_ players, but not against a large number of them.[19] If we introduce _Always Cooperate_, a population of _Tit-for-Tat_ is no longer an ESS. Since a population of _Tit-for-Tat_ players always cooperates, the strategy _Always Cooperate_ behaves identically in this population. As a result, a mutant who plays _Always Cooperate_ will not be eliminated. However, even though a population of _Always Cooperate_ and _Tit-for-Tat_ can coexist, if there is a small percentage of the population that is _Always Defect_, the selective pressure is against _Always Cooperate_, and in favour of _Tit-for-Tat_. This is due to the lower payoffs of cooperating than those of defecting in case the opponent defects.

This demonstrates the difficulties in applying the formal definition of an ESS to games with large strategy spaces, and has motivated some to consider alternatives.


Human behavior

The fields of sociobiology and evolutionary psychology attempt to explain animal and human behavior and social structures, largely in terms of evolutionarily stable strategies. Sociopathy (chronic antisocial or criminal behavior) may be a result of a combination of two such strategies.[20]

Evolutionarily stable strategies were originally considered for biological evolution, but they can apply to other contexts. In fact, there are stable states for a large class of adaptive dynamics. As a result, they can be used to explain human behaviours that lack any genetic influences.


See also

-   Antipredator adaptation
-   Behavioral ecology
-   Evolutionary psychology
-   Fitness landscape
-   Hawk-Dove game
-   Koinophilia
-   Sociobiology
-   War of attrition (game)


References


Further reading

-   -   . An 88-page mathematical introduction; see Section 3.8. Free online at many universities.

-   Parker, G. A. (1984) Evolutionary stable strategies. In _Behavioural Ecology: an Evolutionary Approach_ (2nd ed) Krebs, J. R. & Davies N.B., eds. pp 30–61. Blackwell, Oxford.
-   . A comprehensive reference from a computational perspective; see Section 7.7. Downloadable free online.

-   Maynard Smith, John. (1982) _Evolution and the Theory of Games_. . Classic reference.


External links

-   Evolutionarily Stable Strategies at Animal Behavior: An Online Textbook by Michael D. Breed.
-   Game Theory and Evolutionarily Stable Strategies, Kenneth N. Prestwich's site at College of the Holy Cross.
-   Evolutionarily stable strategies knol

Category:Articles with inconsistent citation formats Category:Game theory equilibrium concepts Category:Evolutionary game theory

[1]

[2]

[3]

[4]

[5]

[6]

[7]

[8] Press release for the 1999 Crafoord Prize

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