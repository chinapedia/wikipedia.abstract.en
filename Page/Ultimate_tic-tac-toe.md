Incomplete_Ultimate_Tic-Tac-Toe_Board.png ULTIMATE TIC-TAC-TOE (also known as SUPER TIC-TAC-TOE, STRATEGIC TIC-TAC-TOE, META TIC-TAC-TOE, or TIC-TAC-TIC-TAC-TOE-TOE[1]) is a board game composed of nine tic-tac-toe boards arranged in a 3-by-3 grid.[2][3] Players take turns playing in the smaller tic-tac-toe boards until one of them wins in the larger tic-tac-toe board. Compared to traditional tic-tac-toe, strategy in this game is conceptually more difficult, and has proven more challenging for computers.[4]


Rules

Ultimate_tic-tac-toe_forced_move.png Each small 3-by-3 tic-tac-toe board is referred to as a local board, and the larger 3-by-3 board is referred to as the global board.

The game starts with X playing wherever they want in any of the 81 empty spots. This move 'sends' their opponent to its relative location. For example, if X played in the top right square of their local board, then O needs to play next in the local board at the top right of the global board. O can then play in any one of the nine available spots in that local board, each move sending X to a different local board.

If a move is played so that it is to win a local board by the rules of normal tic-tac-toe, then the entire local board is marked as a victory for the player in the global board.

Once the outcome of a local board is decided (win or draw), no more moves may be played in that board. If a player is sent to such a board, then that player may play in any other board.

Game play ends when either a player wins the global board or there are no legal moves remaining, in which case the game is a draw.[5]


Gameplay

Ultimate tic-tac-toe is significantly more complex than most other variations of tic-tac-toe, as there is no clear strategy to playing. This is because of the complicated game branching in this game. Even though every move must be played in a local board, equivalent to a normal tic-tac-toe board, each move must take into account the global board in several ways:

1.  ANTICIPATING THE NEXT MOVE: Each move played in a local board determines where the opponent's next move may be played. This might make moves that may be considered bad in normal tic-tac-toe viable, since the opponent is sent to another local board, and may be unable to immediately respond to them. Therefore, players are forced to consider the larger game board instead of simply focusing on the local board.
2.  VISUALIZING THE GAME TREE: Visualizing future branches of the game tree is more difficult than single board tic-tac-toe. Each move determines the next move, and therefore reading ahead—predicting future moves—follows a much less linear path. Future board positions are no longer interchangeable, each move leading to starkly different possible future positions. This makes the game tree difficult to visualize, possibly leaving many possible paths overlooked.
3.  WINNING THE GAME: Due to the rules of ultimate tic-tac-toe, the global board is never directly affected. It is only governed by actions that occur in local boards. This means that each local move played is not intended to win the local board, but to win the global board. Local wins are not valuable if they cannot be used to win the global board—in fact, it may be strategic to sacrifice a local board to your opponent in order to win a more important local board yourself. This added layer of complexity makes it harder for humans to analyze the relative importance and significance of moves, and consequently harder to play well.


Computer implementations

While tic-tac-toe is elementary to solve, and can be done nearly instantly using depth-first search, ultimate tic-tac-toe cannot be reasonably solved using any brute force tactics.[6] Therefore, more creative computer implementations are necessary in order to play this game.

The most common artificial intelligence (AI) tactic, minimax, may be used to play ultimate tic-tac-toe, but has difficulty playing this. This is because, despite having relatively simple rules, ultimate tic-tac-toe lacks any simple heuristic evaluation function. This function is necessary in minimax, for it determines how good a specific position is. Although elementary evaluation functions can be made for ultimate tic-tac-toe by taking into account the number of local victories, these largely overlook positional advantage that is much harder to quantify. Without any efficient evaluation function, most typical computer implementations are weak, and therefore there are few computer opponents that can consistently outplay humans.[7]

However, artificial intelligence algorithms that don't need evaluation functions, like the Monte Carlo tree-search algorithm, have no problem in playing this game. The Monte Carlo tree-search relies on random simulations of games in order to determine how good a position is instead of a positional evaluation, and is therefore able to accurately assess how good a current position is. Therefore, computer implementations using these algorithms tend to outperform minimax solutions, and can consistently beat human opponents.[8][9]


References


External links

-   Monte Carlo tree-search implementation
-   Open Source Monte Carlo tree search implementation in C and Swift
-   Ultimate Tic-Tac-Toe game where artificial intelligences confront each other

Category:Tic-tac-toe Category:Abstract strategy games Category:Mathematical games Category:Paper-and-pencil games Category:Tic-tac-toe variants

[1]

[2]

[3]

[4]

[5]

[6]

[7]

[8]

[9]