Moser–de_Bruijn_addition.svg that connects the sums in numerical order]] In number theory, the MOSER–DE BRUIJN SEQUENCE is an integer sequence named after Leo Moser and Nicolaas Govert de Bruijn, consisting of the sums of distinct powers of 4. It begins

    0, 1, 4, 5, 16, 17, 20, 21, 64, 65, 68, 69, 80, 81, 84, 85, 256, ...

For instance, 69 belongs to this sequence because it equals 64 + 4 + 1, a sum of three distinct powers of 4.


Binary and related representations

Another definition of the Moser–de Bruijn sequence is that it is the ordered sequence of numbers whose binary representation has nonzero digits only in the even positions. For instance, 69 belongs to the sequence, because its binary representation 1000101₂ has nonzero digits in the positions for 2⁶, 2², and 2⁰, all of which have even exponents. The numbers in the sequence can also be described as the numbers whose base-4 representation uses only the digits 0 or 1.[1] For a number in this sequence, the base-4 representation can be found from the binary representation by skipping the binary digits in odd positions, which should all be zero. Another way of looking at it is that these are numbers whose hexadecimal representation contains only the digits 0, 1, 4, 5. For instance, 69 = 1011₄ = 45₁₆.

Equivalently, they are the numbers whose binary and negabinary representations are equal.[2][3]

Moser–de_Bruijn_counts.svg It follows from either the binary or base-4 definitions of these numbers that they grow roughly in proportion to the square numbers. The number of elements in the Moser–de Bruijn sequence that are below any given threshold n is proportional to $\sqrt n$,[4] a fact which is also true of the square numbers. In fact the numbers in the Moser–de Bruijn sequence are the squares for a version of arithmetic without carrying on binary numbers, in which the addition and multiplication of single bits are respectively the exclusive or and logical conjunction operations.[5]

In connection with the Furstenberg–Sárközy theorem on sequences of numbers with no square difference, Imre Z. Ruzsa found a construction for large square-difference-free sets that, like the binary definition of the Moser–de Bruijn sequence, restricts the digits in alternating positions in the base-b numbers.[6] When applied to the base b = 2, Ruzsa's construction generates the Moser–de Bruijn sequence multiplied by two, a set that is again square-difference-free. However, this set is too sparse to provide nontrivial lower bounds for the Furstenberg–Sárközy theorem.


Unique representation as sums

The Moser–de Bruijn sequence obeys a property similar to that of a Sidon sequence: the sums x + 2y, where x and y both belong to the Moser–de Bruijn sequence, are all unique. No two of these sums have the same value. Moreover, every integer n can be represented as a sum x + 2y, where x and y both belong to the Moser–de Bruijn sequence. To find the sum that represents n, compute x = n & 0x55555555, the bitwise Boolean and of n with a binary value (expressed here in hexadecimal) that has ones in all of its even positions, and set y = (n − x)/2.[7][8]

The Moser–de Bruijn sequence is the only sequence with this property, that all integers have a unique expression as x + 2y. It is for this reason that the sequence was originally studied by .[9] Extending the property, found infinitely many other linear expressions like x + 2y that, when x and y both belong to the Moser–de Bruijn sequence, uniquely represent all integers.[10][11]


Z-order curve and successor formula

Decomposing a number n into n = x + 2y, and then applying to x and y an order-preserving map from the Moser–de Bruijn sequence to the integers (by replacing the powers of four in each number by the corresponding powers of two) gives a bijection from non-negative integers to ordered pairs of non-negative integers. The inverse of this bijection gives a linear ordering on the points in the plane with non-negative integer coordinates, which may be used to define the Z-order curve.[12][13]

In connection with this application, it is convenient to have a formula to generate each successive element of the Moser–de Bruijn sequence from its predecessor. This can be done as follows. If x is an element of the sequence, then the next member after x can be obtained by filling in the bits in odd positions of the binary representation of x by ones, adding one to the result, and then masking off the filled-in bits. Filling the bits and adding one can be combined into a single addition operation. That is, the next member is the number given by the formula

(_x_ + 0xaaaaaaab) & 0x55555555
.[14][15][16] The two hexadecimal constants appearing in this formula can be interpreted as the 2-adic numbers 1/3 and  − 1/3, respectively.[17]


Subtraction game

investigated a game, analogous to subtract a square, based on this sequence. In Golomb's game, two players take turns removing coins from a pile of n coins. In each move, a player may remove any number of coins that belongs to the Moser–de Bruijn sequence. Removing any other number of coins is not allowed. The winner is the player who removes the last coin. As Golomb observes, the "cold" positions of this game (the ones in which the player who is about to move is losing) are exactly the positions of the form 2y where y belongs to the Moser–de Bruijn sequence. A winning strategy for playing this game is to decompose the current number of coins, n, into x + 2y where x and y both belong to the Moser–de Bruijn sequence, and then (if x is nonzero) to remove x coins, leaving a cold position to the other player. If x is zero, this strategy is not possible, and there is no winning move.[18]


Decimal reciprocals

The Moser–de Bruijn sequence forms the basis of an example of an irrational number x with the unusual property that the decimal representations of x and 1/x can both be written simply and explicitly. Let E denote the Moser–de Bruijn sequence itself, and 2E denote the numbers in this sequence multiplied by two: {0, 2, 8, 10, …}. Then for

_x_ = 3∑_(_e_ ∈ _E_)10^( − _e_) = 3.300330000000000330033…,
a decimal number whose nonzero digits are in the positions given by the Moser–de Bruijn sequence, it follows that the nonzero digits of its reciprocal are in the positions given by 2E:

$$\frac{1}{x}=3\sum_{e\in 2E} 10^{-e-1} = 0.30300000303\dots\ .$$
[19][20]

Similar examples also work in other bases. For instance, the two binary numbers whose nonzero bits are in the same positions as the nonzero digits of the two decimal numbers above are also irrational reciprocals.[21] These binary and decimal numbers, and the numbers defined in the same way for any other base by repeating a single nonzero digit in the positions given by the Moser–de Bruijn sequence, are transcendental numbers. Their transcendence can be proven from the fact that the long strings of zeros in their digits allow them to be approximated more accurately by rational numbers than would be allowed by Roth's theorem if they were algebraic numbers.[22]


Generating function

The generating function

$$F(x)=\prod_{i=0}^{\infty}(1+x^{4^i})=1+x+x^4+x^5+x^{16}+x^{17}+\cdots,$$
whose exponents in the expanded form are given by the Moser–de Bruijn sequence, obeys the functional equations

$$F(x)F(x^2)=\frac{1}{1-x}$$
[23][24] and

_F_(_x_) = (1 + _x_)_F_(_x_⁴).
[25] For example, this function can be used to describe the two decimal reciprocals given above: one is 3F(1/10) and the other is $\tfrac{3}{10} F(1/100)$. The fact that they are reciprocal is an instance of the first of the two functional equations. The partial products of the product form of the generating function can be used to generate the convergents of the continued fraction expansion of these numbers.[26]


Recurrence and regularity

The Moser–de Bruijn sequence obeys a recurrence relation that allows the th value of the sequence, S(n) (starting at S(0) = 0) to be determined from the value at position ⌊n/2⌋:

_S_(2_n_) = 4_S_(_n_)

_S_(2_n_ + 1) = 4_S_(_n_) + 1
Iterating this recurrence allows any subsequence of the form S(2^(i)n + j) to be expressed as a linear function of the original sequence, meaning that the Moser–de Bruijn sequence is a 2-regular sequence.[27]


See also

-   Stanley sequence and Cantor set, sets defined similarly using the base-3 representations of their elements


Notes


External links

-

Category:Integer sequences Category:Binary arithmetic

[1]

[2]

[3] .

[4]

[5] .

[6] .

[7]

[8] The constants in this formula are expressed in hexadecimal and based on a 32-bit word size. The same bit pattern should be extended or reduced in the obvious way to handle other word sizes.

[9] .

[10] .

[11] .

[12]

[13] .

[14]

[15]

[16]

[17]

[18] .

[19] .

[20] . As cited by .

[21] . See in particular the discussion following Theorem 4.2.

[22]

[23]

[24]

[25] .

[26]

[27] . Example 13, p. 188.