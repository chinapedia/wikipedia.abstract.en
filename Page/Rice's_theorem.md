In computability theory, RICE'S THEOREM states that all non-trivial, semantic properties of programs are undecidable. A semantic property is one about the program's behavior (for instance, does the program terminate for all inputs), unlike a syntactic property (for instance, does the program contain an if-then-else statement). A property is _non-trivial_ if it is neither true for every computable function, nor false for every computable function.

Rice's theorem can also be put in terms of functions: for any non-trivial property of partial functions, no general and effective method can decide whether an algorithm computes a partial function with that property. Here, a property of partial functions is called _trivial_ if it holds for all partial computable functions or for none, and an effective decision method is called _general_ if it decides correctly for every algorithm. The theorem is named after Henry Gordon Rice, who proved it in his doctoral dissertation of 1951 at Syracuse University.


Introduction

Another way of stating Rice's theorem that is more useful in computability theory follows.

Let _S_ be a set of languages that is nontrivial, meaning

1.  there exists a Turing machine that recognizes a language in _S_,
2.  there exists a Turing machine that recognizes a language not in _S_.

Then it is undecidable to determine whether the language recognized by an arbitrary Turing machine lies in _S_.

In practice, this means that there is no machine that can always decide whether the language of a given Turing machine has a particular nontrivial property. Special cases include the undecidability of whether a Turing machine accepts a particular string, whether a Turing machine recognizes a particular recognizable language, and whether the language recognized by a Turing machine could be recognized by a nontrivial simpler machine, such as a finite automaton.

It is important to note that Rice's theorem does not say anything about those properties of machines or programs that are not also properties of functions and languages. For example, whether a machine runs for more than 100 steps on some input is a decidable property, even though it is non-trivial. Implementing exactly the same language, two different machines might require a different number of steps to recognize the same input. Similarly, whether a machine has more than 5 states is a decidable property of the machine, as the number of states can simply be counted. Where a property is of the kind that either of the two machines may or may not have it, while still implementing exactly the same language, the property is of the machines and not of the language, and Rice's Theorem does not apply.

Using Rogers' characterization of acceptable programming systems, Rice's Theorem may essentially be generalized from Turing machines to most computer programming languages: there exists no automatic method that decides with generality non-trivial questions on the behavior of computer programs.

As an example, consider the following variant of the halting problem. Let _P_ be the following property of partial functions F of one argument: _P_(F) means that F is defined for the argument '1'. It is obviously non-trivial, since there are partial functions that are defined at 1, and others that are undefined at 1. The _1-halting problem_ is the problem of deciding of any algorithm whether it defines a function with this property, i.e., whether the algorithm halts on input 1. By Rice's theorem, the 1-halting problem is undecidable. Similarly the question of whether a Turing machine _T_ terminates on an initially empty tape (rather than with an initial word _w_ given as second argument in addition to a description of _T_, as in the full halting problem) is still undecidable.


Formal statement

Let ℕ denote the natural numbers, and let P⁽¹⁾ denote the class of unary (partial) computable functions. Let ϕ: ℕ → P⁽¹⁾ be an admissible numbering of the computable functions. Denote by ϕ_(e) := ϕ(e) the th (partial) computable function.

We identify each _property_ that a computable function may have with the subset of P⁽¹⁾ consisting of the functions with that property. Thus, given a set F ⊆ P⁽¹⁾, a computable function ϕ_(e) has property F if and only if ϕ_(e) ∈ F. For each property F ⊆ P⁽¹⁾ there is an associated decision problem D_(F) of determining, given , whether ϕ_(e) ∈ F.

RICE'S THEOREM states that the decision problem D_(F) is decidable (also called _recursive_ or _computable_) if and only if F = ⌀ or F = P⁽¹⁾.


Examples

According to Rice's theorem, if there is at least one computable function in a particular class _C_ of computable functions and another computable function not in _C_ then the problem of deciding whether a particular program computes a function in _C_ is undecidable. For example, Rice's theorem shows that each of the following sets of computable functions is undecidable:

-   The class of computable functions that return _0_ for every input, and its complement.
-   The class of computable functions that return _0_ for at least one input, and its complement.
-   The class of computable functions that are constant, and its complement.
-   The class of indices for computable functions that are total.[1]
-   The class of indices for recursively enumerable sets that are cofinite.
-   The class of indices for recursively enumerable sets that are recursive.


Proof by Kleene's recursion theorem

A corollary to Kleene's recursion theorem states that for every Gödel numbering ϕ: ℕ → P⁽¹⁾ of the computable functions and every computable function Q(x, y), there is an index e such that ϕ_(e)(y) returns Q(e, y). (In the following, we say that f(x) "returns" g(x) if either f(x) = g(x), or both f(x) and g(x) are undefined.) Intuitively, ϕ_(e) is a quine, a function that returns its own source code (Gödel number), except that rather than returning it directly, ϕ_(e) passes its Gödel number to Q and returns the result.

Let F be a set of computable functions such that ⌀ ≠ F ≠ P⁽¹⁾. Then there are computable functions f ∈ F and g ∉ F. Suppose that the set of indices x such that ϕ_(x) ∈ F is decidable; then, there exists a function Q(x, y) that returns g(y) if ϕ_(x) ∈ F, and f(y) otherwise. By the corollary to the recursion theorem, there is an index e such that ϕ_(e)(y) returns Q(e, y). But then, if ϕ_(e) ∈ F, then ϕ_(e) is the same function as g, and therefore ϕ_(e) ∉ F; and if ϕ_(e) ∉ F, then ϕ_(e) is f, and therefore ϕ_(e) ∈ F. In both cases, we have a contradiction.


Proof by reduction from the halting problem

Proof sketch

Suppose, for concreteness, that we have an algorithm for examining a program _p_ and determining infallibly whether _p_ is an implementation of the squaring function, which takes an integer _d_ and returns _d_². The proof works just as well if we have an algorithm for deciding any other nontrivial property of program behavior (i.e a semantic and non-trivial property), and is given in general below.

The claim is that we can convert our algorithm for identifying squaring programs into one that identifies functions that halt. We will describe an algorithm that takes inputs _a_ and _i_ and determines whether program _a_ halts when given input _i_.

The algorithm for deciding this is conceptually simple: it constructs (the description of) a new program _t_ taking an argument _n_, which (1) first executes program _a_ on input _i_ (both _a_ and _i_ being hard-coded into the definition of _t_), and (2) then returns the square of _n_. If _a_(_i_) runs forever, then _t_ never gets to step (2), regardless of _n_. Then clearly, _t_ is a function for computing squares if and only if step (1) terminates. Since we've assumed that we can infallibly identify programs for computing squares, we can determine whether _t_, which depends on _a_ and _i_, is such a program, and that for every _a_ and _i_; thus we have obtained a program that decides whether program _a_ halts on input _i_. Note that our halting-decision algorithm never executes _t_, but only passes its description to the squaring-identification program, which by assumption always terminates; since the construction of the description of _t_ can also be done in a way that always terminates, the halting-decision cannot fail to halt either.

 halts (a,i) {
   define t(n) {
     a(i)
     return n×n
   }
   return is_a_squaring_function(t)
 }

This method doesn't depend specifically on being able to recognize functions that compute squares; as long as _some_ program can do what we're trying to recognize, we can add a call to _a_ to obtain our _t_. We could have had a method for recognizing programs for computing square roots, or programs for computing the monthly payroll, or programs that halt when given the input "Abraxas"; in each case, we would be able to solve the halting problem similarly.

Formal proof

Rice_reduction.svg

For the formal proof, algorithms are presumed to define partial functions over strings and are themselves represented by strings. The partial function computed by the algorithm represented by a string _a_ is denoted F_(_a_). This proof proceeds by reductio ad absurdum: we assume that there is a non-trivial property that is decided by an algorithm, and then show that it follows that we can decide the halting problem, which is not possible, and therefore a contradiction.

Let us now assume that _P_(_a_) is an algorithm that decides some non-trivial property of F_(_a_). Without loss of generality we may assume that _P_(_no-halt_) = "no", with _no-halt_ being the representation of an algorithm that never halts. If this is not true, then this holds for the negation of the property. Since _P_ decides a non-trivial property, it follows that there is a string _b_ that represents an algorithm and _P_(_b_) = "yes". We can then define an algorithm _H_(_a_, _i_) as follows:

    1. construct a string _t_ that represents an algorithm _T_(_j_) such that
    -   _T_ first simulates the computation of F_(_a_)(_i_),
    -   then _T_ simulates the computation of F_(_b_)(_j_) and returns its result.

    2. return _P_(_t_).

We can now show that _H_ decides the halting problem:

-   Assume that the algorithm represented by _a_ halts on input _i_. In this case F_(_t_) = F_(_b_) and, because _P_(_b_) = "yes" and the output of _P_(_x_) depends only on F_(_x_), it follows that _P_(_t_) = "yes" and, therefore _H_(_a_, _i_) = "yes".
-   Assume that the algorithm represented by _a_ does not halt on input _i_. In this case F_(_t_) = F_(_no-halt_), i.e., the partial function that is never defined. Since _P_(_no-halt_) = "no" and the output of _P_(_x_) depends only on F_(_x_), it follows that _P_(_t_) = "no" and, therefore _H_(_a_, _i_) = "no".

Since the halting problem is known to be undecidable, this is a contradiction and the assumption that there is an algorithm _P_(_a_) that decides a non-trivial property for the function represented by _a_ must be false.


Rice's theorem and index sets

Rice's theorem can be succinctly stated in terms of index sets:

  Let 𝒞 be a class of partial recursive functions with index set C. Then C is recursive if and only if C = ⌀ or C = ℕ.

Here ℕ is the set of natural numbers, including zero.


An analogue of Rice's theorem for recursive sets

One can regard Rice's theorem as asserting the impossibility of effectively deciding for any _recursively enumerable_ set whether it has a certain nontrivial property.[2] In this section, we give an analogue of Rice's theorem for recursive sets_,_ instead of recursively enumerable sets.[3] Roughly speaking, the analogue says that if one can effectively determine for every _recursive_ set whether it has a certain property, then only finitely many integers determine whether a recursive set has the property. This result is analogous to the original theorem of Rice, because both results assert that a property is "decidable" only if one can determine whether a set has that property by examining _for at most finitely many i_ (for no i, for the original theorem), if i belongs to the set.

Let W be a class (called a _simple game_ and thought of as a property) of recursive sets. If S is a recursive set, then for some e, computable function ϕ_(e) is the characteristic function of S. We call e a CHARACTERISTIC INDEX for S. (There are infinitely many such e.) Let's say the class W is _computable_ if there is an algorithm (computable function) that decides for any nonnegative integer e (not necessarily a characteristic index),

-   if e is a characteristic index for a recursive set belonging to W, then the algorithm gives "yes";
-   if e is a characteristic index for a recursive set not belonging to W, then the algorithm gives "no".

A set S ⊆ ℕ _extends_ a string τ of 0's and 1's if for every k < |τ| (the length of τ), the kth element of τ is 1 if k ∈ S; and is 0 otherwise. For example, S = {1, 3, 4, 7, …} extends the string 01011001. A string τ is _winning determining_ if every recursive set extending τ belongs to W. A string τ is _losing determining_ if no recursive set extending τ belongs to W.

We can now state the following ANALOGUE OF RICE'S THEOREM (Kreisel, Lacombe, and Shoenfield, 1959,[4] Kumabe and Mihara, 2008[5]):

A class W of recursive sets is computable if and only if there are a recursively enumerable set T₀ of losing determining strings and a recursively enumerable set T₁ of winning determining strings such that every recursive set extends a string in T₀ ∪ T₁.

This result has been applied to foundational problems in computational social choice (more broadly, algorithmic game theory). For instance, Kumabe and Mihara (2008,[6] 2008[7]) apply this result to an investigation of the Nakamura numbers for simple games in cooperative game theory and social choice theory.


See also

-   Gödel's incompleteness theorems
-   Halting problem
-   Recursion theory
-   Rice–Shapiro theorem


Notes


References

-   -   -


External links

-

Category:Articles containing proofs Category:Articles with inconsistent citation formats Category:Theorems in theory of computation Category:Theorems in the foundations of mathematics Category:Undecidable problems

[1]

[2] A set S ⊆ ℕ is RECURSIVELY ENUMERABLE if S = W_(e) := dom ϕ_(e) := {x : ϕ_(e)(x) ↓ } for some e, where W_(e) is the domain dom ϕ_(e) (the set of inputs x such that ϕ_(e)(x) is defined) of ϕ_(e). The result for recursively enumerable sets can be obtained from that for (partial) computable functions by considering the class {ϕ_(e) : dom ϕ_(e) ∈ C}, where C is a class of recursively enumerable sets.

[3] A recursively enumerable set S ⊆ ℕ is RECURSIVE if its complement is recursively enumerable. Equivalently, S is recursive if its characteristic function is computable.

[4]

[5]

[6]

[7]