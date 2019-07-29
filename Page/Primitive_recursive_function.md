In computability theory, a PRIMITIVE RECURSIVE FUNCTION is roughly speaking a function that can be computed by a computer program whose all loops are "for" loops (that is, the number of iterations of a loop can be upper bounded before entering the loop). Primitive recursive functions form a strict subset of those general recursive functions that are also total functions.

The importance of primitive recursive functions lies on the fact that most computable functions that are studied in number theory (and more generally in mathematics) are primitive recursive. For example, addition and division, the factorial and exponential function, and the function which returns the _n_th prime are all primitive recursive.[1] In fact, for showing that a computable function is primitive recursive, it suffices to show that its computational complexity is upper bounded by a primitive recursive function of the input size. It follows that it is difficult to devise a computable function that is _not_ primitive recursive, although some are known (see the section on Limitations below).

The set of primitive recursive functions is known as PR in computational complexity theory.


Definition

The primitive recursive functions are among the number-theoretic functions, which are functions from the natural numbers (nonnegative integers) {0, 1, 2, ...} to the natural numbers. These functions take _n_ arguments for some natural number _n_ and are called _n_-ary.

The basic primitive recursive functions are given by these axioms:

More complex primitive recursive functions can be obtained by applying the operations given by these axioms: Example. We take _f_(_x_) as the _S_(_x_) defined above. This f is a 1-ary primitive recursive function. And so is _g_(_x_) = _S_(_x_). So _h_(_x_) defined as _f_(_g_(_x_)) = _S_(_S_(_x_)) is a primitive recursive 1-ary function too. Informally speaking, _h_(_x_) is the function that turns _x_ into _x_+2. Example. Suppose _f_(_x_) = _P_₁¹(_x_) = _x_ and _g_(_x_,_y_,_z_)= _S_(_P_₂³(_x_,_y_,_z_)) = _S_(_y_). Then _h_(0,_x_) = _x_ and _h_(_S_(_y_),_x_) = _g_(_y_,_h_(_y_,_x_),_x_) = _S_(_h_(_y_,_x_)). Now _h_(0,1) = 1, _h_(1,1) = _S_(_h_(0,1)) = 2, _h_(2,1) = _S_(_h_(1,1)) = 3. This _h_ is a 2-ary primitive recursive function. We can call it 'addition'.

Interpretation. The function _h_ acts as a For loop from 0 up to the value of its first argument. The rest of the arguments for _h_, denoted here with _x__(_i_)’s (_i_ = 1, ..., _k_), are a set of initial conditions for the For loop which may be used by it during calculations but which are immutable by it. The functions _f_ and _g_ on the right side of the equations which define _h_ represent the body of the loop, which performs calculations. Function _f_ is only used once to perform initial calculations. Calculations for subsequent steps of the loop are performed by _g_. The first parameter of _g_ is fed the “current” value of the For loop’s index. The second parameter of _g_ is fed the result of the For loop’s previous calculations, from previous steps. The rest of the parameters for _g_ are those immutable initial conditions for the For loop mentioned earlier. They may be used by _g_ to perform calculations but they will not themselves be altered by _g_.

The PRIMITIVE RECURSIVE functions are the basic functions and those obtained from the basic functions by applying these operations a finite number of times.

Role of the projection functions

The projection functions can be used to avoid the apparent rigidity in terms of the arity of the functions above; by using compositions with various projection functions, it is possible to pass a subset of the arguments of one function to another function. For example, if _g_ and _h_ are 2-ary primitive recursive functions then

_f_(_a_, _b_, _c_) = _g_(_h_(_c_, _a_), _h_(_a_, _b_))​
is also primitive recursive. One formal definition using projection functions is

_f_(_a_, _b_, _c_) = _g_(_h_(_P_₃³(_a_, _b_, _c_), _P_₁³(_a_, _b_, _c_)), _h_(_P_₁³(_a_, _b_, _c_), _P_₂³(_a_, _b_, _c_))).

Converting predicates to numeric functions

In some settings it is natural to consider primitive recursive functions that take as inputs tuples that mix numbers with truth values (that is _t_ for true and _f_ for false), or that produce truth values as outputs.[2] This can be accomplished by identifying the truth values with numbers in any fixed manner. For example, it is common to identify the truth value _t_ with the number 1 and the truth value _f_ with the number 0. Once this identification has been made, the characteristic function of a set _A_, which always returns 1 or 0, can be viewed as a predicate that tells whether a number is in the set _A_. Such an identification of predicates with numeric functions will be assumed for the remainder of this article.

Computer language definition

An example of a primitive recursive programming language is one that contains basic arithmetic operators (e.g. + and −, or ADD and SUBTRACT), conditionals and comparison (IF-THEN, EQUALS, LESS-THAN), and bounded loops, such as the basic for loop, where there is a known or calculable upper bound to all loops (FOR i FROM 1 to n, with neither i nor n modifiable by the loop body). No control structures of greater generality, such as while loops or IF-THEN plus GOTO, are admitted in a primitive recursive language. Douglas Hofstadter's BlooP in _Gödel, Escher, Bach_ is one such. Adding unbounded loops (WHILE, GOTO) makes the language partially recursive, or Turing-complete; Floop is such, as are almost all real-world computer languages.

Arbitrary computer programs, or Turing machines, cannot in general be analyzed to see if they halt or not (the halting problem). However, all primitive recursive functions halt. This is not a contradiction; primitive recursive programs are a non-arbitrary subset of all possible programs, constructed specifically to be analyzable.


Examples

Most number-theoretic functions definable using recursion on a single variable are primitive recursive. Basic examples include the addition and truncated subtraction functions.

Addition

Intuitively, addition can be recursively defined with the rules:

_a__d__d_(0, _x_) = _x_
,

_a__d__d_(_n_ + 1, _x_) = _a__d__d_(_n_, _x_) + 1

To fit this into a strict primitive recursive definition, define:

_a__d__d_(0, _x_) = _P_₁¹(_x_),

_a__d__d_(_S_(_n_), _x_) = _S_(_P_₂³(_n_, _a__d__d_(_n_, _x_), _x_))

Here S(_n_) is "the successor of _n_" (i.e., _n_+1), _P_₁¹ is the identity function, and _P_₂³ is the projection function that takes 3 arguments and returns the second one. Functions _f_ and _g_ required by the above definition of the primitive recursion operation are respectively played by _P_₁¹ and the composition of _S_ and _P_₂³.

Subtraction

Because primitive recursive functions use natural numbers rather than integers, and the natural numbers are not closed under subtraction, a truncated subtraction function (also called "proper subtraction") is studied in this context. This limited subtraction function sub(_a_, _b_) [or _b_ ∸ _a_] returns _b_ - _a_ if this is nonnegative and returns _0_ otherwise.

The PREDECESSOR FUNCTION acts as the opposite of the successor function and is recursively defined by the rules:

    pred(0) = 0,
    pred(_n_ + 1) = _n_.

These rules can be converted into a more formal definition by primitive recursion:

    pred(0) = 0,
    pred(S(_n_)) = _P_₁²(_n_, pred(_n_)).

The limited subtraction function is definable from the predecessor function in a manner analogous to the way addition is defined from successor:

    sub(0, _x_) = _P_₁¹(_x_),
    sub(S(_n_), _x_) = pred(_P_₂³(_n_, sub(_n_, _x_), _x_)).

Here sub(_a_, _b_) corresponds to _b_ ∸ _a_; for the sake of simplicity, the order of the arguments has been switched from the "standard" definition to fit the requirements of primitive recursion. This could easily be rectified using composition with suitable projections.

Other operations on natural numbers

Exponentiation and primality testing are primitive recursive. Given primitive recursive functions _e_, _f_, _g_, and _h_, a function that returns the value of _g_ when _e_≤_f_ and the value of _h_ otherwise is primitive recursive.

Operations on integers and rational numbers

By using Gödel numberings, the primitive recursive functions can be extended to operate on other objects such as integers and rational numbers. If integers are encoded by Gödel numbers in a standard way, the arithmetic operations including addition, subtraction, and multiplication are all primitive recursive. Similarly, if the rationals are represented by Gödel numbers then the field operations are all primitive recursive.


Use in first-order Peano arithmetic

In first-order Peano arithmetic, there are infinitely many variables (0-ary symbols) but no k-ary non-logical symbols with k>0 other than S, +, *, and ≤. Thus in order to define primitive recursive functions one has to use the following trick by Gödel.

By using a Gödel numbering for sequences, for example Gödel's β function, any sequence of numbers can be encoded by a single number. Such a number can therefore represent the primitive recursive function until a given n.

Let _h_ be a 1-ary primitive recursion function defined by:

_h_(0) = _C_

_h_(_n_ + 1) = _g_(_n_, _h_(_n_))
where C is a constant and _g_ is an already defined function.

Using Gödel's β function, for any sequence of natural numbers (k₀, k₁, …, k_(n)), there are natural numbers b and c such that, for every i ≤ n, β(b, c, i) = k_(i). We may thus use the following formula to define _h_; more precisely, _m_=_h_(_n_) is a shorthand for the following:

∃_b_ : ∃_c_ : _β_(_b_, _c_, 0) = _C_ ∧ ∀_i_ : (_i_ < _n_) → (_β_(_b_, _c_, _i_ + 1) = _g_(_i_, _β_(_b_, _c_, _i_))) ∧ (_m_ = _β_(_b_, _c_, _n_))
and the equating to _g_, being already defined, is in fact shorthand for some other already defined formula (as is β, whose formula is given here).

The generalization to any k-ary primitive recursion function is trivial.


Relationship to recursive functions

The broader class of partial recursive functions is defined by introducing an unbounded search operator. The use of this operator may result in a partial function, that is, a relation with _at most_ one value for each argument, but does not necessarily have _any_ value for any argument (see domain). An equivalent definition states that a partial recursive function is one that can be computed by a Turing machine. A total recursive function is a partial recursive function that is defined for every input.

Every primitive recursive function is total recursive, but not all total recursive functions are primitive recursive. The Ackermann function _A_(_m_,_n_) is a well-known example of a total recursive function (in fact, provable total), that is not primitive recursive. There is a characterization of the primitive recursive functions as a subset of the total recursive functions using the Ackermann function. This characterization states that a function is primitive recursive if and only if there is a natural number _m_ such that the function can be computed by a Turing machine that always halts within A(_m_,_n_) or fewer steps, where _n_ is the sum of the arguments of the primitive recursive function.[3]

An important property of the primitive recursive functions is that they are a recursively enumerable subset of the set of all total recursive functions (which is not itself recursively enumerable). This means that there is a single computable function _f_(_m_,_n_) that enumerates the primitive recursive functions, namely:

-   For every primitive recursive function _g_, there is an _m_ such that _g_(_n_) = _f_(_m_,_n_) for all _n_, and
-   For every _m_, the function _h_(_n_) = _f_(_m_,_n_) is primitive recursive.

_f_ can be explicitly constructed by iteratively repeating all possible ways of creating primitive recursive functions. Thus, it is provably total. One can use a diagonalization argument to show that _f_ is not recursive primitive in itself: had it been such, so would be _h_(_n_) = _f_(_n_,_n_)+1. But if this equals some primitive recursive function, there is an _m_ such that _h_(_n_) = _f_(_m_,_n_) for all _n_, and then _h_(_m_) = _f_(_m_,_m_), leading to contradiction.

However, the set of primitive recursive functions is not the _largest_ recursively enumerable subset of the set of all total recursive functions. For example, the set of provably total functions (in Peano arithmetic) is also recursively enumerable, as one can enumerate all the proofs of the theory. While all primitive recursive functions are provably total, the converse is not true.


Limitations

Primitive recursive functions tend to correspond very closely with our intuition of what a computable function must be. Certainly the initial functions are intuitively computable (in their very simplicity), and the two operations by which one can create new primitive recursive functions are also very straightforward. However, the set of primitive recursive functions does not include every possible total computable function—this can be seen with a variant of Cantor's diagonal argument. This argument provides a total computable function that is not primitive recursive. A sketch of the proof is as follows:

    The primitive recursive functions of one argument (i.e., unary functions) can be computably enumerated. This enumeration uses the definitions of the primitive recursive functions (which are essentially just expressions with the composition and primitive recursion operations as operators and the basic primitive recursive functions as atoms), and can be assumed to contain every definition once, even though a same _function_ will occur many times on the list (since many definitions define the same function; indeed simply composing by the identity function generates infinitely many definitions of any one primitive recursive function). This means that the -th definition of a primitive recursive function in this enumeration can be effectively determined from . Indeed if one uses some Gödel numbering to encode definitions as numbers, then this -th definition in the list is computed by a primitive recursive function of . Let denote the unary primitive recursive function given by this definition.

    Now define the "evaluator function" with two arguments, by _f__(_i_)(_j_)}}. Clearly is total and computable, since one can effectively determine the definition of , and being a primitive recursive function is itself total and computable, so is always defined and effectively computable. However a diagonal argument will show that the function of two arguments is not primitive recursive.

    Suppose were primitive recursive, then the unary function defined by S(_ev_(_i_,_i_))}} would also be primitive recursive, as it is defined by composition from the successor function and . But then occurs in the enumeration, so there is some number such that _f__(_n_)}}. But now S(_ev_(_n_,_n_)) {{=}} S(_f__(_n_)(_n_)) {{=}} S(_g_(_n_))}} gives a contradiction.

This argument can be applied to any class of computable (total) functions that can be enumerated in this way, as explained in the article Machines that always halt. Note however that the _partial_ computable functions (those that need not be defined for all arguments) can be explicitly enumerated, for instance by enumerating Turing machine encodings.

Other examples of total recursive but not primitive recursive functions are known:

-   The function that takes _m_ to Ackermann(_m_,_m_) is a unary total recursive function that is not primitive recursive.
-   The Paris–Harrington theorem involves a total recursive function that is not primitive recursive. Because this function is motivated by Ramsey theory, it is sometimes considered more "natural" than the Ackermann function.
-   The Sudan function
-   The Goodstein function


Some common primitive recursive functions

    The following examples and definitions are from Kleene (1952) pp. 223–231 — many appear with proofs. Most also appear with similar names, either as proofs or as examples, in Boolos-Burgess-Jeffrey 2002 pp. 63–70; they add #22 the logarithm lo(x, y) or lg(x, y) depending on the exact derivation.

In the following we observe that primitive recursive functions can be of four types:

1.  _functions_ for short: "number-theoretic functions" from { 0, 1, 2, ...} to { 0, 1, 2, ...},
2.  _predicates_: from { 0, 1, 2, ...} to truth values { t =true, f =false },
3.  _propositional connectives_: from truth values { t, f } to truth values { t, f },
4.  _representing functions_: from truth values { t, f } to { 0, 1, 2, ... }. Many times a predicate requires a representing function to convert the predicate's output { t, f } to { 0, 1 } (note the order "t" to "0" and "f" to "1" matches with ~sg( ) defined below). By definition a function φ(X) is a "representing function" of the predicate P(X) if φ takes only values 0 and 1 and produces _0_ when P is true".

In the following the mark " ' ", e.g. a', is the primitive mark meaning "the successor of", usually thought of as " +1", e.g. a +1 =_(def) a'. The functions 16-20 and #G are of particular interest with respect to converting primitive recursive predicates to, and extracting them from, their "arithmetical" form expressed as Gödel numbers.

:# Addition: a+b

:# Multiplication: a×b

:# Exponentiation: a^(b)

:# Factorial a! : 0! = 1, a'! = a!×a'

:# pred(a): (Predecessor or decrement): If a > 0 then a-1 else 0

:# Proper subtraction a ∸ b: If a ≥ b then a-b else 0

:# Minimum(a₁, ... a_(n))

:# Maximum(a₁, ... a_(n))

:# Absolute difference: | a-b | =_(def) (a ∸ b) + (b ∸ a)

:# ~sg(a): NOT[signum(a)]: If a=0 then 1 else 0

:# sg(a): signum(a): If a=0 then 0 else 1

:# a | b: (a divides b): If b=k×a for some k then 0 else 1

:# Remainder(a, b): the leftover if b does not divide a "evenly". Also called MOD(a, b)

:# a = b: sg | a - b | (Kleene's convention was to represent _true_ by 0 and _false_ by 1; presently, especially in computers, the most common convention is the reverse, namely to represent _true_ by 1 and _false_ by 0, which amounts to changing sg into ~sg here and in the next item)

:# a < b: sg( a' ∸ b )

:# Pr(a): a is a prime number Pr(a) =_(def) a>1 & NOT(Exists c)_(1<c<a) [ c|a ]

:# p_(i): the i+1-st prime number

:# (a)_(i): exponent of p_(i) in a: the unique x such that p_(i)^(x)|a & NOT(p_(i)^(x')|a)

:# lh(a): the "length" or number of non-vanishing exponents in a

:# lo(a, b): logarithm of a to the base b

    ''In the following, the abbreviation X =_(def) x₁, ... x_(n); subscripts may be applied if the meaning requires.

-   #A: A function φ definable explicitly from functions Ψ and constants q₁, ... q_(n) is primitive recursive in Ψ.
-   #B: The finite sum Σ_(y<z) ψ(X, y) and product Π_(y<z)ψ(X, y) are primitive recursive in ψ.
-   #C: A _predicate_ P obtained by substituting functions χ₁,..., χ_(m) for the respective variables of a predicate Q is primitive recursive in χ₁,..., χ_(m), Q.
-   #D: The following _predicates_ are primitive recursive in Q and R:

::* NOT_Q(X) .

::* Q OR R: Q(X) V R(X),

::* Q AND R: Q(X) & R(X),

::* Q IMPLIES R: Q(X) → R(X)

::* Q is equivalent to R: Q(X) ≡ R(X)

-   #E: The following _predicates_ are primitive recursive in the _predicate_ R:

::* (Ey)_(y<z) R(X, y) where (Ey)_(y<z) denotes "there exists at least one y that is less than z such that"

::* (y)_(y<z) R(X, y) where (y)_(y<z) denotes "for all y less than z it is true that"

::* μy_(y<z) R(X, y). The operator μy_(y<z) R(X, y) is a _bounded_ form of the so-called minimization- or mu-operator: Defined as "the least value of y less than z such that R(X, y) is true; or z if there is no such value."

-   #F: Definition by cases: The function defined thus, where Q₁, ..., Q_(m) are mutually exclusive _predicates_ (or "ψ(X) shall have the value given by the first clause that applies), is primitive recursive in φ₁, ..., Q₁, ... Q_(m):



        φ(X) =
        -   φ₁(X) if Q₁(X) is true,
        -   . . . . . . . . . . . . . . . . . . .
        -   φ_(m)(X) if Q_(m)(X) is true
        -   φ_(m+1)(X) otherwise

-   #G: If φ satisfies the equation:



        φ(y,X) = χ(y, NOT-φ(y; x₂, ... x_(n) ), x₂, ... x_(n) then φ is primitive recursive in χ. 'So, in a sense the knowledge of the value NOT-φ(y; X_(2\ to\ n) ) of the course-of-values function is equivalent to the knowledge of the sequence of values φ(0,X_(2\ to\ n)), ..., φ(y-1,X_(2\ to\ n)) of the original function."


Additional primitive recursive forms

Some additional forms of recursion also define functions that are in fact primitive recursive. Definitions in these forms may be easier to find or more natural for reading or writing. Course-of-values recursion defines primitive recursive functions. Some forms of mutual recursion also define primitive recursive functions.

The functions that can be programmed in the LOOP programming language are exactly the primitive recursive functions. This gives a different characterization of the power of these functions. The main limitation of the LOOP language, compared to a Turing-complete language, is that in the LOOP language the number of times that each loop will run is specified before the loop begins to run.


Finitism and consistency results

The primitive recursive functions are closely related to mathematical finitism, and are used in several contexts in mathematical logic where a particularly constructive system is desired. Primitive recursive arithmetic (PRA), a formal axiom system for the natural numbers and the primitive recursive functions on them, is often used for this purpose.

PRA is much weaker than Peano arithmetic, which is not a finitistic system. Nevertheless, many results in number theory and in proof theory can be proved in PRA. For example, Gödel's incompleteness theorem can be formalized into PRA, giving the following theorem:

    If _T_ is a theory of arithmetic satisfying certain hypotheses, with Gödel sentence _G__(_T_), then PRA proves the implication Con(_T_)→_G__(_T_).

Similarly, many of the syntactic results in proof theory can be proved in PRA, which implies that there are primitive recursive functions that carry out the corresponding syntactic transformations of proofs.

In proof theory and set theory, there is an interest in finitistic consistency proofs, that is, consistency proofs that themselves are finitistically acceptable. Such a proof establishes that the consistency of a theory _T_ implies the consistency of a theory _S_ by producing a primitive recursive function that can transform any proof of an inconsistency from _S_ into a proof of an inconsistency from _T_. One sufficient condition for a consistency proof to be finitistic is the ability to formalize it in PRA. For example, many consistency results in set theory that are obtained by forcing can be recast as syntactic proofs that can be formalized in PRA.


History

Recursive definitions had been used more or less formally in mathematics before, but the construction of primitive recursion is traced back to Richard Dedekind's theorem 126 of his _Was sind und was sollen die Zahlen?_ (1888). This work was the first to give a proof that a certain recursive construction defines a unique function.[4][5][6]

Primitive recursive arithmetic was first proposed by Thoralf Skolem[7] in 1923.

The current terminology was coined by Rózsa Péter (1934) after Ackermann had proved in 1928 that the function which today is named after him was not primitive recursive, an event which prompted the need to rename what until then were simply called recursive functions.[8][9]


See also

-   Grzegorczyk hierarchy
-   Recursion (computer science)
-   Primitive recursive functional
-   Double recursion
-   Primitive recursive set function
-   Primitive recursive ordinal function


Notes


References

-   Brainerd, W.S., Landweber, L.H. (1974), _Theory of Computation_, Wiley,
-   Robert I. Soare, _Recursively Enumerable Sets and Degrees_, Springer-Verlag, 1987.
-   Stephen Kleene (1952) _Introduction to Metamathematics_, North-Holland Publishing Company, New York, 11th reprint 1971: (2nd edition notes added on 6th reprint). In Chapter XI. General Recursive Functions §57
-   George Boolos, John Burgess, Richard Jeffrey (2002), _Computability and Logic: Fourth Edition_, Cambridge University Press, Cambridge, UK. Cf pp. 70–71.
-   Robert I. Soare 1995 _Computability and Recursion_ http://www.people.cs.uchicago.edu/~soare/History/compute.pdf
-   Daniel Severin 2008, _Unary primitive recursive functions_, J. Symbolic Logic Volume 73, Issue 4, pp. 1122–1138 arXiv projecteuclid

Category:Computability theory Category:Theory of computation Category:Functions and mappings Category:Recursion

[1] Brainerd and Landweber, 1974

[2] Kleene [1952 pp. 226–227]

[3] This follows from the facts that the functions of this form are the most quickly growing primitive recursive functions, and that a function is primitive recursive if and only if its time complexity is bounded by a primitive recursive function. For the former, see . For the latter, see

[4]

[5]

[6]

[7] Thoralf Skolem (1923) "The foundations of elementary arithmetic" in Jean van Heijenoort, translator and ed. (1967) _From Frege to Gödel: A Source Book in Mathematical Logic, 1879-1931_. Harvard Univ. Press: 302-33.

[8]

[9]