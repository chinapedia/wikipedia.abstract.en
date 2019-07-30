In mathematics, a COMBINATION is a selection of items from a collection, such that (unlike permutations) the order of selection does not matter. For example, given three fruits, say an apple, an orange and a pear, there are three combinations of two that can be drawn from this set: an apple and a pear; an apple and an orange; or a pear and an orange. More formally, a _k_-COMBINATION of a set _S_ is a subset of _k_ distinct elements of _S_. If the set has _n_ elements, the number of _k_-combinations is equal to the binomial coefficient

$$\binom nk = \frac{n(n-1)\dotsb(n-k+1)}{k(k-1)\dotsb1},$$

which can be written using factorials as $\textstyle\frac{n!}{k!(n-k)!}$ whenever k ≤ n, and which is zero when k > n. The set of all _k_-combinations of a set _S_ is often denoted by $\textstyle\binom Sk$.

Combinations refer to the combination of _n_ things taken _k_ at a time without repetition. To refer to combinations in which repetition is allowed, the terms _k_-selection,[1] _k_-multiset,[2] or _k_-combination with repetition are often used.[3] If, in the above example, it were possible to have two of any one kind of fruit there would be 3 more 2-selections: one with two apples, one with two oranges, and one with two pears.

Although the set of three fruits was small enough to write a complete list of combinations, with large sets this becomes impractical. For example, a poker hand can be described as a 5-combination (_k_ = 5) of cards from a 52 card deck (_n_ = 52). The 5 cards of the hand are all distinct, and the order of cards in the hand does not matter. There are 2,598,960 such combinations, and the chance of drawing any one hand at random is 1 / 2,598,960.


Number of _k_-combinations

The number of _k_-combinations from a given set _S_ of _n_ elements is often denoted in elementary combinatorics texts by C(n, k), or by a variation such as C_(k)^(n), _(n)C_(k), ^(n)C_(k), C_(n, k) or even C_(n)^(k) (the latter form was standard in French, Romanian, Russian, Chinese[4] and Polish texts). The same number however occurs in many other mathematical contexts, where it is denoted by $\tbinom nk$ (often read as "_n_ choose _k_"); notably it occurs as a coefficient in the binomial formula, hence its name BINOMIAL COEFFICIENT. One can define $\tbinom nk$ for all natural numbers _k_ at once by the relation

$$(1 + X)^n = \sum_{k\geq0}\binom{n}{k} X^k,$$

from which it is clear that

$$\binom{n}{0} = \binom{n}{n} = 1,$$

and further,

$$\binom{n}{k} = 0$$
for _k_ > _n_.

To see that these coefficients count _k_-combinations from _S_, one can first consider a collection of _n_ distinct variables _X__(_s_) labeled by the elements _s_ of _S_, and expand the product over all elements of _S_:

∏_(_s_ ∈ _S_)(1 + _X__(_s_));

it has 2^(_n_) distinct terms corresponding to all the subsets of _S_, each subset giving the product of the corresponding variables _X__(_s_). Now setting all of the _X__(_s_) equal to the unlabeled variable _X_, so that the product becomes , the term for each _k_-combination from _S_ becomes _X_^(_k_), so that the coefficient of that power in the result equals the number of such _k_-combinations.

Binomial coefficients can be computed explicitly in various ways. To get all of them for the expansions up to , one can use (in addition to the basic cases already given) the recursion relation

$$\binom{n}{k} = \binom{n - 1}{k - 1} + \binom{n - 1}{k},$$

for 0 < _k_ < _n_, which follows from =; this leads to the construction of Pascal's triangle.

For determining an individual binomial coefficient, it is more practical to use the formula

$$\binom nk = \frac{n(n-1)(n-2)\cdots(n-k+1)}{k!}$$
.

The numerator gives the number of _k_-permutations of _n_, i.e., of sequences of _k_ distinct elements of _S_, while the denominator gives the number of such _k_-permutations that give the same _k_-combination when the order is ignored.

When _k_ exceeds _n_/2, the above formula contains factors common to the numerator and the denominator, and canceling them out gives the relation

$$\binom nk = \binom n{n-k},$$

for 0 ≤ _k_ ≤ _n_. This expresses a symmetry that is evident from the binomial formula, and can also be understood in terms of _k_-combinations by taking the complement of such a combination, which is an -combination.

Finally there is a formula which exhibits this symmetry directly, and has the merit of being easy to remember:

$$\binom nk = \frac{n!}{k!(n-k)!},$$

where _n_! denotes the factorial of _n_. It is obtained from the previous formula by multiplying denominator and numerator by !, so it is certainly inferior as a method of computation to that formula.

The last formula can be understood directly, by considering the _n_! permutations of all the elements of _S_. Each such permutation gives a _k_-combination by selecting its first _k_ elements. There are many duplicate selections: any combined permutation of the first _k_ elements among each other, and of the final (_n_ − _k_) elements among each other produces the same combination; this explains the division in the formula.

From the above formulas follow relations between adjacent numbers in Pascal's triangle in all three directions:

$$\binom nk =
\begin{cases}
\binom n{k-1} \frac {n-k+1}k &\quad \text{if } k > 0 \\
\binom {n-1}k \frac n{n-k} &\quad \text{if } k < n \\
\binom {n-1}{k-1} \frac nk &\quad \text{if } n, k > 0
\end{cases}$$
.

Together with the basic cases $\tbinom n0=1=\tbinom nn$, these allow successive computation of respectively all numbers of combinations from the same set (a row in Pascal's triangle), of _k_-combinations of sets of growing sizes, and of combinations with a complement of fixed size .

Example of counting combinations

As a specific example, one can compute the number of five-card hands possible from a standard fifty-two card deck as:[5]

$${52 \choose 5} = \frac{52\times51\times50\times49\times48}{5\times4\times3\times2\times1} = \frac{311{,}875{,}200}{120} =
2{,}598{,}960.$$

Alternatively one may use the formula in terms of factorials and cancel the factors in the numerator against parts of the factors in the denominator, after which only multiplication of the remaining factors is required:

$$\begin{alignat}{2}
  {52 \choose 5}
    &= \frac{52!}{5!47!} \\[5pt]
    &= \frac{52\times51\times50\times49\times48\times\cancel{47!}}{5\times4\times3\times2\times\cancel{1}\times\cancel{47!}} \\[5pt]
    &= \frac{52\times51\times50\times49\times48}{5\times4\times3\times2} \\[5pt]
    &= \frac{(26\times\cancel{2})\times(17\times\cancel{3})\times(10\times\cancel{5})\times49\times(12\times\cancel{4})}{\cancel{5}\times\cancel{4}\times\cancel{3}\times\cancel{2}} \\[5pt]
    &= {26\times17\times10\times49\times12} \\[5pt]
    &= 2{,}598{,}960.
\end{alignat}$$

Another alternative computation, equivalent to the first, is based on writing

$${n \choose k} = \frac { ( n - 0 ) }1 \times \frac { ( n - 1 ) }2 \times \frac { ( n - 2 ) }3 \times \cdots \times \frac { ( n - (k - 1) ) }k,$$

which gives

$${52 \choose 5} = \frac{52}1 \times \frac{51}2 \times \frac{50}3 \times \frac{49}4 \times \frac{48}5 = 2{,}598{,}960$$
. When evaluated in the following order, , this can be computed using only integer arithmetic. The reason is that when each division occurs, the intermediate result that is produced is itself a binomial coefficient, so no remainders ever occur.

Using the symmetric formula in terms of factorials without performing simplifications gives a rather extensive calculation:

$$\begin{align}
 {52 \choose 5} &= \frac{n!}{k!(n-k)!} = \frac{52!}{5!(52-5)!} = \frac{52!}{5!47!} \\[6pt]
&= \tfrac{80,658,175,170,943,878,571,660,636,856,403,766,975,289,505,440,883,277,824,000,000,000,000}{120\times258,623,241,511,168,180,642,964,355,153,611,979,969,197,632,389,120,000,000,000} \\[6pt]
&= 2{,}598{,}960.
\end{align}$$

Enumerating _k_-combinations

One can enumerate all _k_-combinations of a given set _S_ of _n_ elements in some fixed order, which establishes a bijection from an interval of $\tbinom nk$ integers with the set of those _k_-combinations. Assuming _S_ is itself ordered, for instance _S_ = { 1, 2, …, _n_ }, there are two natural possibilities for ordering its _k_-combinations: by comparing their smallest elements first (as in the illustrations above) or by comparing their largest elements first. The latter option has the advantage that adding a new largest element to _S_ will not change the initial part of the enumeration, but just add the new _k_-combinations of the larger set after the previous ones. Repeating this process, the enumeration can be extended indefinitely with _k_-combinations of ever larger sets. If moreover the intervals of the integers are taken to start at 0, then the _k_-combination at a given place _i_ in the enumeration can be computed easily from _i_, and the bijection so obtained is known as the combinatorial number system. It is also known as "rank"/"ranking" and "unranking" in computational mathematics.[6][7]

There are many ways to enumerate _k_ combinations. One way is to visit all the binary numbers less than 2^(_n_). Choose those numbers having _k_ nonzero bits, although this is very inefficient even for small _n_ (e.g. _n_ = 20 would require visiting about one million numbers while the maximum number of allowed _k_ combinations is about 186 thousand for _k_ = 10). The positions of these 1 bits in such a number is a specific _k_-combination of the set { 1, …, _n_ }.[8] Another simple, faster way is to track _k_ index numbers of the elements selected, starting with {0 .. _k_−1} (zero-based) or {1 .. _k_} (one-based) as the first allowed _k_-combination and then repeatedly moving to the next allowed _k_-combination by incrementing the last index number if it is lower than _n_-1 (zero-based) or _n_ (one-based) or the last index number _x_ that is less than the index number following it minus one if such an index exists and resetting the index numbers after _x_ to {_x_+1, _x_+2, …}.


Number of combinations with repetition

A _k_-COMBINATION WITH REPETITIONS, or _k_-MULTICOMBINATION, or MULTISUBSET of size _k_ from a set _S_ is given by a sequence of _k_ not necessarily distinct elements of _S_, where order is not taken into account: two sequences define the same multiset if one can be obtained from the other by permuting the terms. In other words, the number of ways to sample _k_ elements from a set of _n_ elements allowing for duplicates (i.e., with replacement) but disregarding different orderings (e.g. {2,1,2} = {1,2,2}). Associate an index to each element of _S_ and think of the elements of _S_ as _types_ of objects, then we can let x_(i) denote the number of elements of type _i_ in a multisubset. The number of multisubsets of size _k_ is then the number of nonnegative integer solutions of the Diophantine equation:[9]

_x_₁ + _x_₂ + … + _x__(_n_) = _k_.
If _S_ has _n_ elements, the number of such _k_-multisubsets is denoted by,

$$\left(\!\!\binom{n}{k}\!\!\right),$$
a notation that is analogous to the binomial coefficient which counts _k_-subsets. This expression, _n_ multichoose _k_,[10] can also be given in terms of binomial coefficients:

$$\left(\!\!\binom{n}{k}\!\!\right)=\binom{n+k-1}{k}.$$

This relationship can be easily proved using a representation known as stars and bars.[11] A solution of the above Diophantine equation can be represented by x₁ _stars_, a separator (a _bar_), then x₂ more stars, another separator, and so on. The total number of stars in this representation is _k_ and the number of bars is _n_ - 1 (since no separator is needed at the very end). Thus, a string of _k_ + _n_ - 1 symbols (stars and bars) corresponds to a solution if there are _k_ stars in the string. Any solution can be represented by choosing _k_ out of positions to place stars and filling the remaining positions with bars. For example, the solution x₁ = 3, x₂ = 2, x₃ = 0, x₄ = 5 of the equation x₁ + x₂ + x₃ + x₄ = 10 can be represented by

★★★|★★||★★★★★.[12]

The number of such strings is the number of ways to place 10 stars in 13 positions, $\binom{13}{10} = \binom{13}{3} = 286,$ which is the number of 10-multisubsets of a set with 4 elements. between 3-subsets of a 7-set (left) and 3-multisets with elements from a 5-set (right).
This illustrates that $\textstyle {7 \choose 3} = \left(\!\!{5 \choose 3}\!\!\right)$.]]

As with binomial coefficients, there are several relationships between these multichoose expressions. For example, for n ≥ 1, k ≥ 0,

$$\left(\!\!\binom{n}{k}\!\!\right)=\left(\!\!\binom{k+1}{n-1}\!\!\right).$$
This identity follows from interchanging the stars and bars in the above representation.[13]

Example of counting multisubsets

For example, if you have four types of donuts (_n_ = 4) on a menu to choose from and you want three donuts (_k_ = 3), the number of ways to choose the donuts with repetition can be calculated as

$$\left(\!\!\binom{4}{3}\!\!\right) = \binom{4+3-1}3 = \binom{6}{3} = \frac{6\times5\times4}{3\times2\times1} = 20.$$

This result can be verified by listing all the 3-multisubsets of the set _S_ = {1,2,3,4}. This is displayed in the following table.[14] The second column shows the nonnegative integer solutions [x₁, x₂, x₃, x₄] of the equation x₁ + x₂ + x₃ + x₄ = 3 and the last column gives the stars and bars representation of the solutions.[15]

  No.   3-Multiset   Eq. Solution   Stars and Bars
  ----- ------------ -------------- ------------------------------
  1     {1,1,1}      [3,0,0,0]      \bigstar \bigstar \bigstar
  2     {1,1,2}      [2,1,0,0]      \bigstar \bigstar | \bigstar
  3     {1,1,3}      [2,0,1,0]      \bigstar \bigstar
  4     {1,1,4}      [2,0,0,1]      \bigstar \bigstar
  5     {1,2,2}      [1,2,0,0]      \bigstar |\bigstar \bigstar
  6     {1,2,3}      [1,1,1,0]      ★|★|★|
  7     {1,2,4}      [1,1,0,1]      \bigstar |\bigstar
  8     {1,3,3}      [1,0,2,0]      \bigstar
  9     {1,3,4}      [1,0,1,1]      \bigstar
  10    {1,4,4}      [1,0,0,2]      \bigstar
  11    {2,2,2}      [0,3,0,0]      |\bigstar \bigstar \bigstar
  12    {2,2,3}      [0,2,1,0]      |★★|★|
  13    {2,2,4}      [0,2,0,1]      |\bigstar \bigstar
  14    {2,3,3}      [0,1,2,0]      |★|★★|
  15    {2,3,4}      [0,1,1,1]      |★|★|★
  16    {2,4,4}      [0,1,0,2]      |\bigstar
  17    {3,3,3}      [0,0,3,0]
  18    {3,3,4}      [0,0,2,1]
  19    {3,4,4}      [0,0,1,2]
  20    {4,4,4}      [0,0,0,3]


Number of _k_-combinations for all _k_

The number of _k_-combinations for all _k_ is the number of subsets of a set of _n_ elements. There are several ways to see that this number is 2^(_n_). In terms of combinations, $\sum_{0\leq{k}\leq{n}}\binom nk = 2^n$, which is the sum of the _n_th row (counting from 0) of the binomial coefficients in Pascal's triangle. These combinations (subsets) are enumerated by the 1 digits of the set of base 2 numbers counting from 0 to 2^(_n_)  −  1, where each digit position is an item from the set of _n_.

Given 3 cards numbered 1 to 3, there are 8 distinct combinations (subsets), including the empty set:

|{{}; {1}; {2}; {1, 2}; {3}; {1, 3}; {2, 3}; {1, 2, 3}}| = 2³ = 8

Representing these subsets (in the same order) as base 2 numerals:



        0 – 000
        1 – 001
        2 – 010
        3 – 011
        4 – 100
        5 – 101
        6 – 110
        7 – 111


Probability: sampling a random combination

There are various algorithms to pick out a random combination from a given set or list. Rejection sampling is extremely slow for large sample sizes. One way to select a _k_-combination efficiently from a population of size _n_ is to iterate across each element of the population, and at each step pick that element with a dynamically changing probability of $\frac{k-\#\text{samples chosen}}{n- \#\text{samples visited}}$. (see reservoir sampling).


See also

-   Binomial coefficient
-   Combinatorial number system
-   Combinatorics
-   Kneser graph
-   List of permutation topics
-   Multiset
-   Pascal's triangle
-   Permutation
-   Probability
-   Subset


Notes


References

-   -   -   Erwin Kreyszig, _Advanced Engineering Mathematics_, John Wiley & Sons, INC, 1999.
-   -


External links

-   Topcoder tutorial on combinatorics
-   C code to generate all combinations of n elements chosen as k
-   Many Common types of permutation and combination math problems, with detailed solutions
-   The Unknown Formula For combinations when choices can be repeated and order does NOT matter
-   Combinations with repetitions (by: Akshatha AG and Smitha B)
-   The dice roll with a given sum problem An application of the combinations with repetition to rolling multiple dice

Category:Combinatorics

[1]  also referred to as an _unordered selection_.

[2]

[3] When the term _combination_ is used to refer to either situation (as in ) care must be taken to clarify whether sets or multisets are being discussed.

[4]

[5]

[6]

[7]

[8]

[9]

[10]

[11] In the article Stars and bars (combinatorics) the roles of and are reversed.

[12]

[13]

[14]

[15]  where the stars and bars are written as binary numbers, with stars = 0 and bars = 1.