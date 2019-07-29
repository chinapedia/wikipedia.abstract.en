phutball_opening.svg

PHUTBALL (short for PHILOSOPHER'S FOOTBALL) is a two-player abstract strategy board game described in Elwyn Berlekamp, John Horton Conway, and Richard K. Guy's _Winning Ways for your Mathematical Plays_.


Rules

Phutball is played on the intersections of a 19×15 grid using one white stone and as many black stones as needed. In this article the two players are named Ohs (O) and Eks (X). The board is labeled A through P (omitting I) from left to right and 1 to 19 from bottom to top from Ohs' perspective. Rows 0 and 20 represent "off the board" beyond rows 1 and 19 respectively.

As specialized phutball boards are hard to come by, the game is usually played on a 19×19 Go board, with a white stone representing the football and black stones representing the men.

The objective is to score goals by using the men (the black stones) to move the football (the white stone) onto or over the opponent's goal line. Ohs tries to move the football to rows 19 or 20 and Eks to rows 1 or 0. At the start of the game the football is placed on the central point, unless one player gives the other a handicap, in which case the ball starts nearer one player's goal.

Players alternate making moves. A move is either to add a man to any vacant point on the board or to move the ball. There is no difference between men played by Ohs and those played by Eks.

phutball_jump.svg

The football is moved by a series of jumps over adjacent men. Each jump is to the first vacant point in a straight line horizontally, vertically, or diagonally over one or more men. The jumped men are then removed from the board (before any subsequent jump occurs). This process repeats for as long as there remain men available to be jumped and the player desires. Jumping is optional: there is no requirement to jump. In contrast to checkers, multiple men in a row are jumped and removed as a group.

The diagram on the right illustrates a jump.

-   Ohs moves the football from K6–G9–G11–J11.
-   The men on J7, H8, G10, and H11 are removed.
-   The jump from K6–G9–J9–G7 would not be legal, as that would jump the man on H8 twice.

If the football ends the move on or over the opponent's goal line then a goal has been scored. If the football passes through a goal line, but ends up elsewhere due to further jumps, the game continues.


Strategy

-   Carefully set-up sequences of jumps can be "spoiled" by extending them at critical moments.
-   A jump to the left or right edge can be blocked by leaving no vacant points.
-   When jumping, it is usually bad to leave an easily used return path for the opponent to "undo" one's progress.

The game is sufficiently complex that checking whether there is a win in one (on an m×n board) is NP-complete. It is not known whether any player has a winning strategy or both players have a drawing strategy.

Given an arbitrary board position, with initially a black stone placed in the center, determining whether the current player has a winning strategy is PSPACE-hard.[1]


References

-


External links

-   Dariusz Dereniowski: Phutball is PSPACE-hard
-   -

-   A program written in Java, with 5 AI to play with.

Category:Abstract strategy games Category:Mathematical games Category:John Horton Conway

[1]