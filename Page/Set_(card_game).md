Set-game-cards.png _SET_ is a real-time card game designed by Marsha Falco in 1974 and published by Set Enterprises in 1991. The deck consists of 81 unique cards that vary in four features across three possibilities: number of shapes (one, two, or three), shape (diamond, squiggle, stadium), shading (solid, striped, or open), and color (red, green, or purple).[1] Each possible combination of features (e.g., a card with [three] [striped] [green] [diamonds]) appears as a card precisely _once_ in the deck.

In the basic game, three cards make up a "set", which a player collects by making sure each of those three cards has exactly the same matching feature or else all have a different feature. If two cards match in one of the four features, but the third card does not, then the three cards are not a "set" and the player is penalized instead of being able to collect.


History

The game evolved out of a coding system that the designer used in her job as a geneticist.[2] _Set_ won American Mensa's _Mensa Select_ award in 1991 and placed 9th in the 1995 _Deutscher Spiele Preis_.


Games

Deskohraní_2012_-_6831.JPG Several games can be played with these cards, all involving the concept of a _set_. A set consists of three cards satisfying _all_ of these conditions:

-   They all have the same number or have three different numbers.
-   They all have the same shape or have three different shapes.
-   They all have the same shading or have three different shadings.
-   They all have the same color or have three different colors.

The rules of _Set_ are summarized by: If you can sort a group of three cards into "two of ____ and one of ____", then it is not a set.

For example, these three cards form a set:

-   One red striped diamond
-   Two red solid diamonds
-   Three red open diamonds

Given any two cards from the deck, there is one and only one other card that forms a set with them.

In the standard Set game, the dealer lays out cards on the table until either twelve are laid down or someone sees a set and calls "Set!". The player who called "Set" takes the cards in the set, and the dealer continues to deal out cards until twelve are on the table. A player who sees a set among the twelve cards calls "Set" and takes the three cards, and the dealer lays three more cards on the table. (To call out "set" and not pick one up quickly enough results in a penalty.) It is possible that there is no set among the twelve cards; in this case, the dealer deals out three more cards to make fifteen dealt cards, or eighteen or more, as necessary. This process of dealing by threes and finding sets continues until the deck is exhausted and there are no more sets on the table. At this point, whoever has collected the most sets wins.

Variants were included with the Set game that involve different mechanics to find sets, as well as different player interaction. Additional variants continue to be created by avid players of the game.[3][4]


Basic combinatorics of _Set_

-   Given any two cards, there is exactly one card that forms a set with those two cards. Therefore, the probability of producing a Set from 3 randomly drawn cards from a complete deck is 1/79.
-   A Cap set is a mathematical structure describing a Set layout in which no set may be taken. The largest group of cards that can be put together without creating a set is 20.[5][6] Such a group is called a maximal cap set . Donald Knuth found in 2001 that there are 682344 such cap sets of size 20 for the 81-card version of Set; under affine transformations on 4-dimensional finite space, they all reduce to essentially one cap set.
-   There are $\textstyle\frac{{81 \choose 2}}{3} = \frac{81 \times 80}{2 \times 3} = 1080$ unique sets.
-   The probability that a set will have d features different and 4 − d features the same is $\textstyle\frac{{4 \choose d}2^d}{80}$. (Note: The case where _d_ = 0 is impossible, since no two cards are identical.) Thus, 10% of possible sets differ in one feature, 30% in two features, 40% in three features, and 20% in all four features.

-   The number of different 12-card deals is $\textstyle{81 \choose 12} = \frac{81!}{12! 69!} =  70\,724\,320\,184\,700 \approx 7.07 \times 10^{13}$.
-   The odds against there being no Set in 12 cards when playing a game of Set start off at 30:1 for the first round. Then they quickly fall, and after about the 4th round they are 14:1 and for the next 20 rounds they slowly fall towards 13:1. So for most of the rounds played, the odds are between 14:1 and 13:1.[7]
-   The odds against there being no Set in 15 cards _when playing a game_ are 88:1.[8] (This is different from the odds against there being no Set in _any_ 15 cards (which is 2700:1), since during play, 15 cards are only shown when a group of 12 cards have no Set.)
-   Around 30% of all games always have a Set among the 12 cards, and thus never need to go to 15 cards.[9]
-   The average number of available Sets among 12 cards is $\textstyle{12 \choose 3} \cdot \frac{1}{79} \approx 2.78$ and among 15 cards $\textstyle{15 \choose 3} \cdot \frac{1}{79} \approx 5.76$.
-   If there were 26 sets picked from the deck, the last three cards would necessarily form another 27th set.


Complexity

Using a natural generalization of Set, where the number of properties and values vary, it was shown that determining whether a set exists from a collection of dealt cards is NP-complete.[10]


References


External links

-   Set Enterprises website
-   A (2002?) mathematic exploration of the game _Set_. Including 'How many cards may be laid without creating a set', as well as investigations of different types of set games (some in the Fano plane).
-   The Mathematics of the Card Game Set - Paola Y. Reyes - 2014 - Rhode Island College Honors Projects
-   -   There is a graphic computer solitaire version of Set written in tcl/Tk. The script can be found in a "tclapps" bundle at ActiveState Ftp://tcl.activestate.com/pub/tcl/nightly-cvs/ .
-   Sets, Planets, and Comets. An alternate, extended version of Set
-   Set Daily Puzzle

Category:Card games introduced in 1991 Category:Dedicated deck card games Category:Mensa Select winners

[1]

[2]

[3] http://magliery.com/Set/SetVariants.html

[4] http://www.thegamesjournal.com/rules/GetSet.shtml

[5] .

[6]

[7]

[8]

[9]

[10] http://pbg.cs.illinois.edu/papers/set.pdf