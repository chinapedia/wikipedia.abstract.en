LAMBDA CALCULUS (also written as Λ-CALCULUS) is a formal system in mathematical logic for expressing computation based on function abstraction and application using variable binding and substitution. It is a universal model of computation that can be used to simulate any Turing machine. It was first introduced by mathematician Alonzo Church in the 1930s as part of his research of the foundations of mathematics.

Lambda calculus consists of constructing lambda terms and performing reduction operations on them. In the simplest form of lambda calculus, terms are built using only the following rules:

  Syntax   Name          Description
  -------- ------------- -------------------------------------------------------------------------------------------
  x        Variable      A character or string representing a parameter or mathematical/logical value
  (λx.M)   Abstraction   Function definition (M is a lambda term). The variable x becomes bound in the expression.
  (M N)    Application   Applying a function to an argument. M and N are lambda terms.

producing expressions such as: (λ_x_.λ_y_.(λ_z_.(λ_x_._z x_) (λ_y.z y_)) (_x y_)). Parentheses can be dropped if the expression is unambiguous. For some applications, terms for logical and mathematical constants and operations may be included.

The reduction operations include:

  Operation                Name           Description
  ------------------------ -------------- ------------------------------------------------------------------------------------------
  (λx.M[x]) → (λy.M[y])    α-conversion   Renaming the bound (formal) variables in the expression. Used to avoid name collisions.
  ((λx.M) E) → (M[x:=E])   β-reduction    Replacing the bound variable with the argument expression in the body of the abstraction

If De Bruijn indexing is used, then α-conversion is no longer required as there will be no name collisions. If repeated application of the reduction steps eventually terminates, then by the Church-Rosser theorem it will produce a beta normal form.


Explanation and applications

Lambda calculus is Turing complete, that is, it is a universal model of computation that can be used to simulate any Turing machine.[1] Its namesake, the Greek letter lambda (λ), is used in LAMBDA EXPRESSIONS and LAMBDA TERMS to denote binding a variable in a function.

Lambda calculus may be _untyped_ or _typed_. In typed lambda calculus, functions can be applied only if they are capable of accepting the given input's "type" of data. Typed lambda calculi are _weaker_ than the untyped lambda calculus, which is the primary subject of this article, in the sense that _typed lambda calculi can express less_ than the untyped calculus can, but on the other hand typed lambda calculi allow more things to be proved; in the simply typed lambda calculus it is, for example, a theorem that every evaluation strategy terminates for every simply typed lambda-term, whereas evaluation of untyped lambda-terms need not terminate. One reason there are many different typed lambda calculi has been the desire to do more (of what the untyped calculus can do) without giving up on being able to prove strong theorems about the calculus.

Lambda calculus has applications in many different areas in mathematics, philosophy,[2] linguistics,[3][4] and computer science.[5] Lambda calculus has played an important role in the development of the theory of programming languages. Functional programming languages implement the lambda calculus. Lambda calculus is also a current research topic in Category theory.[6]


History

The lambda calculus was introduced by mathematician Alonzo Church in the 1930s as part of an investigation into the foundations of mathematics.[7][8] The original system was shown to be logically inconsistent in 1935 when Stephen Kleene and J. B. Rosser developed the Kleene–Rosser paradox.[9][10]

Subsequently, in 1936 Church isolated and published just the portion relevant to computation, what is now called the untyped lambda calculus.[11] In 1940, he also introduced a computationally weaker, but logically consistent system, known as the simply typed lambda calculus.[12]

Until the 1960s when its relation to programming languages was clarified, the λ-calculus was only a formalism. Thanks to Richard Montague and other linguists' applications in the semantics of natural language, the λ-calculus has begun to enjoy a respectable place in both linguistics[13] and computer science.[14]

Origin of the lambda symbol

There is a bit of controversy over the reason for Church's use of the Greek letter lambda ("λ") as the notation for function-abstraction in the lambda calculus, perhaps in part due to conflicting explanations by Church himself. According to Cardone and Hindley (2006):

  By the way, why did Church choose the notation “λ”? In [an unpublished 1964 letter to Harald Dickson] he stated clearly that it came from the notation “x̂” used for class-abstraction by Whitehead and Russell, by first modifying “x̂” to “∧x” to distinguish function-abstraction from class-abstraction, and then changing “∧” to “λ” for ease of printing.

  This origin was also reported in [Rosser, 1984, p.338]. On the other hand, in his later years Church told two enquirers that the choice was more accidental: a symbol was needed and “λ” just happened to be chosen.

Dana Scott has also addressed this controversy in various public lectures.[15] Scott recounts that he once posed a question about the origin of the lambda symbol to Church's son-in-law John Addison, who then wrote his father-in-law a postcard:

  Dear Professor Church,

  Russell had the iota operator, Hilbert had the epsilon operator. Why did you choose lambda for your operator?

According to Scott, Church's entire response consisted of returning the postcard with the following annotation: "eeny, meeny, miny, moe".


Informal description

Motivation

Computable functions are a fundamental concept within computer science and mathematics. The λ-calculus provides a simple semantics for computation, enabling properties of computation to be studied formally. The λ-calculus incorporates two simplifications that make this semantics simple. The first simplification is that the λ-calculus treats functions "anonymously", without giving them explicit names. For example, the function

square_sum (_x_, _y_) = _x_² + _y_²
can be rewritten in _anonymous form_ as

(_x_, _y_) ↦ _x_² + _y_²
(read as "a tuple of and is mapped to x² + y²"). Similarly,

id (_x_) = _x_
can be rewritten in anonymous form as

_x_ ↦ _x_
where the input is simply mapped to itself.

The second simplification is that the λ-calculus only uses functions of a single input. An ordinary function that requires two inputs, for instance the square_sum  function, can be reworked into an equivalent function that accepts a single input, and as output returns _another_ function, that in turn accepts a single input. For example,

(_x_, _y_) ↦ _x_² + _y_²
can be reworked into

_x_ ↦ (_y_ ↦ _x_² + _y_²)
This method, known as currying, transforms a function that takes multiple arguments into a chain of functions each with a single argument.

Function application of the square_sum  function to the arguments (5, 2), yields at once

    ((x, y) ↦ x² + y²)(5, 2)
     = 5² + 2²
     = 29,

whereas evaluation of the curried version requires one more step

    $\Bigl(\bigl(x \mapsto (y \mapsto x^2 + y^2)\bigr)(5)\Bigr)(2)$
     = (y ↦ 5² + y²)(2) // the definition of x has been used with 5 in the inner expression. This is like β-reduction.
     = 5² + 2² // the definition of y has been used with 2. Again, similar to β-reduction.
     = 29

to arrive at the same result.

The lambda calculus

The lambda calculus consists of a language of LAMBDA TERMS, which is defined by a certain formal syntax, and a set of transformation rules, which allow manipulation of the lambda terms. These transformation rules can be viewed as an equational theory or as an operational definition.

As described above, all functions in the lambda calculus are anonymous functions, having no names. They only accept one input variable, with currying used to implement functions with several variables.

Lambda terms

The syntax of the lambda calculus defines some expressions as valid lambda calculus expressions and some as invalid, just as some strings of characters are valid C programs and some are not. A valid lambda calculus expression is called a "lambda term".

The following three rules give an inductive definition that can be applied to build all syntactically valid lambda terms:

-   a variable, x, is itself a valid lambda term
-   if t is a lambda term, and x is a variable, then (λx.t) is a lambda term (called a LAMBDA ABSTRACTION);
-   if t and s are lambda terms, then (ts) is a lambda term (called an APPLICATION).

Nothing else is a lambda term. Thus a lambda term is valid if and only if it can be obtained by repeated application of these three rules. However, some parentheses can be omitted according to certain rules. For example, the outermost parentheses are usually not written. See _Notation_, below.

A LAMBDA ABSTRACTION λx.t is a definition of an anonymous function that is capable of taking a single input x and substituting it into the expression t. It thus defines an anonymous function that takes x and returns t. For example, λx.x² + 2 is a lambda abstraction for the function f(x) = x² + 2 using the term x² + 2 for t. The definition of a function with a lambda abstraction merely "sets up" the function but does not invoke it. The abstraction binds the variable x in the term t.

An APPLICATION ts represents the application of a function t to an input s, that is, it represents the act of calling function t on input s to produce t(s).

There is no concept in lambda calculus of variable declaration. In a definition such as λx.x + y (i.e. f(x) = x + y), the lambda calculus treats y as a variable that is not yet defined. The lambda abstraction λx.x + y is syntactically valid, and represents a function that adds its input to the yet-unknown y.

Bracketing may be used and may be needed to disambiguate terms. For example, λx.((λx.x)x) and (λx.(λx.x))x denote different terms (although they coincidentally reduce to the same value). Here, the first example defines a function whose lambda term is the result of applying x to the child function, while the second example is the application of the outermost function to the input x, which returns the child function. Therefore, both examples evaluate to the identity function λx.x.

Functions that operate on functions

In lambda calculus, functions are taken to be 'first class values', so functions may be used as the inputs, or be returned as outputs from other functions.

For example, λx.x represents the identity function, x ↦ x, and (λx.x)y represents the identity function applied to y. Further, (λx.y) represents the CONSTANT FUNCTION x ↦ y, the function that always returns y, no matter the input. In lambda calculus, function application is regarded as left-associative, so that stx means (st)x.

There are several notions of "equivalence" and "reduction" that allow lambda terms to be "reduced" to "equivalent" lambda terms.

Alpha equivalence

A basic form of equivalence, definable on lambda terms, is alpha equivalence. It captures the intuition that the particular choice of a bound variable, in a lambda abstraction, does not (usually) matter. For instance, λx.x and λy.y are alpha-equivalent lambda terms, and they both represent the same function (the identity function). The terms x and y are not alpha-equivalent, because they are not bound in a lambda abstraction. In many presentations, it is usual to identify alpha-equivalent lambda terms.

The following definitions are necessary in order to be able to define beta reduction:

Free variables

The FREE VARIABLES of a term are those variables not bound by a lambda abstraction. The set of free variables of an expression is defined inductively:

-   The free variables of x are just x
-   The set of free variables of λx.t is the set of free variables of t, but with x removed
-   The set of free variables of ts is the union of the set of free variables of t and the set of free variables of s.

For example, the lambda term representing the identity λx.x has no free variables, but the function λx.yx has a single free variable, y.

Capture-avoiding substitutions

Suppose t, s and r are lambda terms and x and y are variables. The notation t[x := r] indicates substitution of r for x in t in a _capture-avoiding_ manner. This is defined so that:

-   x[x := r] = r;
-   y[x := r] = y if x ≠ y;
-   (ts)[x := r] = (t[x := r])(s[x := r]);
-   (λx.t)[x := r] = λx.t;
-   (λy.t)[x := r] = λy.(t[x := r]) if x ≠ y and y is not in the free variables of r. The variable y is said to be "fresh" for r.

For example, (λx.x)[y := y] = λx.(x[y := y]) = λx.x, and ((λx.y)x)[x := y] = ((λx.y)[x := y])(x[x := y]) = (λx.y)y.

The freshness condition (requiring that y is not in the free variables of r) is crucial in order to ensure that substitution does not change the meaning of functions. For example, a substitution is made that ignores the freshness condition: (λx.y)[y := x] = λx.(y[y := x]) = λx.x. This substitution turns the constant function λx.y into the identity λx.x by substitution.

In general, failure to meet the freshness condition can be remedied by alpha-renaming with a suitable fresh variable. For example, switching back to our correct notion of substitution, in (λx.y)[y := x] the lambda abstraction can be renamed with a fresh variable z, to obtain (λz.y)[y := x] = λz.(y[y := x]) = λz.x, and the meaning of the function is preserved by substitution.

Beta reduction

The beta reduction rule states that an application of the form (λx.t)s reduces to the term t[x := s]. The notation (λx.t)s → t[x := s] is used to indicate that (λx.t)s beta reduces to t[x := s]. For example, for every s, (λx.x)s → x[x := s] = s. This demonstrates that λx.x really is the identity. Similarly, (λx.y)s → y[x := s] = y, which demonstrates that λx.y is a constant function.

The lambda calculus may be seen as an idealised version of a functional programming language, like Haskell or Standard ML. Under this view, beta reduction corresponds to a computational step. This step can be repeated by additional beta conversions until there are no more applications left to reduce. In the untyped lambda calculus, as presented here, this reduction process may not terminate. For instance, consider the term Ω = (λx.xx)(λx.xx). Here (λx.xx)(λx.xx) → (xx)[x := λx.xx] = (x[x := λx.xx])(x[x := λx.xx]) = (λx.xx)(λx.xx). That is, the term reduces to itself in a single beta reduction, and therefore the reduction process will never terminate.

Another aspect of the untyped lambda calculus is that it does not distinguish between different kinds of data. For instance, it may be desirable to write a function that only operates on numbers. However, in the untyped lambda calculus, there is no way to prevent a function from being applied to truth values, strings, or other non-number objects.


Formal definition

Definition

Lambda expressions are composed of:

-   variables v₁, v₂, ..., v_(n), ...
-   the abstraction symbols lambda 'λ' and dot '.'
-   parentheses ( )

The set of lambda expressions, Λ, can be defined inductively:

1.  If x is a variable, then x ∈ Λ
2.  If x is a variable and M ∈ Λ, then (λx.M) ∈ Λ
3.  If M, N ∈ Λ, then (M N) ∈ Λ

Instances of rule 2 are known as abstractions and instances of rule 3 are known as applications.[16]

Notation

To keep the notation of lambda expressions uncluttered, the following conventions are usually applied:

-   Outermost parentheses are dropped: M N instead of (M N)
-   Applications are assumed to be left associative: M N P may be written instead of ((M N) P)[17]
-   The body of an abstraction extends as far right as possible: λx.M N means λx.(M N) and not (λx.M) N
-   A sequence of abstractions is contracted: λx.λy.λz.N is abbreviated as λxyz.N

[18]

Free and bound variables

The abstraction operator, λ, is said to bind its variable wherever it occurs in the body of the abstraction. Variables that fall within the scope of an abstraction are said to be _bound_. In an expression λ_x_._M_, the part λ_x_ is often called _binder_, as a hint that the variable _x_ is getting bound by appending λ_x_ to _M_. All other variables are called _free_. For example, in the expression λ_y_._x_ _x_ _y_, y is a bound variable and x is free. Also note that a variable is bound by its "nearest" abstraction. In the following example the single occurrence of x in the expression is bound by the second lambda: λ_x_._y_ (λ_x_._z_ _x_)

The set of _free variables_ of a lambda expression, M, is denoted as FV(M) and is defined by recursion on the structure of the terms, as follows:

1.  FV(x) = {x}, where x is a variable
2.  FV(λx.M) = FV(M) \ {x}
3.  FV(M N) = FV(M) ∪ FV(N)[19]

An expression that contains no free variables is said to be _closed_. Closed lambda expressions are also known as combinators and are equivalent to terms in combinatory logic.


Reduction

The meaning of lambda expressions is defined by how expressions can be reduced.[20]

There are three kinds of reduction:

-   Α-CONVERSION: changing bound variables (ALPHA);
-   Β-REDUCTION: applying functions to their arguments (BETA);
-   Η-CONVERSION: which captures a notion of extensionality (ETA).

We also speak of the resulting equivalences: two expressions are _β-equivalent_, if they can be β-converted into the same expression, and α/η-equivalence are defined similarly.

The term _redex_, short for _reducible expression_, refers to subterms that can be reduced by one of the reduction rules. For example, (λ_x_.M) N is a beta-redex in expressing the substitution of N for x in M. The expression to which a redex reduces is called its reduct; the reduct of (λ_x_.M) N is M[_x_:=N].

If _x_ is not free in M, λ_x_.M _x_ is also an eta-redex, with a reduct of M.

α-conversion

Alpha-conversion, sometimes known as alpha-renaming,[21] allows bound variable names to be changed. For example, alpha-conversion of λ_x_._x_ might yield λ_y_._y_. Terms that differ only by alpha-conversion are called _α-equivalent_. Frequently, in uses of lambda calculus, α-equivalent terms are considered to be equivalent.

The precise rules for alpha-conversion are not completely trivial. First, when alpha-converting an abstraction, the only variable occurrences that are renamed are those that are bound to the same abstraction. For example, an alpha-conversion of λ_x_.λ_x_._x_ could result in λ_y_.λ_x_._x_, but it could _not_ result in λ_y_.λ_x_._y_. The latter has a different meaning from the original. This is analogous to the programming notion of variable shadowing.

Second, alpha-conversion is not possible if it would result in a variable getting captured by a different abstraction. For example, if we replace _x_ with _y_ in λ_x_.λ_y_._x_, we get λ_y_.λ_y_._y_, which is not at all the same.

In programming languages with static scope, alpha-conversion can be used to make name resolution simpler by ensuring that no variable name masks a name in a containing scope (see alpha renaming to make name resolution trivial).

In the De Bruijn index notation, any two alpha-equivalent terms are syntactically identical.

Substitution

Substitution, written , is the process of replacing all free occurrences of the variable in the expression with expression . Substitution on terms of the λ-calculus is defined by recursion on the structure of terms, as follows (note: x and y are only variables while M and N are any λ expression).

_x_[_x_ := N]  ≡ N
_y_[_x_ := N]  ≡ _y_, if _x_ ≠ _y_
(M₁ M₂)[_x_ := N]  ≡ (M₁[_x_ := N]) (M₂[_x_ := N])
(λ_x_.M)[_x_ := N] ≡ λ_x_.M
(λ_y_.M)[_x_ := N] ≡ λ_y_.(M[_x_ := N]), if _x_ ≠ _y_, _provided_ _y_ ∉ FV(N)

To substitute into a lambda abstraction, it is sometimes necessary to α-convert the expression. For example, it is not correct for to result in , because the substituted was supposed to be free but ended up being bound. The correct substitution in this case is , up to α-equivalence. Notice that substitution is defined uniquely up to α-equivalence.

β-reduction

Beta-reduction captures the idea of function application. Beta-reduction is defined in terms of substitution: the beta-reduction of  ((λ_V_._E_) _E′_)  is _E_[_V_ := _E′_].

For example, assuming some encoding of 2, 7, ×, we have the following β-reduction: ((λ_n_._n_×2) 7)→7×2.

Beta reduction can be seen to be the same as the concept of _local reducibility_ in natural deduction, via the Curry–Howard isomorphism.

η-conversion

Eta-conversion expresses the idea of extensionality, which in this context is that two functions are the same if and only if they give the same result for all arguments. Eta-conversion converts between λ_x_.(_f_ _x_) and _f_ whenever _x_ does not appear free in _f_.

Eta conversion can be seen to be the same as the concept of _local completeness_ in natural deduction, via the Curry–Howard isomorphism.


Normal forms and confluence

For the untyped lambda calculus, β-reduction as a rewriting rule is neither strongly normalising nor weakly normalising.

However, it can be shown that β-reduction is confluent when working up to α-conversion (i.e. we consider two normal forms to be equal if it is possible to α-convert one into the other).

Therefore, both strongly normalising terms and weakly normalising terms have a unique normal form. For strongly normalising terms, any reduction strategy is guaranteed to yield the normal form, whereas for weakly normalising terms, some reduction strategies may fail to find it.


Encoding datatypes

The basic lambda calculus may be used to model booleans, arithmetic, data structures and recursion, as illustrated in the following sub-sections.

Arithmetic in lambda calculus

There are several possible ways to define the natural numbers in lambda calculus, but by far the most common are the Church numerals, which can be defined as follows:

    0 := λ_f_.λ_x_._x_
    1 := λ_f_.λ_x_._f_ _x_
    2 := λ_f_.λ_x_._f_ (_f_ _x_)
    3 := λ_f_.λ_x_._f_ (_f_ (_f_ _x_))

and so on. Or using the alternative syntax presented above in _Notation_:

    0 := λ_fx_._x_
    1 := λ_fx_._f_ _x_
    2 := λ_fx_._f_ (_f_ _x_)
    3 := λ_fx_._f_ (_f_ (_f_ _x_))

A Church numeral is a higher-order function—it takes a single-argument function _f_, and returns another single-argument function. The Church numeral _n_ is a function that takes a function _f_ as argument and returns the _n_-th composition of _f_, i.e. the function _f_ composed with itself _n_ times. This is denoted _f_^((_n_)) and is in fact the _n_-th power of _f_ (considered as an operator); _f_⁽⁰⁾ is defined to be the identity function. Such repeated compositions (of a single function _f_) obey the laws of exponents, which is why these numerals can be used for arithmetic. (In Church's original lambda calculus, the formal parameter of a lambda expression was required to occur at least once in the function body, which made the above definition of 0 impossible.)

One way of thinking about the Church numeral _n_, which is often useful when analysing programs, is as an instruction 'repeat _n_ times'. For example, using the PAIR and NIL functions defined below, one can define a function that constructs a (linked) list of _n_ elements all equal to _x_ by repeating 'prepend another _x_ element' _n_ times, starting from an empty list. The lambda term is

    λ_n_.λ_x_._n_ (PAIR _x_) NIL

By varying what is being repeated, and varying what argument that function being repeated is applied to, a great many different effects can be achieved.

We can define a successor function, which takes a Church numeral _n_ and returns _n_ + 1 by adding another application of _f_, where '(mf)x' means the function 'f' is applied 'm' times on 'x':

    SUCC := λ_n_.λ_f_.λ_x_._f_ (_n_ _f_ _x_)

Because the _m_-th composition of _f_ composed with the _n_-th composition of _f_ gives the _m_+_n_-th composition of _f_, addition can be defined as follows:

    PLUS := λ_m_.λ_n_.λ_f_.λ_x_._m_ _f_ (_n_ _f_ _x_)

PLUS can be thought of as a function taking two natural numbers as arguments and returning a natural number; it can be verified that

    PLUS 2 3

and

    5

are β-equivalent lambda expressions. Since adding _m_ to a number _n_ can be accomplished by adding 1 _m_ times, an alternative definition is:

    PLUS := λ_m_.λ_n_._m_ SUCC _n _[22]

Similarly, multiplication can be defined as

    MULT := λ_m_.λ_n_.λ_f_._m_ (_n_ _f_)[23]

Alternatively

    MULT := λ_m_.λ_n_._m_ (PLUS _n_) 0

since multiplying _m_ and _n_ is the same as repeating the add _n_ function _m_ times and then applying it to zero. Exponentiation has a rather simple rendering in Church numerals, namely

    POW := λ_b_.λ_e_._e_ _b_[24]

The predecessor function defined by PRED _n_ = _n_ − 1 for a positive integer _n_ and PRED 0 = 0 is considerably more difficult. The formula

    PRED := λ_n_.λ_f_.λ_x_._n_ (λ_g_.λ_h_._h_ (_g_ _f_)) (λ_u_._x_) (λ_u_._u_)

can be validated by showing inductively that if _T_ denotes (λ_g_.λ_h_._h_ (_g_ _f_)), then T^((_n_))(λ_u_._x_) = (λ_h_._h_(_f_^((_n_−1))(_x_))) for _n_ > 0. Two other definitions of PRED are given below, one using conditionals and the other using pairs. With the predecessor function, subtraction is straightforward. Defining

    SUB := λ_m_.λ_n_._n_ PRED _m_,

SUB _m_ _n_ yields _m_ − _n_ when _m_ > _n_ and 0 otherwise.

Logic and predicates

By convention, the following two definitions (known as Church booleans) are used for the boolean values TRUE and FALSE:

    TRUE := λ_x_.λ_y_._x_
    FALSE := λ_x_.λ_y_._y_

        (Note that FALSE is equivalent to the Church numeral zero defined above)

Then, with these two λ-terms, we can define some logic operators (these are just possible formulations; other expressions are equally correct):

    AND := λ_p_.λ_q_._p_ _q_ _p_
    OR := λ_p_.λ_q_._p_ _p_ _q_
    NOT := λ_p_.p FALSE TRUE
    IFTHENELSE := λ_p_.λ_a_.λ_b_._p_ _a_ _b_

We are now able to compute some logic functions, for example:

    AND TRUE FALSE

        ≡ (λ_p_.λ_q_._p_ _q_ _p_) TRUE FALSE →_(β) TRUE FALSE TRUE
        ≡ (λ_x_.λ_y_._x_) FALSE TRUE →_(β) FALSE

and we see that AND TRUE FALSE is equivalent to FALSE.

A _predicate_ is a function that returns a boolean value. The most fundamental predicate is ISZERO, which returns TRUE if its argument is the Church numeral 0, and FALSE if its argument is any other Church numeral:

    ISZERO := λ_n_._n_ (λ_x_.FALSE) TRUE

The following predicate tests whether the first argument is less-than-or-equal-to the second:

    LEQ := λ_m_.λ_n_.ISZERO (SUB _m_ _n_),

and since _m_ = _n_, if LEQ _m_ _n_ and LEQ _n_ _m_, it is straightforward to build a predicate for numerical equality.

The availability of predicates and the above definition of TRUE and FALSE make it convenient to write "if-then-else" expressions in lambda calculus. For example, the predecessor function can be defined as:

    PRED := λ_n_._n_ (λ_g_.λ_k_.ISZERO (_g_ 1) _k_ (PLUS (_g_ _k_) 1)) (λ_v_.0) 0

which can be verified by showing inductively that _n_ (λ_g_.λ_k_.ISZERO (_g_ 1) _k_ (PLUS (_g_ _k_) 1)) (λ_v_.0) is the add _n_ − 1 function for _n_ > 0.

Pairs

A pair (2-tuple) can be defined in terms of TRUE and FALSE, by using the Church encoding for pairs. For example, PAIR encapsulates the pair (_x_,_y_), FIRST returns the first element of the pair, and SECOND returns the second.

    PAIR := λ_x_.λ_y_.λ_f_._f_ _x_ _y_
    FIRST := λ_p_._p_ TRUE
    SECOND := λ_p_._p_ FALSE
    NIL := λ_x_.TRUE
    NULL := λ_p_._p_ (λ_x_.λ_y_.FALSE)

A linked list can be defined as either NIL for the empty list, or the PAIR of an element and a smaller list. The predicate NULL tests for the value NIL. (Alternatively, with NIL := FALSE, the construct _l_ (λ_h_.λ_t_.λ_z_.deal_with_head__h__and_tail__t_) (deal_with_nil) obviates the need for an explicit NULL test).

As an example of the use of pairs, the shift-and-increment function that maps (_m_, _n_) to (_n_, _n_ + 1) can be defined as

    Φ := λ_x_.PAIR (SECOND _x_) (SUCC (SECOND _x_))

which allows us to give perhaps the most transparent version of the predecessor function:

    PRED := λ_n_.FIRST (_n_ Φ (PAIR 0 0)).


Additional programming techniques

There is a considerable body of programming idioms for lambda calculus. Many of these were originally developed in the context of using lambda calculus as a foundation for programming language semantics, effectively using lambda calculus as a low-level programming language. Because several programming languages include the lambda calculus (or something very similar) as a fragment, these techniques also see use in practical programming, but may then be perceived as obscure or foreign.

Named constants

In lambda calculus, a library would take the form of a collection of previously defined functions, which as lambda-terms are merely particular constants. The pure lambda calculus does not have a concept of named constants since all atomic lambda-terms are variables, but one can emulate having named constants by setting aside a variable as the name of the constant, using lambda-abstraction to bind that variable in the main body, and apply that lambda-abstraction to the intended definition. Thus to use _f_ to mean _M_ (some explicit lambda-term) in _N_ (another lambda-term, the "main program"), one can say

    (λ_f_._N_) _M_

Authors often introduce syntactic sugar, such as let, to permit writing the above in the more intuitive order

    let _f_ =_M_in_N_

By chaining such definitions, one can write a lambda calculus "program" as zero or more function definitions, followed by one lambda-term using those functions that constitutes the main body of the program.

A notable restriction of this let is that the name _f_ is not defined in _M_, since _M_ is outside the scope of the lambda-abstraction binding _f_; this means a recursive function definition cannot be used as the _M_ with let. The more advanced letrec syntactic sugar construction that allows writing recursive function definitions in that naive style instead additionally employs fixed-point combinators.

Recursion and fixed points

Recursion is the definition of a function using the function itself. Lambda calculus cannot express this as directly as some other notations: all functions are anonymous in lambda calculus, so we can't refer to a value which is yet to be defined, inside the lambda term defining that same value. However, recursion can still be achieved by arranging for a lambda expression to receive itself as its argument value, for example in  (λ_x_._x_ _x_) _E_.

Consider the factorial function F(_n_) recursively defined by

    F(_n_) = 1, if _n_ = 0; else _n_ × F(_n_ − 1).

In the lambda expression which is to represent this function, a _parameter_ (typically the first one) will be assumed to receive the lambda expression itself as its value, so that calling it – applying it to an argument – will amount to recursion. Thus to achieve recursion, the intended-as-self-referencing argument (called _r_ here) must always be passed to itself within the function body, at a call point:

    G := λ_r_. λ_n_.(1, if _n_ = 0; else _n_ × (_r_ _r_ (_n_−1)))



            with  _r_ _r_ _x_ = F _x_ = G _r_ _x_  to hold, so  _r_ = G  and

    F := G G = (λ_x_._x_ _x_) G

The self-application achieves replication here, passing the function's lambda expression on to the next invocation as an argument value, making it available to be referenced and called there.

This solves it but requires re-writing each recursive call as self-application. We would like to have a generic solution, without a need for any re-writes:

    G := λ_r_. λ_n_.(1, if _n_ = 0; else _n_ × (_r_ (_n_−1)))



            with  _r_ _x_ = F _x_ = G _r_ _x_  to hold, so  _r_ = G _r_ =: FIX G  and

    F := FIX G  where  FIX _g_ := (_r_ where _r_ = _g_ _r_) = _g_ (FIX _g_)



            so that  FIX G = G (FIX G) = (λ_n_.(1, if _n_ = 0; else _n_ × ((FIX G) (_n_−1))))

Given a lambda term with first argument representing recursive call (e.g. G here), the _fixed-point_ combinator FIX will return a self-replicating lambda expression representing the recursive function (here, F). The function does not need to be explicitly passed to itself at any point, for the self-replication is arranged in advance, when it is created, to be done each time it is called. Thus the original lambda expression (FIX G) is re-created inside itself, at call-point, achieving self-reference.

In fact, there are many possible definitions for this FIX operator, the simplest of them being:

    Y := λ_g_.(λ_x_._g_ (_x_ _x_)) (λ_x_._g_ (_x_ _x_))

In the lambda calculus, Y _g_  is a fixed-point of _g_, as it expands to:

    Y _g_
    (λ_h_.(λ_x_._h_ (_x_ _x_)) (λ_x_._h_ (_x_ _x_))) _g_
    (λ_x_._g_ (_x_ _x_)) (λ_x_._g_ (_x_ _x_))
    _g_ ((λ_x_._g_ (_x_ _x_)) (λ_x_._g_ (_x_ _x_)))
    _g_ (Y _g_)

Now, to perform our recursive call to the factorial function, we would simply call (Y G) _n_,  where _n_ is the number we are calculating the factorial of. Given _n_ = 4, for example, this gives:

    (Y G) 4
    G (Y G) 4
    (λ_r_.λ_n_.(1, if _n_ = 0; else _n_ × (_r_ (_n_−1)))) (Y G) 4
    (λ_n_.(1, if _n_ = 0; else _n_ × ((Y G) (_n_−1)))) 4
    1, if 4 = 0; else 4 × ((Y G) (4−1))
    4 × (G (Y G) (4−1))
    4 × ((λ_n_.(1, if _n_ = 0; else _n_ × ((Y G) (_n_−1)))) (4−1))
    4 × (1, if 3 = 0; else 3 × ((Y G) (3−1)))
    4 × (3 × (G (Y G) (3−1)))
    4 × (3 × ((λ_n_.(1, if _n_ = 0; else _n_ × ((Y G) (_n_−1)))) (3−1)))
    4 × (3 × (1, if 2 = 0; else 2 × ((Y G) (2−1))))
    4 × (3 × (2 × (G (Y G) (2−1))))
    4 × (3 × (2 × ((λ_n_.(1, if _n_ = 0; else _n_ × ((Y G) (_n_−1)))) (2−1))))
    4 × (3 × (2 × (1, if 1 = 0; else 1 × ((Y G) (1−1)))))
    4 × (3 × (2 × (1 × (G (Y G) (1−1)))))
    4 × (3 × (2 × (1 × ((λ_n_.(1, if _n_ = 0; else _n_ × ((Y G) (_n_−1)))) (1−1)))))
    4 × (3 × (2 × (1 × (1, if 0 = 0; else 0 × ((Y G) (0−1))))))
    4 × (3 × (2 × (1 × (1))))
    24

Every recursively defined function can be seen as a fixed point of some suitably defined function closing over the recursive call with an extra argument, and therefore, using Y, every recursively defined function can be expressed as a lambda expression. In particular, we can now cleanly define the subtraction, multiplication and comparison predicate of natural numbers recursively.

Standard terms

Certain terms have commonly accepted names:

    I := λ_x_._x_

    K := λ_x_.λ_y_._x_

    S := λ_x_.λ_y_.λ_z_._x_ _z_ (_y_ _z_)

    B := λ_x_.λ_y_.λ_z_._x_ (_y_ _z_)

    C := λ_x_.λ_y_.λ_z_._x_ _z_ _y_

    W := λ_x_.λ_y_._x_ _y_ _y_

    U := λ_x_._x_ _x_

    ω := λ_x_._x_ _x_

    Ω := ω ω

    Y := λ_g_.(λ_x_._g_ (_x_ _x_)) (λ_x_._g_ (_x_ _x_))

Several of these have direct applications in the _elimination of lambda-abstraction_ that turns lambda terms into combinator calculus terms.

Abstraction elimination

If _N_ is a lambda-term without lambda-abstraction, but possibly containing named constants (combinators), then there exists a lambda-term _T_(_x_,_N_) which is equivalent to λ_x_._N_ but lacks lambda-abstraction (except as part of the named constants, if these are considered non-atomic). This can also be viewed as anonymising variables, as _T_(_x_,_N_) removes all occurrences of _x_ from _N_, while still allowing argument values to be substituted into the positions where _N_ contains an _x_. The conversion function _T_ can be defined by:

    _T_(_x_, _x_) := I
    _T_(_x_, _N_) := K _N_ if _x_ is not free in _N_.
    _T_(_x_, _M_ _N_) := S _T_(_x_, _M_) _T_(_x_, _N_)

In either case, a term of the form _T_(_x_,_N_) _P_ can reduce by having the initial combinator I, K, or S grab the argument _P_, just like β-reduction of (λ_x_._N_) _P_ would do. I returns that argument. K throws the argument away, just like (λ_x_._N_) would do if _x_ has no free occurrence in _N_. S passes the argument on to both subterms of the application, and then applies the result of the first to the result of the second.

The combinators B and C are similar to S, but pass the argument on to only one subterm of an application (B to the "argument" subterm and C to the "function" subterm), thus saving a subsequent K if there is no occurrence of _x_ in one subterm. In comparison to B and C, the S combinator actually conflates two functionalities: rearranging arguments, and duplicating an argument so that it may be used in two places. The W combinator does only the latter, yielding the B, C, K, W system as an alternative to SKI combinator calculus.


Typed lambda calculus

A TYPED LAMBDA CALCULUS is a typed formalism that uses the lambda-symbol (λ) to denote anonymous function abstraction. In this context, types are usually objects of a syntactic nature that are assigned to lambda terms; the exact nature of a type depends on the calculus considered (see kinds below). From a certain point of view, typed lambda calculi can be seen as refinements of the untyped lambda calculus but from another point of view, they can also be considered the more fundamental theory and _untyped lambda calculus_ a special case with only one type.[25]

Typed lambda calculi are foundational programming languages and are the base of typed functional programming languages such as ML and Haskell and, more indirectly, typed imperative programming languages. Typed lambda calculi play an important role in the design of type systems for programming languages; here typability usually captures desirable properties of the program, e.g. the program will not cause a memory access violation.

Typed lambda calculi are closely related to mathematical logic and proof theory via the Curry–Howard isomorphism and they can be considered as the internal language of classes of categories, e.g. the simply typed lambda calculus is the language of Cartesian closed categories (CCCs).


Computable functions and lambda calculus

A function _F_: N → N of natural numbers is a computable function if and only if there exists a lambda expression _f_ such that for every pair of _x_, _y_ in N, _F_(_x_)=_y_ if and only if _f_ _x_ =_(β) _y_,  where _x_ and _y_ are the Church numerals corresponding to _x_ and _y_, respectively and =_(β) meaning equivalence with beta reduction. This is one of the many ways to define computability; see the Church–Turing thesis for a discussion of other approaches and their equivalence.


Undecidability of equivalence

There is no algorithm that takes as input two lambda expressions and outputs TRUE or FALSE depending on whether or not the two expressions are equivalent.[26] This was historically the first problem for which undecidability could be proven. As is common for a proof of undecidability, the proof shows that no computable function can decide the equivalence. Church's thesis is then invoked to show that no algorithm can do so.

Church's proof first reduces the problem to determining whether a given lambda expression has a _normal form_. A normal form is an equivalent expression that cannot be reduced any further under the rules imposed by the form. Then he assumes that this predicate is computable, and can hence be expressed in lambda calculus. Building on earlier work by Kleene and constructing a Gödel numbering for lambda expressions, he constructs a lambda expression _e_ that closely follows the proof of Gödel's first incompleteness theorem. If _e_ is applied to its own Gödel number, a contradiction results.


Lambda calculus and programming languages

As pointed out by Peter Landin's 1965 paper "A Correspondence between ALGOL 60 and Church's Lambda-notation"[27], sequential procedural programming languages can be understood in terms of the lambda calculus, which provides the basic mechanisms for procedural abstraction and procedure (subprogram) application.

Anonymous functions

For example, in Lisp the "square" function can be expressed as a lambda expression as follows:

    (lambda (x) (* x x))

The above example is an expression that evaluates to a first-class function. The symbol lambda creates an anonymous function, given a list of parameter names, (x) – just a single argument in this case, and an expression that is evaluated as the body of the function, (* x x). Anonymous functions are sometimes called lambda expressions.

For example, Pascal and many other imperative languages have long supported passing subprograms as arguments to other subprograms through the mechanism of function pointers. However, function pointers are not a sufficient condition for functions to be first class datatypes, because a function is a first class datatype if and only if new instances of the function can be created at run-time. And this run-time creation of functions is supported in Smalltalk, JavaScript, and more recently in Scala, Eiffel ("agents"), C# ("delegates") and C++11, among others.

Reduction strategies

Whether a term is normalising or not, and how much work needs to be done in normalising it if it is, depends to a large extent on the reduction strategy used. The distinction between reduction strategies relates to the distinction in functional programming languages between eager evaluation and lazy evaluation.

Full beta reductions: Any redex can be reduced at any time. This means essentially the lack of any particular reduction strategy—with regard to reducibility, "all bets are off".
Applicative order: The rightmost, innermost redex is always reduced first. Intuitively this means a function's arguments are always reduced before the function itself. Applicative order always attempts to apply functions to normal forms, even when this is not possible.
    Most programming languages (including Lisp, ML and imperative languages like C and Java) are described as "strict", meaning that functions applied to non-normalising arguments are non-normalising. This is done essentially using applicative order, call by value reduction (see below), but usually called "eager evaluation".

Normal order: The leftmost, outermost redex is always reduced first. That is, whenever possible the arguments are substituted into the body of an abstraction before the arguments are reduced.
Call by name: As normal order, but no reductions are performed inside abstractions. For example, λ_x_.(λ_x_._x_)_x_ is in normal form according to this strategy, although it contains the redex (λ_x_._x_)_x_.
Call by value: Only the outermost redexes are reduced: a redex is reduced only when its right hand side has reduced to a value (variable or lambda abstraction).
Call by need: As normal order, but function applications that would duplicate terms instead name the argument, which is then reduced only "when it is needed". Called in practical contexts "lazy evaluation". In implementations this "name" takes the form of a pointer, with the redex represented by a thunk.

Applicative order is not a normalising strategy. The usual counterexample is as follows: define Ω = ωω where ω = λ_x_._xx_. This entire expression contains only one redex, namely the whole expression; its reduct is again Ω. Since this is the only available reduction, Ω has no normal form (under any evaluation strategy). Using applicative order, the expression KIΩ = (λ_x_.λ_y_._x_) (λ_x_._x_)Ω is reduced by first reducing Ω to normal form (since it is the rightmost redex), but since Ω has no normal form, applicative order fails to find a normal form for KIΩ.

In contrast, normal order is so called because it always finds a normalising reduction, if one exists. In the above example, KIΩ reduces under normal order to _I_, a normal form. A drawback is that redexes in the arguments may be copied, resulting in duplicated computation (for example, (λ_x_._xx_) ((λ_x_._x_)_y_) reduces to ((λ_x_._x_)_y_) ((λ_x_._x_)_y_) using this strategy; now there are two redexes, so full evaluation needs two more steps, but if the argument had been reduced first, there would now be none).

The positive tradeoff of using applicative order is that it does not cause unnecessary computation, if all arguments are used, because it never substitutes arguments containing redexes and hence never needs to copy them (which would duplicate work). In the above example, in applicative order (λ_x_._xx_) ((λ_x_._x_)_y_) reduces first to (λ_x_._xx_)_y_ and then to the normal order _yy_, taking two steps instead of three.

Most _purely_ functional programming languages (notably Miranda and its descendents, including Haskell), and the proof languages of theorem provers, use _lazy evaluation_, which is essentially the same as call by need. This is like normal order reduction, but call by need manages to avoid the duplication of work inherent in normal order reduction using _sharing_. In the example given above, (λ_x_._xx_) ((λ_x_._x_)_y_) reduces to ((λ_x_._x_)_y_) ((λ_x_._x_)_y_), which has two redexes, but in call by need they are represented using the same object rather than copied, so when one is reduced the other is too.

A note about complexity

While the idea of beta reduction seems simple enough, it is not an atomic step, in that it must have a non-trivial cost when estimating computational complexity.[28] To be precise, one must somehow find the location of all of the occurrences of the bound variable _V_ in the expression _E_, implying a time cost, or one must keep track of these locations in some way, implying a space cost. A naïve search for the locations of _V_ in _E_ is _O_(_n_) in the length _n_ of _E_. This has led to the study of systems that use explicit substitution. Sinot's director strings[29] offer a way of tracking the locations of free variables in expressions.

Parallelism and concurrency

The Church–Rosser property of the lambda calculus means that evaluation (β-reduction) can be carried out in _any order_, even in parallel. This means that various nondeterministic evaluation strategies are relevant. However, the lambda calculus does not offer any explicit constructs for parallelism. One can add constructs such as Futures to the lambda calculus. Other process calculi have been developed for describing communication and concurrency.

Optimal reduction

In Lévy's 1988 paper "Sharing in the Evaluation of lambda Expressions", he defines a notion of optimal sharing, such that no work is _duplicated_. For example, performing a beta reduction in normal order on (λ_x_._xx_) (II) reduces it to II (II). The argument II is duplicated by the application to the first lambda term. If the reduction was done in an applicative order first, we save work because work is not duplicated: (λ_x_._xx_) (II) reduces to (λ_x_._xx_) I. On the other hand, using applicative order can result in redundant reductions or even possibly never reduce to normal form. For example, performing a beta reduction in normal order on (λ_f_.f I) (λy.(λ_x_._xx_) (y I)) yields (λy.(λ_x_._xx_) (y I)) I, (λ_x_._xx_) (II) which we know we can do without duplicating work. Doing the same but in applicative order yields (λ_f_.f I) (λy.y I (y I)), (λy.y I (y I)) I, I I (I I), and now work is duplicated.

Lévy shows the existence of lambda terms where there _does not exist_ a sequence of reductions which reduces them without duplicating work. The below lambda term is such an example.

((λg.(g(g(λx.x)))) (λh.((λf.(f(f(λz.z)))) (λw.(h(w(λy.y)))))))

It is composed of three similar terms, x=((λg. ... ) (λh.y)) and y=((λf. ...) (λw.z) ), and finally z=λw.(h(w(λy.y))). There are only two possible beta reductions to be done here, on x and on y. Reducing the outer x term first results in the inner y term being duplicated, and each copy will have to be reduced, but reducing the inner y term first will duplicate its argument z, which will cause work to be duplicated when the values of h and w are made known. Incidentally, the above term reduces to the identity function (λy.y), and is constructed by making wrappers which make the identity function available to the binders g=λh..., f=λw..., h=λx.x (at first), and w=λz.z (at first), all of which are applied to the innermost term λy.y.

The precise notion of duplicated work relies on noticing that after the first reduction of I I is done, the value of the other I I can be determined, because they have the same structure (and in fact they have exactly the same values), and result from a common ancestor. Such similar structures can each be assigned a label that can be tracked across reductions. If a name is assigned to the redex that produces all the resulting II terms, and then all duplicated occurrences of II can be tracked and reduced in one go. However, it is not obvious that a redex will produce the II term. Identifying the structures that are similar in different parts of a lambda term can involve a complex algorithm and can possibly have a complexity equal to the history of the reduction itself.

While Lévy defines the notion of optimal sharing, he does not provide an algorithm to do it. In Vincent van Oostrom, Kees-Jan van de Looij, and Marijn Zwitserlood's paper _Lambdascope: Another optimal implementation of the lambda-calculus_, they provide such an algorithm by transforming lambda terms into interaction nets, which are then reduced. Roughly speaking, the resulting reduction is optimal because every term that would have the same labels as per Lévy's paper would also be the same graph in the interaction net. In the paper, they mention that their prototype implementation of Lambdascope performs as well as the _optimised_ version of the reference optimal higher order machine BOHM.

More details can be found in the short article About the efficient reduction of lambda terms.


Semantics

The fact that lambda calculus terms act as functions on other lambda calculus terms, and even on themselves, led to questions about the semantics of the lambda calculus. Could a sensible meaning be assigned to lambda calculus terms? The natural semantics was to find a set _D_ isomorphic to the function space _D_ → _D_, of functions on itself. However, no nontrivial such _D_ can exist, by cardinality constraints because the set of all functions from _D_ to _D_ has greater cardinality than _D_, unless _D_ is a singleton set.

In the 1970s, Dana Scott showed that, if only continuous functions were considered, a set or domain _D_ with the required property could be found, thus providing a model for the lambda calculus.

This work also formed the basis for the denotational semantics of programming languages.


Variations and extensions

These extensions are in the lambda cube:

-   Typed lambda calculus – Lambda calculus with typed variables (and functions)
-   System F – A typed lambda calculus with type-variables
-   Calculus of constructions – A typed lambda calculus with types as first-class values

These formal systems are extensions of lambda calculus that are not in the lambda cube:

-   Binary lambda calculus – A version of lambda calculus with binary I/O, a binary encoding of terms, and a designated universal machine.
-   Lambda-mu calculus – An extension of the lambda calculus for treating classical logic

These formal systems are variations of lambda calculus:

-   Kappa calculus – A first-order analogue of lambda calculus

These formal systems are related to lambda calculus:

-   Combinatory logic – A notation for mathematical logic without variables
-   SKI combinator calculus – A computational system based on the S, K and I combinators, equivalent to lambda calculus, but reducible without variable substitutions


See also

-   Applicative computing systems – Treatment of objects in the style of the lambda calculus
-   Cartesian closed category – A setting for lambda calculus in category theory
-   Categorical abstract machine – A model of computation applicable to lambda calculus
-   Curry–Howard isomorphism – The formal correspondence between programs and proofs
-   De Bruijn index – notation disambugating alpha conversions
-   De Bruijn notation – notation using postfix modification functiond
-   Deductive lambda calculus – The consideration of the problems associated with considering lambda calculus as a Deductive system.
-   Domain theory – Study of certain posets giving denotational semantics for lambda calculus
-   Evaluation strategy – Rules for the evaluation of expressions in programming languages
-   Explicit substitution – The theory of substitution, as used in β-reduction
-   Functional programming
-   Harrop formula – A kind of constructive logical formula such that proofs are lambda terms
-   Interaction nets
-   Kleene–Rosser paradox – A demonstration that some form of lambda calculus is inconsistent
-   Knights of the Lambda Calculus – A semi-fictional organization of LISP and Scheme hackers
-   Krivine machine – An abstract machine to interpret call-by-name in lambda-calculus
-   Lambda calculus definition – Formal definition of the lambda calculus.
-   Let expression – An expression closely related to a lambda abstraction.
-   Minimalism (computing)
-   Rewriting – Transformation of formulæ in formal systems
-   SECD machine – A virtual machine designed for the lambda calculus
-   Scott–Curry theorem – A theorem about sets of lambda terms
-   To Mock a Mockingbird – An introduction to Haskell (programming language) and lambda calculus
-   Universal Turing machine – A formal computing machine that is equivalent to lambda calculus
-   Unlambda – An esoteric functional programming language based on combinatory logic


References


Further reading

-   Abelson, Harold & Gerald Jay Sussman. Structure and Interpretation of Computer Programs. The MIT Press. .
-   Hendrik Pieter Barendregt _Introduction to Lambda Calculus_.
-   Henk Barendregt, The Impact of the Lambda Calculus in Logic and Computer Science. The Bulletin of Symbolic Logic, Volume 3, Number 2, June 1997.
-   Barendregt, Hendrik Pieter, _The Type Free Lambda Calculus_ pp1091–1132 of _Handbook of Mathematical Logic_, North-Holland (1977)
-   Cardone and Hindley, 2006. History of Lambda-calculus and Combinatory Logic. In Gabbay and Woods (eds.), _Handbook of the History of Logic_, vol. 5. Elsevier.
-   Church, Alonzo, _An unsolvable problem of elementary number theory_, American Journal of Mathematics, 58 (1936), pp. 345–363. This paper contains the proof that the equivalence of lambda expressions is in general not decidable.
-   Alonzo Church, _The Calculi of Lambda-Conversion_ ()[30]
-   Kleene, Stephen, _A theory of positive integers in formal logic_, American Journal of Mathematics, 57 (1935), pp. 153–173 and 219–244. Contains the lambda calculus definitions of several familiar functions.
-   Landin, Peter, _A Correspondence Between ALGOL 60 and Church's Lambda-Notation_, Communications of the ACM, vol. 8, no. 2 (1965), pages 89–101. Available from the ACM site. A classic paper highlighting the importance of lambda calculus as a basis for programming languages.
-   Larson, Jim, _An Introduction to Lambda Calculus and Scheme_. A gentle introduction for programmers.
-   Schalk, A. and Simmons, H. (2005) ''An introduction to λ-calculi and arithmetic with a decent selection of exercises. Notes for a course in the Mathematical Logic MSc at Manchester University.
-   de Queiroz, Ruy J.G.B. (2008) "On Reduction Rules, Meaning-as-Use and Proof-Theoretic Semantics". _Studia Logica_, 90(2):211–247. . A paper giving a formal underpinning to the idea of 'meaning-is-use' which, even if based on proofs, it is different from proof-theoretic semantics as in the Dummett–Prawitz tradition since it takes reduction as the rules giving meaning.
-   Hankin, Chris, _An Introduction to Lambda Calculi for Computer Scientists,_

Monographs/textbooks for graduate students:

-   Morten Heine Sørensen, Paweł Urzyczyn, _Lectures on the Curry–Howard isomorphism_, Elsevier, 2006, is a recent monograph that covers the main topics of lambda calculus from the type-free variety, to most typed lambda calculi, including more recent developments like pure type systems and the lambda cube. It does not cover subtyping extensions.
-   covers lambda calculi from a practical type system perspective; some topics like dependent types are only mentioned, but subtyping is an important topic.

_Some parts of this article are based on material from FOLDOC, used with permission._


External links

-   Graham Hutton, Lambda Calculus, a short (12 minutes) Computerphile video on the Lambda Calculus
-   Helmut Brandl, _A Step by Step Introduction into Lambda Calculus_
-   -   Achim Jung, _A Short Introduction to the Lambda Calculus_-(PDF)
-   Dana Scott, _A timeline of lambda calculus_-(PDF)
-   David C. Keenan, _To Dissect a Mockingbird: A Graphical Notation for the Lambda Calculus with Animated Reduction_
-   Raúl Rojas, _A Tutorial Introduction to the Lambda Calculus_-(PDF)
-   Peter Selinger, _Lecture Notes on the Lambda Calculus_-(PDF)
-   L. Allison, _Some executable λ-calculus examples_
-   Georg P. Loczewski, _The Lambda Calculus and A++_
-   Bret Victor, _Alligator Eggs: A Puzzle Game Based on Lambda Calculus_
-   _Lambda Calculus_ on Safalra's Website
-   __
-   LCI Lambda Interpreter a simple yet powerful pure calculus interpreter
-   Lambda Calculus links on Lambda-the-Ultimate
-   Mike Thyer, Lambda Animator, a graphical Java applet demonstrating alternative reduction strategies.
-   Implementing the Lambda calculus using C++ Templates
-   Marius Buliga, _Graphic lambda calculus_
-   _Lambda Calculus as a Workflow Model_ by Peter Kelly, Paul Coddington, and Andrew Wendelborn; mentions graph reduction as a common means of evaluating lambda expressions and discusses the applicability of lambda calculus for distributed computing (due to the Church–Rosser property, which enables parallel graph reduction for lambda expressions).
-   Shane Steinert-Threlkeld, "Lambda Calculi", _Internet Encyclopedia of Philosophy_
-   Anton Salikhmetov, _Macro Lambda Calculus_

Category:1936 in computer science Category:Articles with example code Category:Computability theory Category:Formal methods Lambda_calculus Category:Models of computation Category:Theoretical computer science

[1]

[2] Coquand, Thierry, "Type Theory", _The Stanford Encyclopedia of Philosophy_ (Summer 2013 Edition), Edward N. Zalta (ed.).

[3]

[4]

[5] .

[6]

[7]

[8] For a full history, see Cardone and Hindley's "History of Lambda-calculus and Combinatory Logic" (2006).

[9]

[10]

[11]

[12]

[13]

[14] Alama, Jesse "The Lambda Calculus", _The Stanford Encyclopedia of Philosophy_ (Summer 2013 Edition), Edward N. Zalta (ed.).

[15] Dana Scott, "Looking Backward; Looking Forward", Invited Talk at the Workshop in honour of Dana Scott’s 85th birthday and 50 years of domain theory, 7-8 July, FLoC 2018 (talk 7 July 2018). The relevant passage begins at 32:50. (See also this extract of a May 2016 talk at the University of Birmingham, UK.)

[16]  Corrections.

[17]

[18]

[19]

[20]

[21]

[22] ; a note (accessed 2017) at the original location suggests that the authors consider the work originally referenced to have been superseded by a book.

[23]

[24]

[25] Types and Programming Languages, p. 273, Benjamin C. Pierce

[26]

[27]

[28]

[29]

[30]