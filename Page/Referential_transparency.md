REFERENTIAL TRANSPARENCY and REFERENTIAL OPACITY are properties of parts of computer programs. An expression is called referentially transparent if it can be replaced with its corresponding value without changing the program's behavior.[1] This requires that the expression is pure, that is to say the expression value must be the same for the same inputs and its evaluation must have no side effects. An expression that is not referentially transparent is called referentially opaque.

In mathematics all function applications are referentially transparent, by the definition of what constitutes a mathematical function. However, this is not always the case in programming, where the terms procedure and method are used to avoid misleading connotations. In functional programming only referentially transparent functions are considered. Some programming languages provide means to guarantee referential transparency. Some functional programming languages enforce referential transparency for all functions.

The importance of referential transparency is that it allows the programmer and the compiler to reason about program behavior as a rewrite system. This can help in proving correctness, simplifying an algorithm, assisting in modifying code without breaking it, or optimizing code by means of memoization, common subexpression elimination, lazy evaluation, or parallelization.


History

The concept seems to have originated in Alfred North Whitehead and Bertrand Russell's _Principia Mathematica_ (1910–13).[2] It was adopted in analytical philosophy by Willard Van Orman Quine. In §30 of _Word and Object_ (1960) Quine gives this definition:

  A mode of containment φ is referentially transparent if, whenever an occurrence of a singular term t is purely referential in a term or sentence ψ(t), it is purely referential also in the containing term or sentence φ(ψ(t)).

The term appeared in its contemporary usage, in the discussion of variables in programming languages, in Christopher Strachey's seminal set of lecture notes _Fundamental Concepts in Programming Languages_ (1967). The lecture notes referenced Quine's _Word and Object_ in the bibliography.


Examples and counterexamples

If all functions involved in the expression are pure functions, then the expression is referentially transparent.

Consider a function that returns the input from some source. In pseudocode, a call to this function might be GetInput(Source) where Source might identify a particular disk file, the keyboard, etc. Even with identical values of Source, the successive return values will be different. Therefore, function GetInput() is neither deterministic nor referentially transparent.

A more subtle example is that of a function that has a free variable, i.e., depends on some input that is not explicitly passed as a parameter. This is then resolved according to name binding rules to a non-local variable, such as a global variable, a variable in the current execution environment (for dynamic binding), or a variable in a closure (for static binding). Since this variable can be altered without changing the values passed as parameter, the results of subsequent calls to the function may differ even if the parameters are identical. However, in pure functional programming, destructive assignment is not allowed, and thus if the free variable is statically bound to a value, the function is still referentially transparent, as neither the non-local variable nor its value can change, due to static binding and immutability, respectively.

Arithmetic operations are referentially transparent: 5 * 5 can be replaced by 25, for instance. In fact, all functions in the mathematical sense are referentially transparent: sin(x) is transparent, since it will always give the same result for each particular x.

Assignments are not transparent. For instance, the C expression x = x + 1 changes the value assigned to the variable x. Assuming x initially has value 10, two consecutive evaluations of the expression yield, respectively, 11 and 12. Clearly, replacing x = x + 1 with either 11 or 12 gives a program with different meaning, and so the expression is not referentially transparent. However, calling a function such as int plusone(int x) {return x+1;} _is_ transparent, as it will not implicitly change the input x and thus has no such side effects.

today() is not transparent, as if you evaluate it and replace it by its value (say, "Jan 1, 2001"), you don't get the same result as you will if you run it tomorrow. This is because it depends on a state (the date).

In languages with no side-effects, like Haskell, we can substitute equals for equals because f(x) = f(x) for every value of x. This does not hold for languages with side-effects.


Contrast to imperative programming

If the substitution of an expression with its value is valid only at a certain point in the execution of the program, then the expression is not referentially transparent. The definition and ordering of these sequence points are the theoretical foundation of imperative programming, and part of the semantics of an imperative programming language.

However, because a referentially transparent expression can be evaluated at any time, it is not necessary to define sequence points nor any guarantee of the order of evaluation at all. Programming done without these considerations is called purely functional programming.

One advantage of writing code in a referentially transparent style is that given an intelligent compiler, static code analysis is easier and better code-improving transformations are possible automatically. For example, when programming in C, there will be a performance penalty for including a call to an expensive function inside a loop, even if the function call could be moved outside of the loop without changing the results of the program. The programmer would be forced to perform manual code motion of the call, possibly at the expense of source code readability. However, if the compiler is able to determine that the function call is referentially transparent, it can perform this transformation automatically.

The primary disadvantage of languages that enforce referential transparency is that they make the expression of operations that naturally fit a sequence-of-steps imperative programming style more awkward and less concise. Such languages often incorporate mechanisms to make these tasks easier while retaining the purely functional quality of the language, such as definite clause grammars and monads.


Another example

As an example, let's use two functions, one which is referentially opaque, and the other which is referentially transparent:

     int globalValue = 0;

     int rq(int x) {
       globalValue++;
       return x + globalValue;
     }

     int rt(int x) {
       return x + 1;
     }

The function rt is referentially transparent, which means that rt(x) = rt(y) if x = y. For instance, rt(6) = 6 + 1 = 7, rt(4) = 4 + 1 = 5, and so on. However, we can't say any such thing for rq because it uses a global variable that it modifies.

The referential opacity of rq makes reasoning about programs more difficult. For example, say we wish to reason about the following statement:

integer p = rq(x) + rq(y) * (rq(x) - rq(x));

One may be tempted to simplify this statement to:

integer p = rq(x) + rq(y) * (0);
integer p = rq(x) + 0;
integer p = rq(x);

However, this will not work for rq() because each occurrence of rq(x) evaluates to a different value. Remember that the return value of rq is based on a global value that isn't passed in and which gets modified on each call to rq. This means that mathematical identities such as x − x = 0 no longer hold.

Such mathematical identities _will_ hold for referentially transparent functions such as rt.

However, a more sophisticated analysis can be used to simplify the statement to:

integer a = globalValue; integer p = x + a + 1 + (y + a + 2) * (x + a + 3 - (x + a + 4)); globalValue = globalValue + 4;
integer a = globalValue; integer p = x + a + 1 + (y + a + 2) * (x + a + 3 - x - a - 4)); globalValue = globalValue + 4;
integer a = globalValue; integer p = x + a + 1 + (y + a + 2) * (-1); globalValue = globalValue + 4;
integer a = globalValue; integer p = x + a + 1 - y - a - 2; globalValue = globalValue + 4;
integer p = x - y - 1; globalValue = globalValue + 4;

This takes more steps and requires a degree of insight into the code infeasible for compiler optimization.

Therefore, referential transparency allows us to reason about our code which will lead to more robust programs, the possibility of finding bugs that we couldn't hope to find by testing, and the possibility of seeing opportunities for optimization.


See also

-   Idempotence in computer science
-   Liskov substitution principle
-   Rewrite rule


References

-   -


External links

-   http://userpage.fu-berlin.de/~ram/pub/pub_jf47ht81Ht/referential_transparency
-   https://stackoverflow.com/a/9859966/655289 by Prof. Uday Reddy (University of Birmingham)
-   http://okmij.org/ftp/Computation/PrincipiaMathematica.txt

Category:Programming language theory

[1]

[2]  Here: p.665. According to Quine, the term originates from there.