BEST NODE SEARCH (BNS) is a minimax search algorithm, developed in 2011. Experiments with random trees show it to be the most efficient minimax algorithm. This algorithm does tell which move leads to minmax, but does not tell the evaluation of minimax.[1]


Performance

MTD-f guesses the minimax by calling zero-window alpha-beta prunings. BNS calls search that tells whether the minimax in the subtree is smaller or bigger than the guess. It changes the guessed value until alpha and beta is close enough or only one subtree allows minimax value bigger than guessed value.


Pseudocode

function nextGuess(α, β, subtreeCount) = α + (β - α) * (subtreeCount - 1) / subtreeCount;
function bns(node, α, β) is
    subtreeCount := number of children of node
    do
        test := nextGuess(α, β, subtreeCount)
        betterCount := 0
        for each child of node do
            bestVal := −alphabeta(child, −test, −(test − 1))
            if bestVal ≥ test then
                betterCount := betterCount + 1
                bestNode := child
        _(update number of sub-trees that exceeds separation test value)_
        _(update alpha-beta range)_
    while not (β − α < 2 or betterCount = 1)
    return bestNode

The default NEXTGUESS function above may be replaced with one which uses statistical information for improved performance.


Generalization

Tree searching with Murphy Sampling[2] is an extension of Best Node Search to non-deterministic setting.


External links

-   fuzzy minimax algorithms


References

Category:Search algorithms

[1] http://www.bjmc.lu.lv/fileadmin/user_upload/lu_portal/projekti/bjmc/Contents/770_7.pdf

[2]