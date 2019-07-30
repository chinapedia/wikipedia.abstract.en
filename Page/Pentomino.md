PENTOMINO tiling puzzles and games are popular in recreational mathematics.[1] Usually, video games such as Tetris imitations and Rampart consider mirror reflections to be distinct, and thus use the full set of 18 one-sided pentominoes.

Each of the twelve pentominoes satisfies the Conway criterion; hence every pentomino is capable of tiling the plane.[2] Each chiral pentomino can tile the plane without being reflected.[3]


History

Pentominoes were formally defined by American professor Solomon W. Golomb starting in 1953 and later in his 1965 book _Polyominoes: Puzzles, Patterns, Problems, and Packings_.[4][5] They were introduced to the general public by Martin Gardner in his October 1965 Mathematical Games column in Scientific American. Golomb coined the term "pentomino" from the Ancient Greek / _pénte_, "five", and the -omino of domino, fancifully interpreting the "d-" of "domino" as if it were a form of the Greek prefix "di-" (two). Golomb named the 12 _free_ pentominoes after letters of the Latin alphabet that they resemble.

John Horton Conway proposed an alternate labeling scheme for pentominoes, using O instead of I, Q instead of L, R instead of F, and S instead of N. The resemblance to the letters is more strained, especially for the O pentomino, but this scheme has the advantage of using 12 consecutive letters of the alphabet. It is used by convention in discussing Conway's Game of Life, where, for example, one speaks of the R-pentomino instead of the F-pentomino.


Symmetry

-   F, L, N, P, and Y can be oriented in 8 ways: 4 by rotation, and 4 more for the mirror image. Their symmetry group consists only of the identity mapping.
-   T, and U can be oriented in 4 ways by rotation. They have an axis of reflection aligned with the gridlines. Their symmetry group has two elements, the identity and the reflection in a line parallel to the sides of the squares.
-   V and W also can be oriented in 4 ways by rotation. They have an axis of reflection symmetry at 45° to the gridlines. Their symmetry group has two elements, the identity and a diagonal reflection.
-   Z can be oriented in 4 ways: 2 by rotation, and 2 more for the mirror image. It has point symmetry, also known as rotational symmetry of order 2. Its symmetry group has two elements, the identity and the 180° rotation.
-   I can be oriented in 2 ways by rotation. It has two axes of reflection symmetry, both aligned with the gridlines. Its symmetry group has four elements, the identity, two reflections and the 180° rotation. It is the dihedral group of order 2, also known as the Klein four-group.
-   X can be oriented in only one way. It has four axes of reflection symmetry, aligned with the gridlines and the diagonals, and rotational symmetry of order 4. Its symmetry group, the dihedral group of order 4, has eight elements.

The F, L, N, P, Y, and Z pentominoes are chiral; adding their reflections (F′, L′, N′, Q, Y′, Z′) brings the number of _one-sided_ pentominoes to 18. If rotations are also considered distinct, then the pentominoes from the first category count eightfold, the ones from the next three categories (T, U, V, W, Z) count fourfold, I counts twice, and X counts only once. This results in 5×8 + 5×4 + 2 + 1 = 63 _fixed_ pentominoes.

For example, the eight possible orientations of the L, F, N, P, and Y pentominoes are as follows:

    

For 2D figures in general there are two more categories:

-   Being orientable in 2 ways by a rotation of 90°, with two axes of reflection symmetry, both aligned with the diagonals. This type of symmetry requires at least a heptomino.
-   Being orientable in 2 ways, which are each other's mirror images, for example a swastika. This type of symmetry requires at least an octomino.


Tiling rectangles

A standard PENTOMINO PUZZLE is to tile a rectangular box with the pentominoes, i.e. cover it without overlap and without gaps. Each of the 12 pentominoes has an area of 5 unit squares, so the box must have an area of 60 units. Possible sizes are 6×10, 5×12, 4×15 and 3×20. The avid puzzler can probably solve these problems by hand within a few hours. A more challenging task, typically requiring a computer search, is to count the total number of solutions in each case.

The 6×10 case was first solved in 1960 by Colin Brian and Jenifer Haselgrove.[6] There are exactly 2339 solutions, excluding trivial variations obtained by rotation and reflection of the whole rectangle, but including rotation and reflection of a subset of pentominoes (which sometimes provides an additional solution in a simple way). The 5×12 box has 1010 solutions, the 4×15 box has 368 solutions, and the 3×20 box has just 2 solutions (one is shown in the figure, and the other one can be obtained from the solution shown by rotating, as a whole, the block consisting of the L, N, F, T, W, Y, and Z pentominoes).

A somewhat easier (more symmetrical) puzzle, the 8×8 rectangle with a 2×2 hole in the center, was solved by Dana Scott as far back as 1958.[7] There are 65 solutions. Scott's algorithm was one of the first applications of a backtracking computer program. Variations of this puzzle allow the four holes to be placed in any position. One of the external links uses this rule. Most such patterns are solvable, with the exceptions of placing each pair of holes near two corners of the board in such a way that both corners could only be fitted by a P-pentomino, or forcing a T-pentomino or U-pentomino in a corner such that another hole is created.

Efficient algorithms have been described to solve such problems, for instance by Donald Knuth.[8] Running on modern hardware, these pentomino puzzles can now be solved in mere seconds.

The solution of tiling rectangles of polyominoes with _n_ cells exists only for _n_ = 0, 1, 2 and 5.


Filling boxes

A PENTACUBE is a polycube of five cubes. Of the 29 pentacubes, exactly twelve pentacubes are flat (1-layer) and correspond to the twelve pentominoes extruded to a depth of one square. A PENTACUBE PUZZLE or 3D PENTOMINO PUZZLE, amounts to filling a 3-dimensional box with the 12 flat pentacubes, i.e. cover it without overlap and without gaps. Since each pentacube has a volume of 5 unit cubes, the box must have a volume of 60 units. Possible sizes are 2×3×10 (12 solutions), 2×5×6 (264 solutions) and 3×4×5 (3940 solutions). Following are one solution of each case.[9]

Alternatively one could also consider combinations of five cubes that are themselves 3D, i.e., are not part of one layer of cubes. However, in addition to the 12 extruded pentominoes, 6 sets of chiral pairs and 5 pieces make total 29 pieces, resulting in 145 cubes, which will not make a 3D box (as 145 can only be 29×5×1, which the non-flat pentominoes cannot fit into).


Board game

There are board games of skill based entirely on pentominoes. Such games are often simply called "Pentominoes".

One of the games is played on an 8×8 grid by two or three players. Players take turns in placing pentominoes on the board so that they do not overlap with existing tiles and no tile is used more than once. The objective is to be the last player to place a tile on the board. This version of Pentominoes is called "Golomb's Game".

The two-player version has been weakly solved in 1996 by Hilarie Orman. It was proved to be a first-player win by examining around 22 billion board positions.[10]

Pentominoes, and similar shapes, are also the basis of a number of other tiling games, patterns and puzzles. For example, the French board game _Blokus_ is played with 4 colored sets of polyominoes, each consisting of every pentomino (12), tetromino (5), triomino (2) domino (1) and monomino (1). Like the game _Pentominoes_, the goal is to use all of your tiles, and a bonus is given if the monomino is played on the very last move. The player with the fewest blocks remaining wins.

The game of _Cathedral_ is also based on polyominoes.[11]

Parker Brothers released a multi-player pentomino board game called _Universe_ in 1966. Its theme is based on an outtake from the movie 2001: A Space Odyssey in which the astronaut (seen playing chess in the final version) is playing a two-player pentomino game against a computer. The front of the board game box features scenes from the movie as well as a caption describing it as the "game of the future". The game comes with 4 sets of pentominoes in red, yellow, blue, and white. The board has two playable areas: a base 10x10 area for two players with an additional 25 squares (two more rows of 10 and one offset row of 5) on each side for more than two players.

Game manufacturer Lonpos has a number of games that use the same pentominoes, but on different game planes. Their _101 Game_ has a 5 x 11 plane. By changing the shape of the plane, thousands of puzzles can be played, although only a relatively small selection of these puzzles are available in print.


Literature

The first pentomino problem, written by Henry Dudeney, was published in 1907 in the Canterbury Puzzles.[12]

Pentominoes were featured in a prominent subplot of Arthur C. Clarke's novel _Imperial Earth_, published in 1975. Clarke also wrote an essay in which he described the game and how he got hooked on it.[13]

They were also featured in Blue Balliett's _Chasing Vermeer_, which was published in 2003 and illustrated by Brett Helquist, as well as its sequels, _The Wright 3_ and _The Calder Game_.[14]

In the New York Times crossword puzzle for June 27, 2012, the clue for an 11-letter word at 37 across was "Complete set of 12 shapes formed by this puzzle's black squares."


Architecture

On several occasions, pentominoes had been used as decoration elements for outer walls of Plattenbau buildings, mainly in Eastern Europe. The patterns used were based on solutions of the 6×10 case puzzle.


Video games

-   Lojix on the _ZX Spectrum_ is clearly derived from pentomino, though it uses a non-standard set of 20 blocks and a 10*10 box. Released in late 1983, the game was marketed via the announcement of a cash prize for the first person to solve the puzzle.
-   _Tetris_ was inspired by pentomino puzzles, although it uses four-block tetrominoes. Some Tetris clones and variants, like the game _5s_ included with Plan 9 from Bell Labs, and _Magical Tetris Challenge_, do use pentominoes.
-   _Rampart_ uses the pentominoes that fit in the 3x3 box in addition to smaller pieces.
-   _Daedalian Opus_ uses pentomino puzzles throughout the game.
-   _Yohoho! Puzzle Pirates_ carpentry minigame is based on pentomino puzzles.
-   _Chime_ uses pentominoes for its pieces.
-   _StreetPass Mii Plaza_ includes a downloadable game called StreetPass Mansion/Monster Manor, where the player must traverse a haunted mansion using monomino to pentomino shaped rooms as a path. Additionally, the player may meet other Mii's who will give the player puzzle boxes to solve, consisting of a number of monominoes to pentominoes which must all fit within the provided space.
-   Board game like Pentomino for Amstrad CPC computers in 2017, with 464 puzzles. Digital and physical editions.
-   Ground Up Construction is a mobile puzzle game that uses pentomino puzzles to have players create buildings in a 16x16 grid.


See also

-   Lonpos
-   Tiling puzzle
-   Cathedral (board game)
-   Solomon W. Golomb


Notes


References

-   Chasing Vermeer, with information about the book Chasing Vermeer and a click-and-drag pentomino board.
-


External links

-   Pentomino configurations and solutions An exhaustive listing of solutions to many of the classic problems showing how each solution relates to the others.
-   Pentomino solver Program (with C++ source code) to compute the 16146 solutions (provided) for covering the checkerboard with 12 pentominoes and a tetromino.
-   Polycube solver Program (with Lua source code) to fill boxes with polycubes using Algorithm X.
-   BANJEN Pentamino Freeware pentamino based puzzle.
-   Pentomino games Pentomino-based online puzzle games with numbers and pictures.
-   Pentomino for Windows Phone Pentomino for Windows Phone.
-   Pentomino for Anndroid Pentomino for Android.
-   PentoPlus Polyomino solver by Hartmut Braun. Java open source.
-   Pentominos Puzzle Solver A JavaScript solver, with arbitrary board shapes.
-   Pentomino Solver C open source solver, with arbitrary board shapes.

Category:Mathematical games Category:Polyforms Category:Solved games

[1] Eric Harshbarger - Pentominoes

[2]

[3]

[4]

[5] people.rit.edu - Introduction - polyomino and pentomino

[6]

[7] Dana S. Scott (1958). "Programming a combinatorial puzzle". Technical Report No. 1, Department of Electrical Engineering, Princeton University.

[8] Donald E. Knuth. "Dancing links" (Postscript, 1.6 megabytes). Includes a summary of Scott's and Fletcher's articles.

[9]

[10] Hilarie K. Orman. Pentominoes: A First Player Win (Pdf).

[11] FAQ

[12] Pentominoes

[13] _Could you solve Pentominoes?_ by Arthur C. Clarke, Sunday Telegraph Magazine, September 14, 1975; reprinted in Clarke's _Ascent to Orbit: A Scientific Autobiography_, New York: John Wiley & Sons, 1984.

[14] Chasing Vermeer, by Blue Balliett, Scholastic Paperbacks,