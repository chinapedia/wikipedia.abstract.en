10,000_digits_of_pi_-_poster.svg can be computed to arbitrary precision.]] In mathematics, COMPUTABLE NUMBERS are the real numbers that can be computed to within any desired precision by a finite, terminating algorithm. They are also known as the RECURSIVE NUMBERS or the COMPUTABLE REALS or RECURSIVE REALS.

Equivalent definitions can be given using μ-recursive functions, Turing machines, or λ-calculus as the formal representation of algorithms. The computable numbers form a real closed field and can be used in the place of real numbers for many, but not all, mathematical purposes.


Informal definition using a Turing machine as example

In the following, Marvin Minsky defines the numbers to be computed in a manner similar to those defined by Alan Turing in 1936; i.e., as "sequences of digits interpreted as decimal fractions" between 0 and 1:

    "A computable number [is] one for which there is a Turing machine which, given _n_ on its initial tape, terminates with the _nth_ digit of that number [encoded on its tape]." (Minsky 1967:159)

The key notions in the definition are (1) that some _n_ is specified at the start, (2) for any _n_ the computation only takes a finite number of steps, after which the machine produces the desired output and terminates.

An alternate form of (2) – the machine successively prints all n of the digits on its tape, halting after printing the n^(th) – emphasizes Minsky's observation: (3) That by use of a Turing machine, a _finite_ definition – in the form of the machine's table – is being used to define what is a potentially-_infinite_ string of decimal digits.

This is however not the modern definition which only requires the result be accurate to within any given accuracy. The informal definition above is subject to a rounding problem called the table-maker's dilemma whereas the modern definition is not.


Formal definition

A real number _a_ is COMPUTABLE if it can be approximated by some computable function f : ℕ → ℤ in the following manner: given any positive integer _n_, the function produces an integer _f_(_n_) such that:

$${f(n)-1\over n} \leq a \leq {f(n)+1\over n}.$$

There are two similar definitions that are equivalent:

-   There exists a computable function which, given any positive rational error bound ε, produces a rational number _r_ such that |r − a| ≤ ε.
-   There is a computable sequence of rational numbers q_(i) converging to a such that |q_(i) − q_(i + 1)| < 2^( − i)  for each _i_.

There is another equivalent definition of computable numbers via computable Dedekind cuts. A COMPUTABLE DEDEKIND CUT is a computable function D  which when provided with a rational number r as input returns D(r) = true  or D(r) = false , satisfying the following conditions:

∃_r__D_(_r_) = _t__r__u__e_ 

∃_r__D_(_r_) = _f__a__l__s__e_ 

(_D_(_r_) = _t__r__u__e_) ∧ (_D_(_s_) = _f__a__l__s__e_) ⇒ _r_ < _s_ 

$$D(r)=\mathrm{true} \Rightarrow \exist s>r, D(s)=\mathrm{true}.\;$$
An example is given by a program _D_ that defines the cube root of 3. Assuming q > 0  this is defined by:

_p_³ < 3_q_³ ⇒ _D_(_p_/_q_) = _t__r__u__e_ 

_p_³ > 3_q_³ ⇒ _D_(_p_/_q_) = _f__a__l__s__e_. 

A real number is computable if and only if there is a computable Dedekind cut _D_ corresponding to it. The function _D_ is unique for each computable number (although of course two different programs may provide the same function).

A complex number is called computable if its real and imaginary parts are computable.


Properties

Countable but not computably enumerable

While the set of real numbers is uncountable, the set of computable numbers is only countable and thus almost all real numbers are not computable. That the computable numbers are at most countable intuitively comes from the fact that they are produced by Turing machines, of which there are only countably many. More precisely, assigning a Gödel number to each Turing machine definition produces a subset S of the natural numbers corresponding to the computable numbers and identifies a surjection from S to the computable numbers, which shows that the computable numbers are subcountable. Moreover, for any computable number x, the well ordering principle provides that there is a minimal element in S which corresponds to x, and therefore there exists a subset S₁ ⊂ S consisting of the minimal elements, on which the map is a bijection. The inverse of this bijection is an injection into the natural numbers of the computable numbers, proving that they are countable.

The set S of these Gödel numbers, however, is not computably enumerable (nor consequently is S₁), even though the computable reals are themselves ordered. This is because there is no algorithm to determine which Gödel numbers correspond to Turing machines that produce computable reals. In order to produce a computable real, a Turing machine must compute a total function, but the corresponding decision problem is in Turing degree 0′′. Consequently, there is no surjective computable function from the natural numbers to the computable reals, and Cantor's diagonal argument cannot be used constructively to demonstrate uncountably many of them.

Properties as a field

The arithmetical operations on computable numbers are themselves computable in the sense that whenever real numbers _a_ and _b_ are computable then the following real numbers are also computable: _a + b_, _a - b_, _ab_, and _a/b_ if _b_ is nonzero. These operations are actually _uniformly computable_; for example, there is a Turing machine which on input (_A_,_B_,ϵ) produces output _r_, where _A_ is the description of a Turing machine approximating _a_, _B_ is the description of a Turing machine approximating _b_, and _r_ is an ϵ approximation of _a_+_b_.

The fact that computable real numbers form a field was first proved by Henry Gordon Rice (1954).

Computable reals do not form however a computable field, because the definition of the latter notion requires effective equality.

Non-computability of the ordering

The order relation on the computable numbers is not computable. Let _A_ be the description of a Turing machine approximating the number a. Then there is no Turing machine which on input _A_ outputs "YES" if a > 0 and "NO" if a ≤ 0. To see why, suppose the machine described by _A_ keeps outputting 0 as ϵ approximations. It is not clear how long to wait before deciding that the machine will _never_ output an approximation which forces _a_ to be positive. Thus the machine will eventually have to guess that the number will equal 0, in order to produce an output; the sequence may later become different from 0. This idea can be used to show that the machine is incorrect on some sequences if it computes a total function. A similar problem occurs when the computable reals are represented as Dedekind cuts. The same holds for the equality relation : the equality test is not computable.

While the full order relation is not computable, the restriction of it to pairs of unequal numbers is computable. That is, there is a program that takes as input two Turing machines _A_ and _B_ approximating numbers _a_ and _b_, where _a_ ≠ _b_, and outputs whether a < b or a > b. It is sufficient to use _ε_-approximations where ε < |b − a|/2, so by taking increasingly small ε (approaching 0), one eventually can decide whether a < b or a > b.

Other properties

The computable real numbers do not share all the properties of the real numbers used in analysis. For example, the least upper bound of a bounded increasing computable sequence of computable real numbers need not be a computable real number (Bridges and Richman, 1987:58). A sequence with this property is known as a Specker sequence, as the first construction is due to E. Specker (1949). Despite the existence of counterexamples such as these, parts of calculus and real analysis can be developed in the field of computable numbers, leading to the study of computable analysis.

Every computable number is definable, but not vice versa. There are many definable, noncomputable real numbers, including:

-   any number that encodes the solution of the halting problem (or any other undecidable problem) according to a chosen encoding scheme.
-   Chaitin's constant, Ω, which is a type of real number that is Turing equivalent to the halting problem.

Both of these examples in fact define an infinite set of definable, uncomputable numbers, one for each Universal Turing machine. A real number is computable if and only if the set of natural numbers it represents (when written in binary and viewed as a characteristic function) is computable.

Every computable number is arithmetical.

The set of computable real numbers (as well as every countable, densely ordered subset of computable reals without ends) is order-isomorphic to the set of rational numbers.


Digit strings and the Cantor and Baire spaces

Turing's original paper defined computable numbers as follows:

    A real number is computable if its digit sequence can be produced by some algorithm or Turing machine. The algorithm takes an integer n ≥ 1 as input and produces the n-th digit of the real number's decimal expansion as output.

(Note that the decimal expansion of _a_ only refers to the digits following the decimal point.)

Turing was aware that this definition is equivalent to the ϵ-approximation definition given above. The argument proceeds as follows: if a number is computable in the Turing sense, then it is also computable in the ϵ sense: if n > log₁₀(1/ϵ), then the first _n_ digits of the decimal expansion for _a_ provide an ϵ approximation of _a_. For the converse, we pick an ϵ computable real number _a_ and generate increasingly precise approximations until the _n_th digit after the decimal point is certain. This always generates a decimal expansion equal to _a_ but it may improperly end in an infinite sequence of 9's in which case it must have a finite (and thus computable) proper decimal expansion.

Unless certain topological properties of the real numbers are relevant it is often more convenient to deal with elements of 2^(ω) (total 0,1 valued functions) instead of reals numbers in [0, 1]. The members of 2^(ω) can be identified with binary decimal expansions but since the decimal expansions .d₁d₂…d_(n)0111… and .d₁d₂…d_(n)10 denote the same real number the interval [0, 1] can only be bijectively (and homeomorphically under the subset topology) identified with the subset of 2^(ω) not ending in all 1's.

Note that this property of decimal expansions means it's impossible to effectively identify computable real numbers defined in terms of a decimal expansion and those defined in the ϵ approximation sense. Hirst has shown there is no algorithm which takes as input the description of a Turing machine which produces ϵ approximations for the computable number _a_, and produces as output a Turing machine which enumerates the digits of _a_ in the sense of Turing's definition (see Hirst 2007). Similarly it means that the arithmetic operations on the computable reals are not effective on their decimal representations as when adding decimal numbers, in order to produce one digit it may be necessary to look arbitrarily far to the right to determine if there is a carry to the current location. This lack of uniformity is one reason that the contemporary definition of computable numbers uses ϵ approximations rather than decimal expansions.

However, from a computational or measure theoretic perspective the two structures 2^(ω) and [0, 1] are essentially identical, and computability theorists often refer to members of 2^(ω) as reals. While [0, 1] 2^(ω) is totally disconnected for questions about Π₁⁰ classes or randomness it's much less messy to work in 2^(ω).

Elements of ω^(ω) are sometimes called reals as well and though containing a homeomorphic image of ℝ ω^(ω) in addition to being totally disconnected isn't even locally compact. This leads to genuine differences in the computational properties. For instance the x ∈ ℝ satisfying ∀(n ∈ ω)ϕ(x, n) with ϕ(x, n) quantifier free must be computable while the unique x ∈ ω^(ω) satisfying a universal formula can be arbitrarily high in the hyperarithmetic hierarchy.


Can computable numbers be used instead of the reals?

The computable numbers include many of the specific real numbers which appear in practice, including all real algebraic numbers, as well as _e_, _π_, and many other transcendental numbers. Though the computable reals exhaust those reals we can calculate or approximate, the assumption that all reals are computable leads to substantially different conclusions about the real numbers. The question naturally arises of whether it is possible to dispose of the full set of reals and use computable numbers for all of mathematics. This idea is appealing from a constructivist point of view, and has been pursued by what Bishop and Richman call the _Russian school_ of constructive mathematics.

To actually develop analysis over computable numbers, some care must be taken. For example, if one uses the classical definition of a sequence, the set of computable numbers is not closed under the basic operation of taking the supremum of a bounded sequence (for example, consider a Specker sequence). This difficulty is addressed by considering only sequences which have a computable modulus of convergence. The resulting mathematical theory is called computable analysis.


Implementation

There are some computer packages that work with computable real numbers, representing the real numbers as programs computing approximations. One example is the RealLib package.


See also

-   Definable number
-   Semicomputable function
-   Transcomputational problem


References

-   This paper describes the development of the calculus over the computable number field.

-   -   -   -   — expands on the topics of this article.

-   -
    Computable numbers (and Turing's a-machines) were introduced in this paper; the definition of computable numbers uses infinite decimal sequences.

-   §1.3.2 introduces the definition by nested sequences of intervals converging to the singleton real. Other representations are discussed in §4.1.

-   -   -

Category:Computability theory Category:Theory of computation