MINIMAX (sometimes MINMAX, MM[1] or SADDLE POINT[2]) is a decision rule used in artificial intelligence, decision theory, game theory, statistics and philosophy for _mini_mizing the possible loss for a worst case (_max_imum loss) scenario. When dealing with gains, it is referred to as "maximin"—to maximize the minimum gain. Originally formulated for two-player zero-sum game theory, covering both the cases where players take alternate moves and those where they make simultaneous moves, it has also been extended to more complex games and to general decision-making in the presence of uncertainty.


Game theory

In general games

The MAXIMIN VALUE of a player is the highest value that the player can be sure to get without knowing the actions of the other players; equivalently, it is the lowest value the other players can force the player to receive when they know the player's action. Its formal definition is:[3]

$$\underline{v_i} = \max_{a_i} \min_{a_{-i}} {v_i(a_i,a_{-i})}$$

Where:

-   is the index of the player of interest.

-    − i denotes all other players except player .
-   a_(i) is the action taken by player .
-   a_( − i) denotes the actions taken by all other players.
-   v_(i) is the value function of player .

Calculating the maximin value of a player is done in a worst-case approach: for each possible action of the player, we check all possible actions of the other players and determine the worst possible combination of actions—the one that gives player the smallest value. Then, we determine which action player can take in order to make sure that this smallest value is the highest possible.

For example, consider the following game for two players, where the first player ("row player") may choose any of three moves, labelled , , or , and the second player ("column" player) may choose either of two moves, or . The result of the combination of both moves is expressed in a payoff table:

+--+--------+-------+
|  |        |       |
+==+========+=======+
|  | 3,1    | 2,-20 |
+--+--------+-------+
|  | 5,0    | -10,1 |
+--+--------+-------+
|  | -100,2 | 4,4   |
+--+--------+-------+

(where the first number in each cell is the pay-out of the row player and the second number is the pay-out of the column player).

For the sake of example, we consider only pure strategies. Check each player in turn:

-   The row player can play , which guarantees him or her a payoff of at least (playing is risky since it can lead to payoff , and playing can result in a payoff of ). Hence: $\underline{v_{row}} = 2$.
-   The column player can play and secure a payoff of at least (playing puts him or her in the risk of getting  − 20). Hence: $\underline{v_{col}} = 0$.

If both players play their respective maximin strategies (T, L), the payoff vector is (3, 1).

The MINIMAX VALUE of a player is the smallest value that the other players can force the player to receive, without knowing the player's actions; equivalently, it is the largest value the player can be sure to get when he or she _knows_ the actions of the other players. Its formal definition is:[4]

$$\overline{v_i} = \min_{a_{-i}} \max_{a_i} {v_i(a_i,a_{-i})}$$

The definition is very similar to that of the maximin value—only the order of the maximum and minimum operators is inverse. In the above example:

-   The row player can get a maximum value of (if the other player plays ) or (if the other player plays ), so: $\overline{v_{row}} = 4$.
-   The column player can get a maximum value of (if the other player plays ), (if ) or (if ). Hence: $\overline{v_{col}} = 1$.

For every player , the maximin is at most the minimax:

$$\underline{v_i} \leq \overline{v_i}$$
Intuitively, in maximin the maximization comes before the minimization, so player tries to maximize their value before knowing what the others will do; in minimax the maximization comes after the minimization, so player is in a much better position—he or she maximizes his or her value knowing what the others did.

Another way to understand the _notation_ is by reading from right to left: when we write

$$\overline{v_i} = \min_{a_{-i}} \max_{a_i} {v_i(a_i,a_{-i})} = \min_{a_{-i}} \Big( \max_{a_i} {v_i(a_i,a_{-i})} \Big)$$
the initial set of outcomes v_(i)(a_(i), a_( − i)) depends on both a_(i) and a_( − i). We first _marginalize away_ a_(i) from v_(i)(a_(i), a_( − i)), by maximizing over a_(i) (for every possible value of a_( − i)) to yield a set of marginal outcomes v′_(i)(a_( − i)), which depends only on a_( − i). We then minimize over a_( − i) over these outcomes. (Conversely for maximin.)

Although it is always the case that $\underline{v_{row}} \leq \overline{v_{row}}$ and $\underline{v_{col}} \leq \overline{v_{col}}$, the payoff vector resulting from both players playing their minimax strategies, (2,  − 20) in the case of (T, R) or ( − 10, 1) in the case of (M, R), cannot similarly be ranked against the payoff vector (3, 1) resulting from both players playing their maximin strategy.

In zero-sum games

In two-player zero-sum games, the minimax solution is the same as the Nash equilibrium.

In the context of zero-sum games, the minimax theorem is equivalent to:[5]

  For every two-person, zero-sum game with finitely many strategies, there exists a value V and a mixed strategy for each player, such that

      (a) Given player 2's strategy, the best payoff possible for player 1 is V, and
      (b) Given player 1's strategy, the best payoff possible for player 2 is −V.

Equivalently, Player 1's strategy guarantees them a payoff of V regardless of Player 2's strategy, and similarly Player 2 can guarantee themselves a payoff of −V. The name minimax arises because each player minimizes the maximum payoff possible for the other—since the game is zero-sum, they also minimize their own maximum loss (i.e. maximize their minimum payoff). See also example of a game without a value.

Example

+--------------+--------------+--------------+--------------+
|              | B chooses B1 | B chooses B2 | B chooses B3 |
+==============+==============+==============+==============+
| A chooses A1 | +3           | −2           | +2           |
+--------------+--------------+--------------+--------------+
| A chooses A2 | −1           | 0            | +4           |
+--------------+--------------+--------------+--------------+
| A chooses A3 | −4           | −3           | +1           |
+--------------+--------------+--------------+--------------+

The following example of a zero-sum game, where A and B make simultaneous moves, illustrates _minimax_ solutions. Suppose each player has three choices and consider the payoff matrix for A displayed on the right. Assume the payoff matrix for B is the same matrix with the signs reversed (i.e. if the choices are A1 and B1 then B pays 3 to A). Then, the minimax choice for A is A2 since the worst possible result is then having to pay 1, while the simple minimax choice for B is B2 since the worst possible result is then no payment. However, this solution is not stable, since if B believes A will choose A2 then B will choose B1 to gain 1; then if A believes B will choose B1 then A will choose A1 to gain 3; and then B will choose B2; and eventually both players will realize the difficulty of making a choice. So a more stable strategy is needed.

Some choices are _dominated_ by others and can be eliminated: A will not choose A3 since either A1 or A2 will produce a better result, no matter what B chooses; B will not choose B3 since some mixtures of B1 and B2 will produce a better result, no matter what A chooses.

A can avoid having to make an expected payment of more than 1∕3 by choosing A1 with probability 1∕6 and A2 with probability 5∕6: The expected payoff for A would be 3 × (1∕6) − 1 × (5∕6) = −1∕3 in case B chose B1 and −2 × (1∕6) + 0 × (5∕6) = −1/3 in case B chose B2. Similarly, B can ensure an expected gain of at least 1/3, no matter what A chooses, by using a randomized strategy of choosing B1 with probability 1∕3 and B2 with probability 2∕3. These mixed minimax strategies are now stable and cannot be improved.

Maximin

Frequently, in game theory, MAXIMIN is distinct from minimax. Minimax is used in zero-sum games to denote minimizing the opponent's maximum payoff. In a zero-sum game, this is identical to minimizing one's own maximum loss, and to maximizing one's own minimum gain.

"Maximin" is a term commonly used for non-zero-sum games to describe the strategy which maximizes one's own minimum payoff. In non-zero-sum games, this is not generally the same as minimizing the opponent's maximum gain, nor the same as the Nash equilibrium strategy.

In repeated games

The minimax values are very important in the theory of repeated games. One of the central theorems in this theory, the folk theorem, relies on the minimax values.


Combinatorial game theory

In combinatorial game theory, there is a minimax algorithm for game solutions.

A SIMPLE version of the minimax _algorithm_, stated below, deals with games such as tic-tac-toe, where each player can win, lose, or draw. If player A _can_ win in one move, their best move is that winning move. If player B knows that one move will lead to the situation where player A _can_ win in one move, while another move will lead to the situation where player A can, at best, draw, then player B's best move is the one leading to a draw. Late in the game, it's easy to see what the "best" move is. The Minimax algorithm helps find the best move, by working backwards from the end of the game. At each step it assumes that player A is trying to MAXIMIZE the chances of A winning, while on the next turn player B is trying to MINIMIZE the chances of A winning (i.e., to maximize B's own chances of winning).

Minimax algorithm with alternate moves

A MINIMAX ALGORITHM[6] is a recursive algorithm for choosing the next move in an n-player game, usually a two-player game. A value is associated with each position or state of the game. This value is computed by means of a position evaluation function and it indicates how good it would be for a player to reach that position. The player then makes the move that maximizes the minimum value of the position resulting from the opponent's possible following moves. If it is A's turn to move, A gives a value to each of their legal moves.

A possible allocation method consists in assigning a certain win for A as +1 and for B as −1. This leads to combinatorial game theory as developed by John Horton Conway. An alternative is using a rule that if the result of a move is an immediate win for A it is assigned positive infinity and, if it is an immediate win for B, negative infinity. The value to A of any other move is the minimum of the values resulting from each of B's possible replies. For this reason, A is called the _maximizing player_ and B is called the _minimizing player_, hence the name _minimax algorithm_. The above algorithm will assign a value of positive or negative infinity to any position since the value of every position will be the value of some final winning or losing position. Often this is generally only possible at the very end of complicated games such as chess or go, since it is not computationally feasible to look ahead as far as the completion of the game, except towards the end, and instead positions are given finite values as estimates of the degree of belief that they will lead to a win for one player or another.

This can be extended if we can supply a heuristic evaluation function which gives values to non-final game states without considering all possible following complete sequences. We can then limit the minimax algorithm to look only at a certain number of moves ahead. This number is called the "look-ahead", measured in "plies". For example, the chess computer Deep Blue (the first one to beat a reigning world champion, Garry Kasparov at that time) looked ahead at least 12 plies, then applied a heuristic evaluation function.[7]

The algorithm can be thought of as exploring the nodes of a _game tree_. The _effective branching factor_ of the tree is the average number of children of each node (i.e., the average number of legal moves in a position). The number of nodes to be explored usually increases exponentially with the number of plies (it is less than exponential if evaluating forced moves or repeated positions). The number of nodes to be explored for the analysis of a game is therefore approximately the branching factor raised to the power of the number of plies. It is therefore impractical to completely analyze games such as chess using the minimax algorithm.

The performance of the naïve minimax algorithm may be improved dramatically, without affecting the result, by the use of alpha-beta pruning. Other heuristic pruning methods can also be used, but not all of them are guaranteed to give the same result as the un-pruned search.

A naive minimax algorithm may be trivially modified to additionally return an entire Principal Variation along with a minimax score.

Pseudocode

The pseudocode for the depth limited minimax algorithm is given below.

function minimax(node, depth, maximizingPlayer) is
    if depth = 0 or node is a terminal node then
        return the heuristic value of node
    if maximizingPlayer then
        value := −∞
        for each child of node do
            value := max(value, minimax(child, depth − 1, FALSE))
        return value
    else _(* minimizing player *)_
        value := +∞
        for each child of node do
            value := min(value, minimax(child, depth − 1, TRUE))
        return value

_(* Initial call *)_
minimax(origin, depth, TRUE)

The minimax function returns a heuristic value for leaf nodes (terminal nodes and nodes at the maximum search depth). Non leaf nodes inherit their value from a descendant leaf node. The heuristic value is a score measuring the favorability of the node for the maximizing player. Hence nodes resulting in a favorable outcome, such as a win, for the maximizing player have higher scores than nodes more favorable for the minimizing player. The heuristic value for terminal (game ending) leaf nodes are scores corresponding to win, loss, or draw, for the maximizing player. For non terminal leaf nodes at the maximum search depth, an evaluation function estimates a heuristic value for the node. The quality of this estimate and the search depth determine the quality and accuracy of the final minimax result.

Minimax treats the two players (the maximizing player and the minimizing player) separately in its code. Based on the observation that max (a, b) =  − min ( − a,  − b), minimax may often be simplified into the negamax algorithm.

Example

coding simplifications.]]

Suppose the game being played only has a maximum of two possible moves per player each turn. The algorithm generates the tree on the right, where the circles represent the moves of the player running the algorithm (_maximizing player_), and squares represent the moves of the opponent (_minimizing player_). Because of the limitation of computation resources, as explained above, the tree is limited to a _look-ahead_ of 4 moves.

The algorithm evaluates each _leaf node_ using a heuristic evaluation function, obtaining the values shown. The moves where the _maximizing player_ wins are assigned with positive infinity, while the moves that lead to a win of the _minimizing player_ are assigned with negative infinity. At level 3, the algorithm will choose, for each node, the SMALLEST of the _child node_ values, and assign it to that same node (e.g. the node on the left will choose the minimum between "10" and "+∞", therefore assigning the value "10" to itself). The next step, in level 2, consists of choosing for each node the LARGEST of the _child node_ values. Once again, the values are assigned to each _parent node_. The algorithm continues evaluating the maximum and minimum values of the child nodes alternately until it reaches the _root node_, where it chooses the move with the largest value (represented in the figure with a blue arrow). This is the move that the player should make in order to _minimize_ the _maximum_ possible loss.


Minimax for individual decisions

Minimax in the face of uncertainty

Minimax theory has been extended to decisions where there is no other player, but where the consequences of decisions depend on unknown facts. For example, deciding to prospect for minerals entails a cost which will be wasted if the minerals are not present, but will bring major rewards if they are. One approach is to treat this as a game against _nature_ (see move by nature), and using a similar mindset as Murphy's law or resistentialism, take an approach which minimizes the maximum expected loss, using the same techniques as in the two-person zero-sum games.

In addition, expectiminimax trees have been developed, for two-player games in which chance (for example, dice) is a factor.

Minimax criterion in statistical decision theory

In classical statistical decision theory, we have an estimator δ that is used to estimate a parameter θ ∈ Θ. We also assume a risk function R(θ, δ), usually specified as the integral of a loss function. In this framework, δ̃ is called MINIMAX if it satisfies

    sup_(θ)R(θ, δ̃) = inf_(δ)sup_(θ)R(θ, δ).

An alternative criterion in the decision theoretic framework is the Bayes estimator in the presence of a prior distribution Π. An estimator is Bayes if it minimizes the _average_ risk

    ∫_(Θ)R(θ, δ) dΠ(θ).

Non-probabilistic decision theory

A key feature of minimax decision making is being non-probabilistic: in contrast to decisions using expected value or expected utility, it makes no assumptions about the probabilities of various outcomes, just scenario analysis of what the possible outcomes are. It is thus robust to changes in the assumptions, as these other decision techniques are not. Various extensions of this non-probabilistic approach exist, notably minimax regret and Info-gap decision theory.

Further, minimax only requires ordinal measurement (that outcomes be compared and ranked), not _interval_ measurements (that outcomes include "how much better or worse"), and returns ordinal data, using only the modeled outcomes: the conclusion of a minimax analysis is: "this strategy is minimax, as the worst case is (outcome), which is less bad than any other strategy". Compare to expected value analysis, whose conclusion is of the form: "this strategy yields E(_X_)=_n._" Minimax thus can be used on ordinal data, and can be more transparent.


Maximin in philosophy

In philosophy, the term "maximin" is often used in the context of John Rawls's _A Theory of Justice,_ where he refers to it (Rawls (1971, p. 152)) in the context of The Difference Principle. Rawls defined this principle as the rule which states that social and economic inequalities should be arranged so that "they are to be of the greatest benefit to the least-advantaged members of society".[8][9]


See also

-   Alpha-beta pruning
-   Expectiminimax
-   Negamax
-   Sion's minimax theorem
-   Minimax Condorcet
-   Computer chess
-   Horizon effect
-   Monte Carlo tree search
-   Minimax regret
-   Negascout
-   Tit for Tat
-   Transposition table
-   Wald's maximin model


Notes


External links

-   -   A visualization applet
-   Maximin principle at Dictionary of Philosophical Terms and Names
-   Play a betting-and-bluffing game against a mixed minimax strategy
-   Minimax at Dictionary of Algorithms and Data Structures
-   Minimax (with or without alpha-beta pruning) algorithm visualization — game tree solving (Java Applet), for balance or off-balance trees.
-   Minimax Tutorial with a Numerical Solution Platform
-   Java implementation used in a Checkers Game

Category:Detection theory Category:Game artificial intelligence Category:Graph algorithms Category:Optimization algorithms and methods Category:Search algorithms Category:Game theory Category:Theorems in discrete mathematics Category:Decision theory Category:Fixed points (mathematics) Category:Articles with example pseudocode

[1] Provincial Healthcare Index 2013 (Bacchus Barua, Fraser Institute, January 2013 -see page 25-)

[2] Turing and von Neumann - Professor Raymond Flood - Gresham College at 12:00

[3]

[4]

[5] Osborne, Martin J., and Ariel Rubinstein. _A Course in Game Theory_. Cambridge, MA: MIT, 1994. Print.

[6]

[7]

[8] Arrow, "Some Ordinalist-Utilitarian Notes on Rawls's Theory of Justice, Journal of Philosophy 70, 9 (May 1973), pp. 245-263.

[9] Harsanyi, "Can the Maximin Principle Serve as a Basis for Morality? a Critique of John Rawls's Theory, American Political Science Review 69, 2 (June 1975), pp. 594-606.