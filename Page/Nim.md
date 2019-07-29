NIM is a mathematical game of strategy in which two players take turns removing (i.e., nimming) objects from distinct heaps or piles. On each turn, a player must remove at least one object, and may remove any number of objects provided they all come from the same heap/pile. The goal of the game is to avoid taking the last object.

Variants of Nim have been played since ancient times.[1] The game is said to have originated in China—it closely resembles the Chinese game of 捡石子 _jiǎn-shízi_, or "picking stones"[2]—but the origin is uncertain; the earliest European references to Nim are from the beginning of the 16th century. Its current name was coined by Charles L. Bouton of Harvard University, who also developed the complete theory of the game in 1901,[3] but the origins of the name were never fully explained.

Nim is typically played as a _misère_ game, in which the player to take the last object loses. Nim can also be played as a _normal play_ game, where the player taking the last object wins. This is called normal play because the last move is a winning move in most games, even though it is not the normal way that Nim is played.

Normal play Nim (or more precisely the system of nimbers) is fundamental to the Sprague–Grundy theorem, which essentially says that in normal play every impartial game is equivalent to a Nim heap that yields the same outcome when played in parallel with other normal play impartial games (see disjunctive sum).

While all normal play impartial games can be assigned a Nim value, that is not the case under the misère convention. Only tame games can be played using the same strategy as misère nim.

Nim is a special case of a poset game where the poset consists of disjoint chains (the heaps).

The evolution graph of the game of Nim with three heaps is the same as three branches of the evolution graph of the Ulam-Warburton automaton. [4]

At the 1940 New York World's Fair Westinghouse displayed a machine, the Nimatron, that played Nim.[5] From May 11, 1940 to October 27, 1940 only a few people were able to beat the machine in that six week period, if they did they were presented with a coin that said Nim Champ.[6][7] It was also one of the first ever electronic computerized games. Ferranti built a Nim playing computer which was displayed at the Festival of Britain in 1951. In 1952 Herbert Koppel, Eugene Grant and Howard Bailer, engineers from the W. L. Maxon Corporation, developed a machine weighing which played Nim against a human opponent and regularly won.[8] A Nim Playing Machine has been described made from TinkerToy.[9]

The game of Nim was the subject of Martin Gardner's February 1958 Mathematical Games column in Scientific American. A version of Nim is played—and has symbolic importance—in the French New Wave film _Last Year at Marienbad_ (1961).[10]


Game play and illustration

The normal game is between two players and played with three heaps of any number of objects. The two players alternate taking any number of objects from any single one of the heaps. The goal is to be the last to take an object. In misère play, the goal is instead to ensure that the opponent is forced to take the last remaining object.

The following example of a normal game is played between fictional players Bob and Alice who start with heaps of three, four and five objects.

Sizes of heaps  Moves
A B C
 
3 4 5           Bob   takes 2 from A
1 4 5           Alice takes 3 from C
1 4 2           Bob   takes 1 from B
1 3 2           Alice takes 1 from B
1 2 2           Bob   takes entire A heap, leaving two 2s.
0 2 2           Alice takes 1 from B
0 1 2           Bob   takes 1 from C leaving two 1s. (_In misère play he would take 2 from C leaving (0, 1, 0)._)
0 1 1           Alice takes 1 from B
0 0 1           Bob   takes entire C heap and wins.


Winning positions

The practical strategy to win at the game of _Nim_ is for a player to get the other into one of the following positions, and every successive turn afterwards they should be able to make one of the lower positions. Only the last move changes between misere and normal play.

  2 Heaps   3 Heaps    4 Heaps
  --------- ---------- -----------
  1 1 *     1 1 1 **   1 1 1 1 *
  2 2       1 2 3      1 1 n n
  3 3       1 4 5      1 2 4 7
  4 4       1 6 7      1 2 5 6
  5 5       1 8 9      1 3 4 6
  6 6       2 4 6      1 3 5 7
  7 7       2 5 7      2 3 4 5
  8 8       3 4 7      2 3 6 7
  9 9       3 5 6      2 3 8 9
  (n n)     4 8 12     4 5 6 7
            4 9 13     4 5 8 9
            5 8 13     n n m m
            5 9 12     n n n n

* Only valid for normal play.

** Only valid for misere.

For the generalisations, _n_ and _m_ can be any value > 0, and they may be the same.


Mathematical theory

Nim has been mathematically solved for any number of initial heaps and objects, and there is an easily calculated way to determine which player will win and what winning moves are open to that player.

The key to the theory of the game is the binary digital sum of the heap sizes, that is, the sum (in binary) neglecting all carries from one digit to another. This operation is also known as "exclusive or" (xor) or "vector addition over GF(2)". Within combinatorial game theory it is usually called the NIM-SUM, as it will be called here. The nim-sum of _x_ and _y_ is written to distinguish it from the ordinary sum, . An example of the calculation with heaps of size 3, 4, and 5 is as follows:

Binary Decimal
 
  011₂    3₁₀    Heap A
  100₂    4₁₀    Heap B
  101₂    5₁₀    Heap C
  ---
  010₂    2₁₀    The nim-sum of heaps A, B, and C, 3 ⊕ 4 ⊕ 5 = 2

An equivalent procedure, which is often easier to perform mentally, is to express the heap sizes as sums of distinct powers of 2, cancel pairs of equal powers, and then add what is left:

3 = 0 + 2 + 1 =     2   1      Heap A
4 = 4 + 0 + 0 = 4              Heap B
5 = 4 + 0 + 1 = 4       1      Heap C
--------------------------------------------------------------------
2 =                 2          What is left after canceling 1s and 4s

In normal play, the winning strategy is to finish every move with a nim-sum of 0. This is always possible if the nim-sum is not zero before the move. If the nim-sum is zero, then the next player will lose if the other player does not make a mistake. To find out which move to make, let X be the nim-sum of all the heap sizes. Find a heap where the nim-sum of X and heap-size is less than the heap-size - the winning strategy is to play in such a heap, reducing that heap to the nim-sum of its original size with X. In the example above, taking the nim-sum of the sizes is . The nim-sums of the heap sizes A=3, B=4, and C=5 with X=2 are

    _A_ ⊕ _X_ = 3 ⊕ 2 = 1 [Since (011) ⊕ (010) = 001 ]
    _B_ ⊕ _X_ = 4 ⊕ 2 = 6
    _C_ ⊕ _X_ = 5 ⊕ 2 = 7

The only heap that is reduced is heap A, so the winning move is to reduce the size of heap A to 1 (by removing two objects).

As a particular simple case, if there are only two heaps left, the strategy is to reduce the number of objects in the bigger heap to make the heaps equal. After that, no matter what move your opponent makes, you can make the same move on the other heap, guaranteeing that you take the last object.

When played as a misère game, Nim strategy is different only when the normal play move would leave only heaps of size one. In that case, the correct move is to leave an odd number of heaps of size one (in normal play, the correct move would be to leave an even number of such heaps).

In a misère game with heaps of sizes three, four and five, the strategy would be applied like this:

A B C nim-sum 
 
3 4 5 010₂=2₁₀   I take 2 from A, leaving a sum of 000, so I will win.
1 4 5 000₂=0₁₀   You take 2 from C
1 4 3 110₂=6₁₀   I take 2 from B
1 2 3 000₂=0₁₀   You take 1 from C
1 2 2 001₂=1₁₀   I take 1 from A
0 2 2 000₂=0₁₀   You take 1 from C
0 2 1 011₂=3₁₀   The normal play strategy would be to take 1 from B, leaving an even number (2)
                 heaps of size 1.  For misère play, I take the entire B heap, to leave an odd
                 number (1) of heaps of size 1.
0 0 1 001₂=1₁₀   You take 1 from C, and lose.

Example implementation

The previous strategy for a misère game can be easily implemented (for example in Python, below).

    import functools

    MISERE = 'misere'
    NORMAL = 'normal'

    def nim(heaps, game_type):
        """
        Computes next move for Nim, for both game types normal and misere.

        if there is a winning move:
            return tuple(heap_index, amount_to_remove)
        else:
            return "You will lose :("

        - mid-game scenarios are the same for both game types

        >>> print(nim([1, 2, 3], MISERE))
        misere [1, 2, 3] You will lose :(
        >>> print(nim([1, 2, 3], NORMAL))
        normal [1, 2, 3] You will lose :(
        >>> print(nim([1, 2, 4], MISERE))
        misere [1, 2, 4] (2, 1)
        >>> print(nim([1, 2, 4], NORMAL))
        normal [1, 2, 4] (2, 1)


        - endgame scenarios change depending upon game type

        >>> print(nim([1], MISERE))
        misere [1] You will lose :(
        >>> print(nim([1], NORMAL))
        normal [1] (0, 1)
        >>> print(nim([1, 1], MISERE))
        misere [1, 1] (0, 1)
        >>> print(nim([1, 1], NORMAL))
        normal [1, 1] You will lose :(
        >>> print(nim([1, 5], MISERE))
        misere [1, 5] (1, 5)
        >>> print(nim([1, 5], NORMAL))
        normal [1, 5] (1, 4)

        """

        print(game_type, heaps, end=' ')

        is_misere = game_type == MISERE

        is_near_endgame = False
        count_non_0_1 = sum(1 for x in heaps if x > 1)
        is_near_endgame = (count_non_0_1 <= 1)

        # nim sum will give the correct end-game move for normal play but
        # misere requires the last move be forced onto the opponent
        if is_misere and is_near_endgame:
            moves_left = sum(1 for x in heaps if x > 0)
            is_odd = (moves_left % 2 == 1)
            sizeof_max = max(heaps)
            index_of_max = heaps.index(sizeof_max)

            if sizeof_max == 1 and is_odd:
                return "You will lose :("

            # reduce the game to an odd number of 1's
            return index_of_max, sizeof_max - int(is_odd)

        nim_sum = functools.reduce(lambda x, y: x ^ y, heaps)
        if nim_sum == 0:
            return "You will lose :("

        # Calc which move to make
        for index, heap in enumerate(heaps):
            target_size = heap ^ nim_sum
            if target_size < heap:
                amount_to_remove = heap - target_size
                return index, amount_to_remove


    if __name__ == "__main__":
        import doctest
        doctest.testmod()


Proof of the winning formula

The soundness of the optimal strategy described above was demonstrated by C. Bouton.

THEOREM. In a normal Nim game, the player making the first move has a winning strategy if and only if the nim-sum of the sizes of the heaps is not zero. Otherwise, the second player has a winning strategy.

_Proof:_ Notice that the nim-sum (⊕) obeys the usual associative and commutative laws of addition (+) and also satisfies an additional property, _x_ ⊕ _x_ = 0.

Let _x_₁, ..., _x_(n)_ be the sizes of the heaps before a move, and _y_₁, ..., _y_(n)_ the corresponding sizes after a move. Let _s_ = _x_₁ ⊕ ... ⊕ _x_(n)_ and _t_ = _y_₁ ⊕ ... ⊕ _y_(n)_. If the move was in heap _k_, we have _x_(i)_ = _y_(i)_ for all _i_ ≠ _k_, and _x_(k)_ > _y_(k)_. By the properties of ⊕ mentioned above, we have

    _t_ = 0 ⊕ _t_
      = _s_ ⊕ _s_ ⊕ _t_
      = _s_ ⊕ (_x_₁ ⊕ ... ⊕ _x_(n)_) ⊕ (_y_₁ ⊕ ... ⊕ _y_(n)_)
      = _s_ ⊕ (_x_₁ ⊕ _y_₁) ⊕ ... ⊕ (_x_(n)_ ⊕ _y_(n)_)
      = _s_ ⊕ 0 ⊕ ... ⊕ 0 ⊕ (_x_(k)_ ⊕ _y_(k)_) ⊕ 0 ⊕ ... ⊕ 0
      = _s_ ⊕ _x_(k)_ ⊕ _y_(k)_
 
(*) _t_ = _s_ ⊕ _x_(k)_ ⊕ _y_(k)_.

The theorem follows by induction on the length of the game from these two lemmas.

LEMMA 1. If _s_ = 0, then _t_ ≠ 0 no matter what move is made.

_Proof:_ If there is no possible move, then the lemma is vacuously true (and the first player loses the normal play game by definition). Otherwise, any move in heap _k_ will produce _t_ = _x_(k)_ ⊕ _y_(k)_ from (*). This number is nonzero, since _x_(k)_ ≠ _y_(k)_.

LEMMA 2. If _s_ ≠ 0, it is possible to make a move so that _t_ = 0.

_Proof:_ Let _d_ be the position of the leftmost (most significant) nonzero bit in the binary representation of _s_, and choose _k_ such that the _d_th bit of _x_(k)_ is also nonzero. (Such a _k_ must exist, since otherwise the _d_th bit of _s_ would be 0.) Then letting _y_(k)_ = _s_ ⊕ _x_(k)_, we claim that _y_(k)_ < _x_(k)_: all bits to the left of _d_ are the same in _x_(k)_ and _y_(k)_, bit _d_ decreases from 1 to 0 (decreasing the value by 2^(_d_)), and any change in the remaining bits will amount to at most 2^(_d_)−1. The first player can thus make a move by taking _x_(k)_ − _y_(k)_ objects from heap _k_, then

_t_ = _s_ ⊕ _x_(k)_ ⊕ _y_(k)_           (by (*))
  = _s_ ⊕ _x_(k)_ ⊕ (_s_ ⊕ _x_(k)_)
  = 0.

The modification for misère play is demonstrated by noting that the modification first arises in a position that has only one heap of size 2 or more. Notice that in such a position _s_ ≠ 0, therefore this situation has to arise when it is the turn of the player following the winning strategy. The normal play strategy is for the player to reduce this to size 0 or 1, leaving an even number of heaps with size 1, and the misère strategy is to do the opposite. From that point on, all moves are forced.


Variations

The subtraction game _S_(1, 2, . . ., _k_)

In another game which is commonly known as Nim (but is better called the subtraction game _S_ (1,2,...,_k_)), an upper bound is imposed on the number of objects that can be removed in a turn. Instead of removing arbitrarily many objects, a player can only remove 1 or 2 or ... or _k_ at a time. This game is commonly played in practice with only one heap (for instance with _k_ = 3 in the game _Thai 21_ on Survivor: Thailand, where it appeared as an Immunity Challenge).

Bouton's analysis carries over easily to the general multiple-heap version of this game. The only difference is that as a first step, before computing the Nim-sums, we must reduce the sizes of the heaps modulo _k_ + 1. If this makes all the heaps of size zero (in misère play), the winning move is to take _k_ objects from one of the heaps. In particular, in ideal play from a single heap of _n_ objects, the second player can win if and only if

    _n_ ≡ 0 (mod _k_ + 1) (in normal play), or
    _n_ ≡ 1 (mod _k_ + 1) (in misère play).

This follows from calculating the nim-sequence of _S_(1,2,...,_k_),

    $0.123\ldots k0123\ldots k0123\dots = \dot0.123\ldots\dot{k},$

from which the strategy above follows by the Sprague–Grundy theorem.

The 21 game

The game "21" is played as a misère game with any number of players who take turns saying a number. The first player says "1" and each player in turn increases the number by 1, 2, or 3, but may not exceed 21; the player forced to say "21" loses. This can be modeled as a subtraction game with a heap of 21–_n_ objects. The winning strategy for the two-player version of this game is to always say a multiple of 4; it is then guaranteed that the other player will ultimately have to say 21 – so in the standard version where the first player opens with "1", they start with a losing move.

The 21 game can also be played with different numbers, like "Add at most 5; lose on 34".

A sample game of 21 in which the second player follows the winning strategy:

Player     Number
  1           1
  2           4
  1        5, 6 or 7
  2           8
  1       9, 10 or 11
  2          12
  1      13, 14 or 15
  2          16
  1      17, 18 or 19
  2          20
  1          21

The 100 game

A similar version is the "100 game": two players start from 0 and alternately add a number from 1 to 10 to the sum. The player who reaches 100 wins. The winning strategy is to reach a number in which the digits are subsequent (e.g. 01, 12, 23, 34,...) and control the game by jumping through all the numbers of this sequence. Once reached 89, the opponent has lost; they can only choose numbers from 90 to 99, and the next answer can in any case be 100).

A multiple-heap rule

In another variation of Nim, besides removing any number of objects from a single heap, one is permitted to remove the same number of objects from each heap.

Circular Nim

Yet another variation of Nim is 'Circular Nim', where any number of objects are placed in a circle, and two players alternately remove one, two or three adjacent objects. For example, starting with a circle of ten objects,

. . . . . . . . . .

three objects are taken in the first move

_ . . . . . . . _ _

then another three

_ . _ _ _ . . . _ _

then one

_ . _ _ _ . . _ _ _

but then three objects cannot be taken out in one move.

Grundy's game

In Grundy's game, another variation of Nim, a number of objects are placed in an initial heap, and two players alternately divide a heap into two nonempty heaps of different sizes. Thus, six objects may be divided into piles of 5+1 or 4+2, but not 3+3. Grundy's game can be played as either misère or normal play.

Greedy Nim

_Greedy Nim_ is a variation where the players are restricted to choosing stones from only the largest pile.[11] It is a finite impartial game. _Greedy Nim Misère_ has the same rules as Greedy Nim, but here the last player able to make a move loses.

Let the largest number of stones in a pile be _m_, the second largest number of stones in a pile be _n_. Let _p__(_m_) be the number of piles having _m_ stones, _p__(_n_) be the number of piles having _n_ stones. Then there is a theorem that game positions with _p__(_m_) even are _P_ positions. [12] This theorem can be shown by considering the positions where _p__(_m_) is odd. If _p__(_m_) is larger than 1, all stones may be removed from this pile to reduce _p__(_m_) by 1 and the new _p__(_m_) will be even. If _p__(_m_) = 1 (i.e. the largest heap is unique), there are two cases:

-   If _p__(_n_) is odd, the size of the largest heap is reduced to _n_ (so now the new _p__(_m_) is even).
-   If _p__(_n_) is even, the largest heap is removed entirely, leaving an even number of largest heaps.

Thus there exists a move to a state where _p__(_m_) is even. Conversely, if _p__(_m_) is even, if any move is possible (_p__(_m_) ≠ 0) then it must take the game to a state where _p__(_m_) is odd. The final position of the game is even (_p__(_m_) = 0). Hence each position of the game with _p__(_m_) even must be a _P_ position.

Index-_k_ Nim

A generalization of multi-heap Nim was called "Nim_(k)" or "index-_k_" Nim by E. H. Moore,[13] who analyzed it in 1910. In index-_k_ Nim, instead of removing objects from only one heap, players can remove objects from at least one but up to _k_ different heaps. The number of elements that may be removed from each heap may be either arbitrary, or limited to at most _r_ elements, like in the "subtraction game" above.

The winning strategy is as follows: Like in ordinary multi-heap Nim, one considers the binary representation of the heap sizes (or heap sizes modulo _r_ + 1). In ordinary Nim one forms the XOR-sum (or sum modulo 2) of each binary digit, and the winning strategy is to make each XOR sum zero. In the generalization to index-_k_ Nim, one forms the sum of each binary digit modulo _k_ + 1.

Again the winning strategy is to move such that this sum is zero for every digit. Indeed, the value thus computed is zero for the final position, and given a configuration of heaps for which this value is zero, any change of at most _k_ heaps will make the value non-zero. Conversely, given a configuration with non-zero value, one can always take from at most _k_ heaps, carefully chosen, so that the value will become zero.

Building Nim

BUILDING NIM is a variant of Nim where the two players first construct the game of Nim. Given _n_ stones and _s_ empty piles, the players alternate turns placing exactly one stone into a pile of their choice.[14] Once all the stones are placed, a game of Nim begins, starting with the next player that would move. This game is denoted _BN(n,s)_.

Higher dimensional Nim

_n_-d Nim is played on a _k_1...k_n_ board, where any number of continuous pieces can be removed from any hyper-row. The starting position is usually the full board, but other options are allowed.[15]


See also

-   Dr. NIM
-   Fibonacci nim
-   Wythoff's game
-   Fuzzy game
-   Nimber
-   Octal games
-   Star (game theory)
-   Subtract a square
-   Zero game
-   Android Nim
-   Raymond Redheffer
-   Notakto


References


Further reading

-   W. W. Rouse Ball: _Mathematical Recreations and Essays_, The Macmillan Company, 1947.
-   John D. Beasley: _The Mathematics of Games_, Oxford University Press, 1989.
-   Elwyn R. Berlekamp, John H. Conway, and Richard K. Guy: _Winning Ways for your Mathematical Plays_, Academic Press, Inc., 1982.
-   Manfred Eigen and Ruthild Winkler: _Laws of the Game_, Princeton University Press, 1981.
-   Walter R. Fuchs: _Computers: Information Theory and Cybernetics_, Rupert Hart-Davis Educational Publications, 1971.
-   G. H. Hardy and E. M. Wright: _An Introduction to the Theory of Numbers_, Oxford University Press, 1979.
-   Edward Kasner and James Newman: Mathematics and the Imagination, Simon and Schuster, 1940.
-   M. Kaitchik: _Mathematical Recreations_, W. W. Norton, 1942.
-   Donal D. Spencer: _Game Playing with Computers_, Hayden Book Company, Inc., 1968.


External links

-   50-pound computer plays Nim- The New Yorker magazine "Talk of the Town" August, 1952
-   The hot game of Nim – Nim theory and connections with other games at cut-the-knot
-   Nim and 2-dimensional SuperNim at cut-the-knot
-   Subtraction Game: a Subtraction Game illustration on Appstore.
-   Classic Nim - Implementation of Nim for iOS.
-   Matchstick Nim - Implementation of Nim for Android devices.

cs:Rozšířená forma#NIM

Category:Mathematical games Category:Combinatorial game theory Category:Recreational mathematics Category:Articles containing proofs Category:Articles with example Python code Category:Solved games

[1]

[2]

[3]

[4] Tanya Khovanova, Joshua Xiong, Nim Fractals, arXiv:1405.5942

[5]

[6]

[7]

[8]

[9]

[10] . Morrissette writes that Alain Robbe-Grillet, one of the screenwriters for the film, "thought he had invented" the game.

[11] ; ; ; ;

[12]

[13] Moore, E. H. _A Generalization of the Game Called Nim_. Annals of Mathematics 11 (3), 1910, pp. 93–94

[14]

[15]