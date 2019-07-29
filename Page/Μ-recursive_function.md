In mathematical logic and computer science, the GENERAL RECURSIVE FUNCTIONS (often shortened to RECURSIVE FUNCTIONS) or Μ-RECURSIVE FUNCTIONS are a class of partial functions from natural numbers to natural numbers that are "computable" in an intuitive sense. In computability theory, it is shown that the μ-recursive functions are precisely the functions that can be computed by Turing machines[1]{{#tag:ref| Proof outline on p.153: λ-definable $\stackrel{triv}{\implies}$ λ-K-definable $\stackrel{160}{\implies}$ Turing computable $\stackrel{161}{\implies}$ μ-recursive $\stackrel{Kleene}{\implies}$[2] λ-definable}}(this is one of the theorems that supports Church–Turing thesis). The μ-recursive functions are closely related to primitive recursive functions, and their inductive definition (below) builds upon that of the primitive recursive functions. However, not every μ-recursive function is a primitive recursive function—the most famous example is the Ackermann function.

Other equivalent classes of functions are the λ-recursive functions and the functions that can be computed by Markov algorithms.

The subset of all _total_ recursive functions with values in is known in computational complexity theory as the complexity class R.


Definition

The Μ-RECURSIVE FUNCTIONS (or PARTIAL Μ-RECURSIVE FUNCTIONS) are partial functions that take finite tuples of natural numbers and return a single natural number. They are the smallest class of partial functions that includes the initial functions and is closed under composition, primitive recursion, and the μ operator.

The smallest class of functions including the initial functions and closed under composition and primitive recursion (i.e. without minimisation) is the class of primitive recursive functions. While all primitive recursive functions are total, this is not true of partial recursive functions; for example, the minimisation of the successor function is undefined. The primitive recursive functions are a subset of the total recursive functions, which are a subset of the partial recursive functions. For example, the Ackermann function can be proven to be total recursive, and to be non-primitive.

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|     int rho(                                                                                                                                                                                                                                                                                                                   |
|         int g(int,int),                                                                                                                                                                                                                                                                                                        |
|         int h(int,int,int,int),                                                                                                                                                                                                                                                                                                |
|         int x0,                                                                                                                                                                                                                                                                                                                |
|         int x1,                                                                                                                                                                                                                                                                                                                |
|         int x2)                                                                                                                                                                                                                                                                                                                |
|     {                                                                                                                                                                                                                                                                                                                          |
|         int res = g(x1,x2);                                                                                                                                                                                                                                                                                                    |
|         for (int i=0; i<x0; ++i)                                                                                                                                                                                                                                                                                               |
|             res = h(i,res,x1,x2);                                                                                                                                                                                                                                                                                              |
|         return res;                                                                                                                                                                                                                                                                                                            |
|     }                                                                                                                                                                                                                                                                                                                          |
|     int mu(                                                                                                                                                                                                                                                                                                                    |
|         int f(int,int,int),                                                                                                                                                                                                                                                                                                    |
|         int x1,                                                                                                                                                                                                                                                                                                                |
|         int x2)                                                                                                                                                                                                                                                                                                                |
|     {                                                                                                                                                                                                                                                                                                                          |
|         for (int i=0; ; ++i)                                                                                                                                                                                                                                                                                                   |
|             if (f(i,x1,x2) == 0)                                                                                                                                                                                                                                                                                               |
|                 return i;                                                                                                                                                                                                                                                                                                      |
|     }                                                                                                                                                                                                                                                                                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| C implementation of ρ and μ for k = 2. Since C is unable to build new functions from given ones, rho(g,h,x0,x1,x2) corresponds to (ρ(g, h))(x₀, x₁, x₂); similar for mu. The code of rho was obtained by tail recursion elimination. Primitive recursion and minimization model a bounded and an unbounded loop, respectively. |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

Initial or "basic" functions: (In the following the subscripting is per Kleene (1952) p. 219. For more about some of the various symbolisms found in the literature see Symbolism below.)

1.  CONSTANT FUNCTION: For each natural number n  and every k :
    _f_(_x_₁, …, _x__(_k_)) = _n_ 
    .

        Alternative definitions use compositions of the successor function and use a ZERO FUNCTION, that always returns zero, in place of the constant function.

2.  SUCCESSOR FUNCTION S:

        $S(x) \stackrel{\mathrm{def}}{=} x + 1\,$

3.  PROJECTION FUNCTION P_(i)^(k) (also called the IDENTITY FUNCTION I_(i)^(k)): For all natural numbers i, k  such that 1 ≤ i ≤ k:

        $P_i^k(x_1,\ldots,x_k) \stackrel{\mathrm{def}}{=} x_i \, .$

Operators:

1.  COMPOSITION OPERATOR ∘  (also called the SUBSTITUTION OPERATOR): Given an m-ary function h(x₁, …, x_(m))  and m k-ary functions g₁(x₁, …, x_(k)), …, g_(m)(x₁, …, x_(k)):
    $$h \circ (g_1, \ldots, g_m) \stackrel{\mathrm{def}}{=} f \quad\text{where}\quad f(x_1,\ldots,x_k) = h(g_1(x_1,\ldots,x_k),\ldots,g_m(x_1,\ldots,x_k))\,.$$

2.  PRIMITIVE RECURSION OPERATOR ρ : Given the _k_-ary function g(x₁, …, x_(k))  and _k_+2 -ary function h(y, z, x₁, …, x_(k)) :

        \begin{align}

            \rho(g, h) &\stackrel{\mathrm{def}}{=} f \quad\text{where the k+1 -ary function } f \text{ is defined by}\\
   f(0,x_1,\ldots,x_k) &= g(x_1,\ldots,x_k) \\
 f(y+1,x_1,\ldots,x_k) &= h(y,f(y,x_1,\ldots,x_k),x_1,\ldots,x_k)\,.\end{align}

1.  MINIMIZATION OPERATOR μ : Given a (_k_+1)-ary total function f(y, x₁, …, x_(k)) , the _k_-ary function μ(f) is defined by:
    :\begin{align}

         \mu(f)(x_1, \ldots, x_k) = z \stackrel{\mathrm{def}}{\iff}\ f(z, x_1, \ldots, x_k)&=0\quad \text{and}\\
            f(i, x_1, \ldots, x_k)&>0 \quad \text{for}\quad i=0, \ldots, z-1.

\end{align}

#:Intuitively, minimisation seeks—beginning the search from 0 and proceeding upwards—the smallest argument that causes the function to return zero; if there is no such argument, the search never terminates.

The STRONG EQUALITY operator ≃ can be used to compare partial μ-recursive functions. This is defined for all partial functions _f_ and _g_ so that

_f_(_x_₁, …, _x__(_k_)) ≃ _g_(_x_₁, …, _x__(_l_))
holds if and only if for any choice of arguments either both functions are defined and their values are equal or both functions are undefined.


Equivalence with other models of computability

In the equivalence of models of computability, a parallel is drawn between Turing machines that do not terminate for certain inputs and an undefined result for that input in the corresponding partial recursive function. The unbounded search operator is not definable by the rules of primitive recursion as those do not provide a mechanism for "infinite loops" (undefined values).


Normal form theorem

A normal form theorem due to Kleene says that for each _k_ there are primitive recursive functions U(y)​ and T(y, e, x₁, …, x_(k))​ such that for any μ-recursive function f(x₁, …, x_(k))​ with _k_ free variables there is an _e_ such that

_f_(_x_₁, …, _x__(_k_)) ≃ _U_(_μ__y_ _T_(_y_, _e_, _x_₁, …, _x__(_k_)))
. The number _e_ is called an INDEX or GÖDEL NUMBER for the function _f_. A consequence of this result is that any μ-recursive function can be defined using a single instance of the μ operator applied to a (total) primitive recursive function.

Minsky (1967) observes (as does Boolos-Burgess-Jeffrey (2002) pp. 94–95) that the U defined above is in essence the μ-recursive equivalent of the universal Turing machine:

    To construct U is to write down the definition of a general-recursive function U(n, x) that correctly interprets the number n and computes the appropriate function of x. to construct U directly would involve essentially the same amount of effort, _and essentially the same ideas_, as we have invested in constructing the universal Turing machine. (italics in original, Minsky (1967) p. 189)


Symbolism

A number of different symbolisms are used in the literature. An advantage to using the symbolism is a derivation of a function by "nesting" of the operators one inside the other is easier to write in a compact form. In the following we will abbreviate the string of parameters x₁, ..., x_(n) as X:

-   CONSTANT FUNCTION: Kleene uses " C_(q)^(n)(X) = q " and Boolos-Burgess-Jeffrey (2002) (B-B-J) use the abbreviation " const_(n)( X) = n ":



        e.g. C₁₃⁷ ( r, s, t, u, v, w, x ) = 13
        e.g. const₁₃ ( r, s, t, u, v, w, x ) = 13

-   SUCCESSOR FUNCTION: Kleene uses x' and S for "Successor". As "successor" is considered to be primitive, most texts use the apostrophe as follows:



        S(a) = a +1 =_(def) a', where 1 =_(def) 0', 2 =_(def) 0 ' ', etc.

-   IDENTITY FUNCTION: Kleene (1952) uses " U_(i)^(n) " to indicate the identity function over the variables x_(i); B-B-J use the identity function id_(i)^(n) over the variables x₁ to x_(n):

    U_(i)^(n)( X ) = id_(i)^(n)( X ) = x_(i)
    e.g. U₃⁷ = id₃⁷ ( r, s, t, u, v, w, x ) = t

-   COMPOSITION (SUBSTITUTION) OPERATOR: Kleene uses a bold-face S_(n)^(m) (not to be confused with his S for "successor" ! ). The superscript "m" refers to the m^(th) of function "f_(m)", whereas the subscript "n" refers to the n^(th) variable "x_(n)":

    If we are given h( X )= g( f₁(X), ... , f_(m)(X) )

        h(X) = S_(m)^(n)(g, f₁, ... , f_(m) )

    In a similar manner, but without the sub- and superscripts, B-B-J write:

        h(_x)= CN[G, F₁ ,..., F_(M)](x_')

-   PRIMITIVE RECURSION: Kleene uses the symbol " R^(n)(base step, induction step) " where n indicates the number of variables, B-B-J use " Pr(base step, induction step)(X)". Given:

:* base step: h( 0, X )= f( X ), and

:* induction step: h( y+1, X ) = g( y, h(y, X),X )

    Example: primitive recursion definition of a + b:
    :* base step: f( 0, a ) = a = U₁¹(a)

    :* induction step: f( b' , a ) = ( f ( b, a ) )' = g( b, f( b, a), a ) = g( b, c, a ) = c' = S(U₂³( b, c, a ))



            R² { U₁¹(a), S [ (U₂³( b, c, a ) ] }
            Pr{ U₁¹(a), S[ (U₂³( b, c, a ) ] }

EXAMPLE: Kleene gives an example of how to perform the recursive derivation of f(b, a) = b + a (notice reversal of variables a and b). He starts with 3 initial functions

:# S(a) = a'

:# U₁¹(a) = a

:# U₂³( b, c, a ) = c

:# g(b, c, a) = S(U₂³( b, c, a )) = c'

:# base step: h( 0, a ) = U₁¹(a)



        induction step: h( b', a ) = g( b, h( b, a ), a )

He arrives at:



        a+b = R²[ U₁¹, S₁³(S, U₂³) ]


Examples

-   Fibonacci number
-   McCarthy 91 function


See also

-   Recursion theory
-   Recursion
-   Recursion (computer science)


References

-   -   -

    On pages 210-215 Minsky shows how to create the μ-operator using the register machine model, thus demonstrating its equivalence to the general recursive functions.

-


External links

-   Stanford Encyclopedia of Philosophy entry
-   A compiler for transforming a recursive function into an equivalent Turing machine

ru:Рекурсивная функция (теория вычислимости)#Частично рекурсивная функция

Category:Computability theory Category:Theory of computation

[1] Stanford Encyclopedia of Philosophy, Entry Recursive Functions, Sect.1.7: "[The class of μ-recursive functions] _turns out to coincide with the class of the Turing-computable functions introduced by Alan Turing as well as with the class of the λ-definable functions introduced by Alonzo Church._"

[2]