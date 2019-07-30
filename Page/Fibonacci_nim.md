FIBONACCI NIM is a mathematical game, a variant of the game of nim. The game was first described by Michael J. Whinihan in 1963, who credits its invention to Robert E. Gaskell. It is called Fibonacci nim because the Fibonacci numbers feature heavily in its analysis.[1]


Rules

Fibonacci nim is played by two players, who alternate removing coins or other counters from a pile of coins. On the first move, a player is not allowed to take all of the coins, and on each subsequent move, the number of coins removed can be any number that is at most twice the previous move. According to the normal play convention, the player who takes the last coin wins.[2] Or according to the Misère game, the player who takes the last coin loses.

This game should be distinguished from a different game, also called Fibonacci nim, in which players may remove any Fibonacci number of coins on each move.[3][4]


Strategy

The optimal strategy in Fibonacci nim can be described in terms of the "quota" (the maximum number of coins that can currently be removed: all but one on the first move, and up to twice the previous move after that) and the Zeckendorf representation of the current number of coins as a sum of non-consecutive Fibonacci numbers. A given position is a losing position (for the player who is about to move) when is less than the smallest Fibonacci number in this representation, and a winning position otherwise. In a winning position, it is always a winning move to remove all the coins (if this is allowed) or otherwise to remove a number of coins equal to the smallest Fibonacci number in the Zeckendorf representation. When this is possible, the opposing player will necessarily be faced with a losing position, because the new quota will be smaller than the smallest Fibonacci number in the Zeckendorf representation of the remaining number of coins. From a losing position, any move will lead to a winning position.[5]

In particular, when there is a Fibonacci number of coins in the starting pile, the position is losing for the first player (and winning for the second player). However, when the starting number of coins is not a Fibonacci number, the first player can always win with optimal play.[6]

For the misere game of this game, if there are initially n coins, then the first player can remove n−1 coins and leave 1 coin to win.


Example

For example, suppose that there are initially 10 coins. The Zeckondorf representation is 10 = 8 + 2, so a winning move by the first player would be to remove the smallest Fibonacci number in this representation, 2, leaving 8 coins. The second player can remove at most 4 coins, but removing 3 or more would allow the first player to win immediately, so suppose that the second player takes 2 coins. This leaves 6 = 5 + 1 coins, and the first player again takes the smallest Fibonacci number in this representation, 1, leaving 5 coins. The second player could take two coins, but that would again lose immediately, so the second player takes only one coin, leaving 4 = 3 + 1. The first player again takes the smallest Fibonacci number in this representation, 1, leaving 3 coins. Now, regardless of whether the second player takes one or two coins, the first player will win the game in the next move.


Nim-values

Fibonacci nim is an impartial game in that the moves that are available from any position do not depend on the identity of the player who is about to move. Therefore, the Sprague–Grundy theorem can be used to analyze an extension of the game in which there are multiple piles of coins, and each move removes coins from only one pile (at most twice as many as the previous move from the same pile). For this extension, it is necessary to compute the nim-value of each pile; the value of the multi-pile game is the nim-sum of these nim-values. However, a complete description of these values is not known.[7]


References

Category:Combinatorial game theory Category:Fibonacci numbers Category:Mathematical games Category:Recreational mathematics

[1] .

[2] .

[3] . See "Research project: Fibonacci nim", p. 63.

[4] .

[5]

[6]

[7] .