In mathematics, MODULAR ARITHMETIC is a system of arithmetic for integers, where numbers "wrap around" upon reaching a certain value—the MODULUS (plural MODULI). The modern approach to modular arithmetic was developed by Carl Friedrich Gauss in his book _Disquisitiones Arithmeticae_, published in 1801.

A familiar use of modular arithmetic is in the 12-hour clock, in which the day is divided into two 12-hour periods. If the time is 7:00 now, then 8 hours later it will be 3:00. Usual addition would suggest that the later time should be 15}}, but this is not the answer because clock time "wraps around" every 12 hours. Because the hour number starts over after it reaches 12, this is arithmetic _modulo_ 12. According to the definition below, 12 is congruent not only to 12 itself, but also to 0, so the time called "12:00" could also be called "0:00", since 12 is congruent to 0 modulo 12.


Definition of congruence relation

Modular arithmetic can be handled mathematically by introducing a congruence relation on the integers that is compatible with the operations on integers: addition, subtraction, and multiplication. For a positive integer , two numbers and are said to be __, if their difference is an integer multiple of (that is, if there is an integer such that ). This congruence relation is typically considered when and are integers, and is denoted

$$a \equiv b \pmod n.$$
(some authors use instead of ; in this case, if the parentheses are omitted, this generally means that "mod" denotes the modulo operation, that is, that ).

The number is called the __ of the congruence.

The congruence relation may be rewritten as

_a_ = _k__n_ + _b_,
explicitly showing its relationship with Euclidean division. However, need not be the remainder of the division of by More precisely, what the statement asserts is that and have the same remainder when divided by . That is,

_a_ = _p__n_ + _r_,

_b_ = _q__n_ + _r_,
where is the common remainder. Subtracting these two expressions, we recover the previous relation:

_a_ − _b_ = _k__n_,
by setting

Examples

For example,

$$38 \equiv 14 \pmod {12}\,$$

because 24}}, which is a multiple of 12, or, equivalently, because both 38 and 14 have the same remainder 2 when divided by 12.

The same rule holds for negative values:

$$\begin{align}
-8 &\equiv 7 \pmod 5\\
2 &\equiv -3 \pmod 5\\
 -3 &\equiv -8 \pmod 5.
\end{align}$$

A remark on the notation: Because it is common to consider several congruence relations for different moduli at the same time, the modulus is incorporated in the notation. In spite of the ternary notation, the congruence relation for a given modulus is binary. This would have been more direct if the notation had been used, instead of the common traditional notation.


Properties

The congruence relation satisfies all the conditions of an equivalence relation:

-   Reflexivity:
-   Symmetry: if for all , , and .
-   Transitivity: If and , then

If and or if then:

-   for any integer (compatibility with translation)

-   for any integer (compatibility with scaling)

-   (compatibility with addition)

-   (compatibility with subtraction)

-   (compatibility with multiplication)

-   for any non-negative integer (compatibility with exponentiation)

-   , for any polynomial with integer coefficients (compatibility with polynomial evaluation)

If , then it is false, in general, that . However, one has:

-   If where _φ_ is Euler's totient function, then provided is coprime with

For cancellation of common terms, we have the following rules:

-   If for any integer , then
-   If and is coprime with , then

The modular multiplicative inverse is defined by the following rules:

-   Existence: there exists an integer denoted such that if and only if is coprime with . This integer is called a _modular multiplicative inverse_ of modulo .
-   If and exists, then (compatibility with multiplicative inverse, and, if , uniqueness modulo )
-   If and is coprime to , the solution to this linear congruence is given by

In particular, if is a prime number then is coprime with for every such that . Thus, a multiplicative inverse exists for all that are not congruent to zero modulo .

Some of the more advanced properties of congruence relations are the following:

-   Fermat's little theorem: If is prime and does not divide , then .
-   Euler's theorem: If and are coprime, then , where _φ_ is Euler's totient function
-   A simple consequence of Fermat's little theorem is that if is prime, then is the multiplicative inverse of . More generally, from Euler's theorem, if and are coprime, then .
-   Another simple consequence is that if where _φ_ is Euler's totient function, then provided is coprime with .
-   Wilson's theorem: is prime if and only if .
-   Chinese remainder theorem: If and such that and are coprime, then where is the inverse of modulo and is the inverse of modulo
-   Lagrange's theorem: The congruence , where is prime, and _a_₀ _x_^(_n_) + ... + _a__(_n_)}} is a polynomial with integer coefficients such that , has at most roots.
-   Primitive root modulo n: A number is a primitive root modulo if, for every integer coprime to , there is an integer such that . A primitive root modulo exists if and only if is equal to or , where is an odd prime number and is a positive integer. If a primitive root modulo exists, then there are exactly such primitive roots, where is the Euler's totient function.
-   Quadratic residue: An integer is a quadratic residue modulo , if there exists an integer such that . Euler's criterion asserts that, if is an odd prime, and is not a multiple of , then is a quadratic residue modulo if and only if

$$a^{\frac{p-1}{2}} \equiv 1 \pmod p.$$


Congruence classes

Like any congruence relation, congruence modulo is an equivalence relation, and the equivalence class of the integer , denoted by , is the set }. This set, consisting of the integers congruent to  modulo , is called the CONGRUENCE CLASS or RESIDUE CLASS or simply RESIDUE of the integer , modulo . When the modulus is known from the context, that residue may also be denoted .


Residue systems

Each residue class modulo may be represented by any one of its members, although we usually represent each residue class by the smallest nonnegative integer which belongs to that class (since this is the proper remainder which results from division). Any two members of different residue classes modulo are incongruent modulo . Furthermore, every integer belongs to one and only one residue class modulo .[1]

The set of integers } is called the LEAST RESIDUE SYSTEM MODULO . Any set of integers, no two of which are congruent modulo , is called a COMPLETE RESIDUE SYSTEM MODULO .

The least residue system is a complete residue system, and a complete residue system is simply a set containing precisely one representative of each residue class modulo .[2] The least residue system modulo 4 is {0, 1, 2, 3}. Some other complete residue systems modulo 4 are:

-   {1, 2, 3, 4}
-   {13, 14, 15, 16}
-   {−2, −1, 0, 1}
-   {−13, 4, 17, 18}
-   {−5, 0, 6, 21}
-   {27, 32, 37, 42}

Some sets which are _not_ complete residue systems modulo 4 are:

-   {−5, 0, 6, 22} since 6 is congruent to 22 modulo 4.
-   {5, 15} since a complete residue system modulo 4 must have exactly 4 incongruent residue classes.

Reduced residue systems

Any set of integers that are relatively prime to and that are mutually incongruent modulo , where denotes Euler's totient function, is called a REDUCED RESIDUE SYSTEM MODULO .[3] The example above, {5,15} is an example of a reduced residue system modulo 4.


Integers modulo _n_

The set of all congruence classes of the integers for a modulus is called the RING OF INTEGERS MODULO ,[4] and is denoted ℤ/nℤ, ℤ/n, or ℤ_(n). The notation ℤ_(n) is, however, not recommended because it can be confused with the set of [[P-adic#Algebraic_approach|, ℤ/nℤ does not have zero elements; rather, it is isomorphic to ℤ, since {_a_}}}.)

We define addition, subtraction, and multiplication on ℤ/nℤ by the following rules:

-   $\overline{a}_n + \overline{b}_n = \overline{(a + b)}_n$
-   $\overline{a}_n - \overline{b}_n = \overline{(a - b)}_n$
-   $\overline{a}_n \overline{b}_n = \overline{(ab)}_n.$

The verification that this is a proper definition uses the properties given before.

In this way, ℤ/nℤ becomes a commutative ring. For example, in the ring ℤ/24ℤ, we have

$$\overline{12}_{24} + \overline{21}_{24} = \overline{33}_{24}= \overline{9}_{24}$$
as in the arithmetic for the 24-hour clock.

We use the notation ℤ/nℤ because this is the quotient ring of ℤ by the ideal nℤ containing all integers divisible by , where 0ℤ is the singleton set }. Thus ℤ/nℤ is a field when nℤ is a maximal ideal, that is, when is prime.

This can also be constructed from the group ℤ under the addition operation alone. The residue class is the group coset of in the quotient group ℤ/nℤ, a cyclic group.[5]

Rather than excluding the special case 0}}, it is more useful to include ℤ/0ℤ (which, as mentioned before, is isomorphic to the ring ℤ of integers), for example, when discussing the characteristic of a ring.

The ring of integers modulo is a finite field if and only if is prime. (this ensures every nonzero element has a multiplicative inverse). If n = p^(k) is a prime power with _k_ > 1, there exists a unique (up to isomorphism) finite field GF(n) = 𝔽_(n) with elements, but this is _not_ ℤ/nℤ, which fails to be a field because it has zero-divisors.

We denote the multiplicative subgroup of the modular integers by (ℤ/nℤ)^(×). This consists of $\overline a_n$ for _a_ coprime to _n_, which are precisely the classes possessing a multiplicative inverse. This forms a commutative group under multiplication, with order φ(n).


Applications

In theoretical mathematics, modular arithmetic is one of the foundations of number theory, touching on almost every aspect of its study, and it is also used extensively in group theory, ring theory, knot theory, and abstract algebra. In applied mathematics, it is used in computer algebra, cryptography, computer science, chemistry and the visual and musical arts.

A very practical application is to calculate checksums within serial number identifiers. For example, International Standard Book Number (ISBN) uses modulo 11 (if issued before 1 January, 2007) or modulo 10 (if issued on or after 1 January, 2007) arithmetic for error detection. Likewise, International Bank Account Numbers (IBANs), for example, make use of modulo 97 arithmetic to spot user input errors in bank account numbers. In chemistry, the last digit of the CAS registry number (a unique identifying number for each chemical compound) is a check digit, which is calculated by taking the last digit of the first two parts of the CAS registry number times 1, the previous digit times 2, the previous digit times 3 etc., adding all these up and computing the sum modulo 10.

In cryptography, modular arithmetic directly underpins public key systems such as RSA and Diffie–Hellman, and provides finite fields which underlie elliptic curves, and is used in a variety of symmetric key algorithms including Advanced Encryption Standard (AES), International Data Encryption Algorithm (IDEA), and RC4. RSA and Diffie–Hellman use modular exponentiation.

In computer algebra, modular arithmetic is commonly used to limit the size of integer coefficients in intermediate calculations and data. It is used in polynomial factorization, a problem for which all known efficient algorithms use modular arithmetic. It is used by the most efficient implementations of polynomial greatest common divisor, exact linear algebra and Gröbner basis algorithms over the integers and the rational numbers.

In computer science, modular arithmetic is often applied in bitwise operations and other operations involving fixed-width, cyclic data structures. The modulo operation, as implemented in many programming languages and calculators, is an application of modular arithmetic that is often used in this context. The logical operator XOR sums 2 bits, modulo 2.

In music, arithmetic modulo 12 is used in the consideration of the system of twelve-tone equal temperament, where octave and enharmonic equivalency occurs (that is, pitches in a 1∶2 or 2∶1 ratio are equivalent, and C-sharp is considered the same as D-flat).

The method of casting out nines offers a quick check of decimal arithmetic computations performed by hand. It is based on modular arithmetic modulo 9, and specifically on the crucial property that 10 ≡ 1 (mod 9).

Arithmetic modulo 7 is used in algorithms that determine the day of the week for a given date. In particular, Zeller's congruence and the Doomsday algorithm make heavy use of modulo-7 arithmetic.

More generally, modular arithmetic also has application in disciplines such as law (see for example, apportionment), economics, (see for example, game theory) and other areas of the social sciences, where proportional division and allocation of resources plays a central part of the analysis.


Computational complexity

Since modular arithmetic has such a wide range of applications, it is important to know how hard it is to solve a system of congruences. A linear system of congruences can be solved in polynomial time with a form of Gaussian elimination, for details see linear congruence theorem. Algorithms, such as Montgomery reduction, also exist to allow simple arithmetic operations, such as multiplication and exponentiation modulo {{math, to be performed efficiently on large numbers.

Some operations, like finding a discrete logarithm or a quadratic congruence appear to be as hard as integer factorization and thus are a starting point for cryptographic algorithms and encryption. These problems might be NP-intermediate.

Solving a system of non-linear modular arithmetic equations is NP-complete.[6]


Example implementations

Below are three reasonably fast C functions, two for performing modular multiplication and one for modular exponentiation on unsigned integers not larger than 63 bits, without overflow of the transient operations.

An algorithmic way to compute $a \cdot b \pmod m$:

    uint64_t mul_mod(uint64_t a, uint64_t b, uint64_t m)
    {
       uint64_t d = 0, mp2 = m >> 1;
       int i;
       if (a >= m) a %= m;
       if (b >= m) b %= m;
       for (i = 0; i < 64; ++i)
       {
           d = (d > mp2) ? (d << 1) - m : d << 1;
           if (a & 0x8000000000000000ULL)
               d += b;
           if (d >= m) d -= m;
           a <<= 1;
       }
       return d;
    }

On computer architectures where an extended precision format with at least 64 bits of mantissa is available (such as the long double type of most x86 C compilers), the following routine is faster than any algorithmic solution, by employing the trick that, by hardware, floating-point multiplication results in the most significant bits of the product kept, while integer multiplication results in the least significant bits kept:

    uint64_t mul_mod(uint64_t a, uint64_t b, uint64_t m)
    {
       long double x;
       uint64_t c;
       int64_t r;
       if (a >= m) a %= m;
       if (b >= m) b %= m;
       x = a;
       c = x * b / m;
       r = (int64_t)(a * b - c * m) % (int64_t)m;
       return r < 0 ? r + m : r;
    }

Below is a C function for performing modular exponentiation, that uses the function implemented above.

An algorithmic way to compute $a^b \pmod m$:

    uint64_t pow_mod(uint64_t a, uint64_t b, uint64_t m)
    {
        uint64_t r = m==1?0:1;
        while (b > 0) {
            if (b & 1)
                r = mul_mod(r, a, m);
            b = b >> 1;
            a = mul_mod(a, a, m);
        }
        return r;
    }

However, for all above routines to work, must not exceed 63 bits.


See also

-   Boolean ring
-   Circular buffer
-   Congruence relation
-   Division (mathematics)
-   Finite field
-   Legendre symbol
-   Modular exponentiation
-   Modulo operation
-   Number theory
-   Pisano period (Fibonacci sequences modulo _n_)
-   Primitive root modulo n
-   Quadratic reciprocity
-   Quadratic residue
-   Rational reconstruction (mathematics)
-   Reduced residue system
-   Serial number arithmetic (a special case of modular arithmetic)
-   Two-element Boolean algebra
-   Topics relating to the group theory behind modular arithmetic:
    -   Cyclic group
    -   Multiplicative group of integers modulo n
-   Other important theorems relating to modular arithmetic:
    -   Carmichael's theorem
    -   Chinese remainder theorem
    -   Euler's theorem
    -   Fermat's little theorem (a special case of Euler's theorem)
    -   Lagrange's theorem
    -   Thue's lemma


Notes


References

-   John L. Berggren. "modular arithmetic". Encyclopædia Britannica.
-   . See in particular chapters 5 and 6 for a review of basic modular arithmetic.

-   Maarten Bullynck "Modular Arithmetic before C.F. Gauss. Systematisations and discussions on remainder problems in 18th-century Germany"
-   Thomas H. Cormen, Charles E. Leiserson, Ronald L. Rivest, and Clifford Stein. _Introduction to Algorithms_, Second Edition. MIT Press and McGraw-Hill, 2001. . Section 31.3: Modular arithmetic, pp. 862–868.
-   Anthony Gioia, _Number Theory, an Introduction_ Reprint (2001) Dover. .
-   -   -


External links

-   -   In this modular art article, one can learn more about applications of modular arithmetic in art.
-   -   An article on modular arithmetic on the GIMPS wiki
-   Modular Arithmetic and patterns in addition and multiplication tables

* Category:Finite rings Category:Group theory

[1]

[2]

[3]

[4] It is a ring, as shown below.

[5] Sengadir T.,

[6]