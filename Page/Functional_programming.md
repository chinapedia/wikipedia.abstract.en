In computer science, FUNCTIONAL PROGRAMMING is a programming paradigm—a style of building the structure and elements of computer programs—that treats computation as the evaluation of mathematical functions and avoids changing-state and mutable data. It is a declarative programming paradigm in that programming is done with expressions or declarations[1] instead of statements. Functional code is idempotent: a function's return value depends only on its arguments, so calling a function with the same value for an argument always produces the same result. This is in contrast to imperative programming where, in addition to a function's arguments, global program state can affect a function's resulting value. Eliminating side effects, that is, changes in state that do not depend on the function inputs, can make understanding a program easier, which is one of the key motivations for the development of functional programming.

Functional programming has its origins in lambda calculus, a formal system developed in the 1930s to investigate computability, the Entscheidungsproblem, function definition, function application, and recursion. Many functional programming languages can be viewed as elaborations on the lambda calculus. Another well-known declarative programming paradigm, logic programming, is based on relations.[2]

In contrast, imperative programming changes state with statements in the source code, the simplest example being assignment. Imperative programming has subroutines, but these are not mathematical functions. They can have side effects that may change a program's state, allowing for functions without return values. Because of this, they lack referential transparency, that is, the same language expression can result in different values at different times depending on the state of the executing program.[3]

Functional programming languages have largely been emphasized in academia rather than industry settings. However, programming languages that support functional programming have been used in industry, including Common Lisp, Scheme,[4][5][6][7] Clojure, Wolfram Language[8][9], Racket,[10] Erlang,[11][12][13] OCaml,[14][15] Haskell,[16][17] and F#.[18][19] JavaScript, one of the world's most widely distributed languages,[20][21][22] has the properties of a dynamically typed functional language,[23] in addition to imperative and object-oriented paradigms. Functional programming is also key to some languages that have found success in specific domains, like R in statistics,[24][25] J, K and Q in financial analysis, and XQuery/XSLT for XML[26][27]. Domain-specific declarative languages like SQL and Lex/Yacc use some elements of functional programming, especially in not supporting mutable values.[28]

Programming in a functional style can be accomplished in languages that are not specifically designed for functional programming, such as with Perl[29], PHP[30], C++11, and Kotlin[31]. An interesting case is that of Scala[32] – it is frequently written in a functional style, but the presence of side effects and mutable state place it in a grey area between imperative and functional languages.


History

Lambda calculus provides a theoretical framework for describing functions and their evaluation. It is a mathematical abstraction rather than a programming language—but it forms the basis of almost all current functional programming languages. An equivalent theoretical formulation, combinatory logic, is commonly perceived as more abstract than lambda calculus and preceded it in invention. Combinatory logic and lambda calculus were both originally developed to achieve a clearer approach to the foundations of mathematics.[33]

An early functional-flavored language was Lisp, developed in the late 1950s for the IBM 700/7000 series scientific computers by John McCarthy while at Massachusetts Institute of Technology (MIT).[34] Lisp first introduced many paradigmatic features of functional programming, though early Lisps were multi-paradigm languages, and incorporated support for numerous programming styles as new paradigms evolved. Later dialects, such as Scheme and Clojure, and offshoots such as Dylan and Julia, sought to simplify and rationalise Lisp around a cleanly functional core, while Common Lisp was designed to preserve and update the paradigmatic features of the numerous older dialects it replaced.[35]

Information Processing Language (IPL), 1956, is sometimes cited as the first computer-based functional programming language.[36] It is an assembly-style language for manipulating lists of symbols. It does have a notion of _generator_, which amounts to a function that accepts a function as an argument, and, since it is an assembly-level language, code can be data, so IPL can be regarded as having higher-order functions. However, it relies heavily on mutating list structure and similar imperative features.

Kenneth E. Iverson developed APL in the early 1960s, described in his 1962 book _A Programming Language_ (). APL was the primary influence on John Backus's FP. In the early 1990s, Iverson and Roger Hui created J. In the mid-1990s, Arthur Whitney, who had previously worked with Iverson, created K, which is used commercially in financial industries along with its descendant Q.

John Backus presented FP in his 1977 Turing Award lecture "Can Programming Be Liberated From the von Neumann Style? A Functional Style and its Algebra of Programs".[37] He defines functional programs as being built up in a hierarchical way by means of "combining forms" that allow an "algebra of programs"; in modern language, this means that functional programs follow the principle of compositionality. Backus's paper popularized research into functional programming, though it emphasized function-level programming rather than the lambda-calculus style now associated with functional programming.

The 1973 language ML was created by Robin Milner at the University of Edinburgh, and David Turner developed the language SASL at the University of St Andrews. Also in Edinburgh in the 1970s, Burstall and Darlington developed the functional language NPL.[38] NPL was based on Kleene Recursion Equations and was first introduced in their work on program transformation.[39] Burstall, MacQueen and Sannella then incorporated the polymorphic type checking from ML to produce the language Hope.[40] ML eventually developed into several dialects, the most common of which are now OCaml and Standard ML.

Meanwhile, the development of Scheme, a simple lexically scoped and (impurely) functional dialect of Lisp, as described in the influential Lambda Papers and the classic 1985 textbook _Structure and Interpretation of Computer Programs_, brought awareness of the power of functional programming to the wider programming-languages community.

In the 1980s, Per Martin-Löf developed intuitionistic type theory (also called _constructive_ type theory), which associated functional programs with constructive proofs expressed as dependent types. This led to new approaches to interactive theorem proving and has influenced the development of subsequent functional programming languages. The lazy functional language, Miranda, developed by David Turner, initially appeared in 1985 and had a strong influence on Haskell. With Miranda being proprietary, Haskell began with a consensus in 1987 to form an open standard for functional programming research; implementation releases have been ongoing since 1990.

More recently it has found use in niches such as parametric CAD courtesy of the OpenSCAD language built on the CSG geometry framework, although its inability to reassign values has led to much confusion among users who are often unfamiliar with Functional programming as a concept.[41]

Functional programming continues to be used in commercial settings.[42][43][44][45]


Concepts

A number of concepts and paradigms are specific to functional programming, and generally foreign to imperative programming (including object-oriented programming). However, programming languages often cater to several programming paradigms, so programmers using "mostly imperative" languages may have utilized some of these concepts.[46]

First-class and higher-order functions

Higher-order functions are functions that can either take other functions as arguments or return them as results. In calculus, an example of a higher-order function is the differential operator d/dx, which returns the derivative of a function f.

Higher-order functions are closely related to first-class functions in that higher-order functions and first-class functions both allow functions as arguments and results of other functions. The distinction between the two is subtle: "higher-order" describes a mathematical concept of functions that operate on other functions, while "first-class" is a computer science term that describes programming language entities that have no restriction on their use (thus first-class functions can appear anywhere in the program that other first-class entities like numbers can, including as arguments to other functions and as their return values).

Higher-order functions enable partial application or currying, a technique that applies a function to its arguments one at a time, with each application returning a new function that accepts the next argument. This lets a programmer succinctly express, for example, the successor function as the addition operator partially applied to the natural number one.

Pure functions

Pure functions (or expressions) have no side effects (memory or I/O). This means that pure functions have several useful properties, many of which can be used to optimize the code:

-   If the result of a pure expression is not used, it can be removed without affecting other expressions.
-   If a pure function is called with arguments that cause no side-effects, the result is constant with respect to that argument list (sometimes called referential transparency), i.e., calling the pure function again with the same arguments returns the same result. (This can enable caching optimizations such as memoization.)
-   If there is no data dependency between two pure expressions, their order can be reversed, or they can be performed in parallel and they cannot interfere with one another (in other terms, the evaluation of any pure expression is thread-safe).
-   If the entire language does not allow side-effects, then any evaluation strategy can be used; this gives the compiler freedom to reorder or combine the evaluation of expressions in a program (for example, using deforestation).

While most compilers for imperative programming languages detect pure functions and perform common-subexpression elimination for pure function calls, they cannot always do this for pre-compiled libraries, which generally do not expose this information, thus preventing optimizations that involve those external functions. Some compilers, such as gcc, add extra keywords for a programmer to explicitly mark external functions as pure, to enable such optimizations. Fortran 95 also lets functions be designated _pure_.[47] C++11 added constexpr keyword with similar semantics.

Recursion

Iteration (looping) in functional languages is usually accomplished via recursion. Recursive functions invoke themselves, letting an operation be repeated until it reaches the base case. Although some recursion requires maintaining a stack, tail recursion can be recognized and optimized by a compiler into the same code used to implement iteration in imperative languages. The Scheme language standard requires implementations to recognize and optimize tail recursion. Tail recursion optimization can be implemented by transforming the program into continuation passing style during compiling, among other approaches.

Common patterns of recursion can be abstracted away using higher-order functions, with catamorphisms and anamorphisms (or "folds" and "unfolds") being the most obvious examples. Such recursion schemes play a role analogous to built-in control structures such as loops in imperative languages.

Most general purpose functional programming languages allow unrestricted recursion and are Turing complete, which makes the halting problem undecidable, can cause unsoundness of equational reasoning, and generally requires the introduction of inconsistency into the logic expressed by the language's type system. Some special purpose languages such as Coq allow only well-founded recursion and are strongly normalizing (nonterminating computations can be expressed only with infinite streams of values called codata). As a consequence, these languages fail to be Turing complete and expressing certain functions in them is impossible, but they can still express a wide class of interesting computations while avoiding the problems introduced by unrestricted recursion. Functional programming limited to well-founded recursion with a few other constraints is called total functional programming.[48]

Strict versus non-strict evaluation

Functional languages can be categorized by whether they use _strict (eager)_ or _non-strict (lazy)_ evaluation, concepts that refer to how function arguments are processed when an expression is being evaluated. The technical difference is in the denotational semantics of expressions containing failing or divergent computations. Under strict evaluation, the evaluation of any term containing a failing subterm fails. For example, the expression:

print length([2+1, 3*2, 1/0, 5-4])

fails under strict evaluation because of the division by zero in the third element of the list. Under lazy evaluation, the length function returns the value 4 (i.e., the number of items in the list), since evaluating it does not attempt to evaluate the terms making up the list. In brief, strict evaluation always fully evaluates function arguments before invoking the function. Lazy evaluation does not evaluate function arguments unless their values are required to evaluate the function call itself.

The usual implementation strategy for lazy evaluation in functional languages is graph reduction.[49] Lazy evaluation is used by default in several pure functional languages, including Miranda, Clean, and Haskell.

argues for lazy evaluation as a mechanism for improving program modularity through separation of concerns, by easing independent implementation of producers and consumers of data streams.[50] Launchbury 1993 describes some difficulties that lazy evaluation introduces, particularly in analyzing a program's storage requirements, and proposes an operational semantics to aid in such analysis.[51] Harper 2009 proposes including both strict and lazy evaluation in the same language, using the language's type system to distinguish them.[52]

Type systems

Especially since the development of Hindley–Milner type inference in the 1970s, functional programming languages have tended to use typed lambda calculus, rejecting all invalid programs at compilation time and risking false positive errors, as opposed to the untyped lambda calculus, that accepts all valid programs at compilation time and risks false negative errors, used in Lisp and its variants (such as Scheme), though they reject all invalid programs at runtime, when the information is enough to not reject valid programs. The use of algebraic datatypes makes manipulation of complex data structures convenient; the presence of strong compile-time type checking makes programs more reliable in absence of other reliability techniques like test-driven development, while type inference frees the programmer from the need to manually declare types to the compiler in most cases.

Some research-oriented functional languages such as Coq, Agda, Cayenne, and Epigram are based on intuitionistic type theory, which lets types depend on terms. Such types are called dependent types. These type systems do not have decidable type inference and are difficult to understand and program with.[53][54][55][56] But dependent types can express arbitrary propositions in predicate logic. Through the Curry–Howard isomorphism, then, well-typed programs in these languages become a means of writing formal mathematical proofs from which a compiler can generate certified code. While these languages are mainly of interest in academic research (including in formalized mathematics), they have begun to be used in engineering as well. Compcert is a compiler for a subset of the C programming language that is written in Coq and formally verified.[57]

A limited form of dependent types called generalized algebraic data types (GADT's) can be implemented in a way that provides some of the benefits of dependently typed programming while avoiding most of its inconvenience.[58] GADT's are available in the Glasgow Haskell Compiler, in OCaml (since version 4.00) and in Scala (as "case classes"), and have been proposed as additions to other languages including Java and C#.[59]

Referential transparency

Functional programs do not have assignment statements, that is, the value of a variable in a functional program never changes once defined. This eliminates any chances of side effects because any variable can be replaced with its actual value at any point of execution. So, functional programs are referentially transparent.[60]

Consider C assignment statement x = x * 10, this changes the value assigned to the variable x. Let us say that the initial value of x was 1, then two consecutive evaluations of the variable x yields 10 and 100 respectively. Clearly, replacing x = x * 10 with either 10 or 100 gives a program with different meaning, and so the expression _is not_ referentially transparent. In fact, assignment statements are never referentially transparent.

Now, consider another function such as

    int plusone(int x) {return x+1;}

_is_ transparent, as it does not implicitly change the input x and thus has no such side effects. Functional programs exclusively use this type of function and are therefore referentially transparent.

Functional programming in non-functional languages

It is possible to use a functional style of programming in languages that are not traditionally considered functional languages.[61] For example, both D[62] and Fortran 95[63] explicitly support pure functions.

JavaScript, Lua[64] and Python had first class functions from their inception.[65] Python had support for "lambda", "map", "reduce", and "filter" in 1994, as well as closures in Python 2.2,[66] though Python 3 relegated "reduce" to the functools standard library module.[67] First-class functions have been introduced into other mainstream languages such as PHP 5.3, Visual Basic 9, C# 3.0, C++11, and Kotlin[68].

In PHP, anonymous classes, closures and lambdas are fully supported. Libraries and language extensions for immutable data structures are being developed to aid programming in the functional style.

In Java, anonymous classes can sometimes be used to simulate closures;[69] however, anonymous classes are not always proper replacements to closures because they have more limited capabilities.[70] Java 8 supports lambda expressions as a replacement for some anonymous classes.[71] However, the presence of checked exceptions in Java can make functional programming inconvenient, because it can be necessary to catch checked exceptions and then rethrow them—a problem that does not occur in other JVM languages that do not have checked exceptions, such as Scala.

In C#, anonymous classes are not necessary, because closures and lambdas are fully supported. Libraries and language extensions for immutable data structures are being developed to aid programming in the functional style in C#.

Many object-oriented design patterns are expressible in functional programming terms: for example, the strategy pattern simply dictates use of a higher-order function, and the visitor pattern roughly corresponds to a catamorphism, or fold.

Similarly, the idea of immutable data from functional programming is often included in imperative programming languages,[72] for example the tuple in Python, which is an immutable array.

Data structures

Purely functional data structures are often represented in a different way than their imperative counterparts.[73] For example, the array with constant access and update times is a basic component of most imperative languages, and many imperative data-structures, such as the hash table and binary heap, are based on arrays. Arrays can be replaced by maps or random access lists, which admit purely functional implementation, but have logarithmic access and update times. Purely functional data structures have persistence, a property of keeping previous versions of the data structure unmodified. In Clojure, persistent data structures are used as functional alternatives to their imperative counterparts. Persistent vectors, for example, use trees for partial updating. Calling the insert method will result in some but not all nodes being created.[74]


Comparison to imperative programming

Functional programming is very different from imperative programming. The most significant differences stem from the fact that functional programming avoids side effects, which are used in imperative programming to implement state and I/O. Pure functional programming completely prevents side-effects and provides referential transparency.

Higher-order functions are rarely used in older imperative programming. A traditional imperative program might use a loop to traverse and modify a list. A functional program, on the other hand, would probably use a higher-order “map” function that takes a function and a list, generating and returning a new list by applying the function to each list item.

Simulating state

There are tasks (for example, maintaining a bank account balance) that often seem most naturally implemented with state. Pure functional programming performs these tasks, and I/O tasks such as accepting user input and printing to the screen, in a different way.

The pure functional programming language Haskell implements them using monads, derived from category theory. Monads offer a way to abstract certain types of computational patterns, including (but not limited to) modeling of computations with mutable state (and other side effects such as I/O) in an imperative manner without losing purity. While existing monads may be easy to apply in a program, given appropriate templates and examples, many students find them difficult to understand conceptually, e.g., when asked to define new monads (which is sometimes needed for certain types of libraries).[75]

Functional languages also simulate states by passing around immutable states. This can be done by making a function accept the state as one of its parameters, and return a new state together with the result, leaving the old state unchanged.[76]

Impure functional languages usually include a more direct method of managing mutable state. Clojure, for example, uses managed references that can be updated by applying pure functions to the current state. This kind of approach enables mutability while still promoting the use of pure functions as the preferred way to express computations.

Alternative methods such as Hoare logic and uniqueness have been developed to track side effects in programs. Some modern research languages use effect systems to make the presence of side effects explicit.

Efficiency issues

Functional programming languages are typically less efficient in their use of CPU and memory than imperative languages such as C and Pascal.[77] This is related to the fact that some mutable data structures like arrays have a very straightforward implementation using present hardware (which is a highly evolved Turing machine). Flat arrays may be accessed very efficiently with deeply pipelined CPUs, prefetched efficiently through caches (with no complex pointer chasing), or handled with SIMD instructions. It is also not easy to create their equally efficient general-purpose immutable counterparts. For purely functional languages, the worst-case slowdown is logarithmic in the number of memory cells used, because mutable memory can be represented by a purely functional data structure with logarithmic access time (such as a balanced tree).[78] However, such slowdowns are not universal. For programs that perform intensive numerical computations, functional languages such as OCaml and Clean are only slightly slower than C according to The Computer Language Benchmarks Game.[79] For programs that handle large matrices and multidimensional databases, array functional languages (such as J and K) were designed with speed optimizations.

Immutability of data can in many cases lead to execution efficiency by allowing the compiler to make assumptions that are unsafe in an imperative language, thus increasing opportunities for inline expansion.[80]

Lazy evaluation may also speed up the program, even asymptotically, whereas it may slow it down at most by a constant factor (however, it may introduce memory leaks if used improperly). Launchbury 1993[81] discusses theoretical issues related to memory leaks from lazy evaluation, and O'Sullivan _et al._ 2008[82] give some practical advice for analyzing and fixing them. However, the most general implementations of lazy evaluation making extensive use of dereferenced code and data perform poorly on modern processors with deep pipelines and multi-level caches (where a cache miss may cost hundreds of cycles) .

Coding styles

Imperative programs have the environment and a sequence of steps manipulating the environment. Functional programs have an expression that is successively substituted until it reaches normal form. An example illustrates this with different solutions to the same programming goal (calculating Fibonacci numbers).

Java

Get Fibonacci number

        public UnaryOperator<Integer> fib(Integer acc, Integer next) {
            return x -> {
                return (x > 0) ? fib(acc + next, acc).apply(--x) : acc;
            };
        }
        System.out.println(fib(0, 1).apply(5));

OCAML

Printing first 10 Fibonacci numbers

    let fib_list =
      let rec fib_list_aux first second = function
        | 0 -> []
        | x -> first::fib_list_aux second (first+second) (x-1)
      in
      fib_list_aux 0 1

    let () = List.iter (Printf.printf "%d ") (fib_list 10)

PHP

Printing first 10 Fibonacci numbers, using function

    function fib(int $n) : int {
        return ($n === 0 || $n === 1) ? $n : fib($n - 1) + fib($n - 2);
    }

    for ($i = 0; $i <= 10; $i++) echo fib($i) . PHP_EOL;

Printing first 10 Fibonacci numbers, using closure

    $fib = function(int $n) use(&$fib) : int {
        return ($n === 0 || $n === 1) ? $n : $fib($n - 1) + $fib($n - 2);
    };

    for ($i = 0; $i <= 10; $i++) echo $fib($i) . PHP_EOL;

Printing a list with first 10 Fibonacci numbers, with generators

    function fib(int $n) {
        yield 0; $n--;
        yield 1; $n--;
        $second = ($first = 2) + 1;
        while ($n-- !== 0) {
            yield $first;
            [$second, $first] = [$first + $second, $second];
        }
    }

    $fibo = fib(10);
    foreach ($fibo as $value) {
        echo $value . PHP_EOL;
    }

Python

Printing a list of the first 10 Fibonacci numbers, iterative

    def fibonacci(n, first=0, second=1):
        for _ in range(n):
            print(first) # side-effect
            first, second = second, first + second # assignment
    fibonacci(10)

Printing a list of the first 10 Fibonacci numbers, functional expression style

    fibonacci = (lambda n, first=0, second=1:
        "" if n == 0 else
        str(first) + "\n" + fibonacci(n - 1, second, first + second))
    print(fibonacci(10), end="")

Printing a list of the first 10 Fibonacci numbers, with generators

    def fibonacci(n, first=0, second=1):
        for _ in range(n):
            yield first
            first, second = second, first + second # assignment
    print(list(fibonacci(10)))

Printing a list of the first 10 Fibonacci numbers, functional expression style

    fibonacci = (lambda n, first=0, second=1:
        [] if n == 0 else
        [first] + fibonacci(n - 1, second, first + second))
    print(fibonacci(10))

Printing a list of the first 10 Fibonacci numbers, recursive style

    def fibonacci(n):
        if n <= 1:
            return n
        else:
            return fibonacci(n-2) + fibonacci(n-1)

    for n in range(10):
        print(fibonacci(n))

Wolfram Language

Printing first 10 Fibonacci numbers,functional expression style[83]

    Fibonacci/@Range[10]

Haskell

Printing first 10 Fibonacci numbers, functional expression style[84]

    fibonacci_aux = \n first second->
        if n == 0 then "" else
        show first ++ "\n" ++ fibonacci_aux (n - 1) second (first + second)
    fibonacci = \n-> fibonacci_aux n 0 1
    main = putStr (fibonacci 10)

Printing a list with first 10 Fibonacci numbers, functional expression style[85]

    fibonacci_aux = \n first second->
        if n == 0 then [] else
        [first] ++ fibonacci_aux (n - 1) second (first + second)
    fibonacci = \n-> fibonacci_aux n 0 1
    main = putStrLn (show (fibonacci 10))

Printing the 11th Fibonacci number, functional expression style[86]

    fibonacci = \n-> if n == 0 then 0
                     else if n == 1 then 1
                          else fibonacci(n - 1) + fibonacci(n - 2)
    main = putStrLn (show (fibonacci 10))

Printing the 11th Fibonacci number, functional expression style,[87] tail recursive

    fibonacci_aux = \n first second->
        if n == 0 then first else
        fibonacci_aux (n - 1) second (first + second)
    fibonacci = \n-> Fibonacci_aux n 0 1
    main = putStrLn (show (fibonacci 10))

Printing the 11th Fibonacci number, functional expression style[88] with recursive lists

    fibonacci_aux = \first second-> first : fibonacci_aux second (first + second)
    select = \n zs-> if n==0 then head zs
                     else select (n - 1) (tail zs)
    fibonacci = \n-> select n (fibonacci_aux 0 1)
    main = putStrLn (show (fibonacci 10))

Printing the 11th Fibonacci number, functional expression style[89] with primitives for recursive lists

    fibonacci_aux = \first second-> first : fibonacci_aux second (first + second)
    fibonacci = \n-> (fibonacci_aux 0 1) !! n
    main = putStrLn (show (fibonacci 10))

Printing the 11th Fibonacci number, functional expression style[90] with primitives for recursive lists, more concisely

    fibonacci_aux = 0:1:zipWith (+) fibonacci_aux (tail fibonacci_aux)
    fibonacci = \n-> fibonacci_aux !! n
    main = putStrLn (show (fibonacci 10))

Printing the 11th Fibonacci number, functional declaration style[91]

    fibonacci 0 = 0
    fibonacci 1 = 1
    fibonacci n = fibonacci (n-1) + fibonacci (n-2)
    main = putStrLn (show (fibonacci 10))

Printing the 11th Fibonacci number, functional declaration style,[92] tail recursive

    fibonacci_aux 0 first _ = first
    fibonacci_aux n first second = fibonacci_aux (n - 1) second (first + second)
    fibonacci n = fibonacci_aux n 0 1
    main = putStrLn (show (fibonacci 10))

Printing the 11th Fibonacci number, functional declaration style, using lazy infinite lists and primitives

    fibs = 1 : 1 : zipWith (+) fibs (tail fibs)
    -- an infinite list of the fibonacci numbers
    -- fibs is defined in terms of fibs
    fibonacci = (fibs !!)
    main = putStrLn $ show $ fibonacci 11

Printing the first 10 Fibonacci numbers, list comprehension (generator) style

    fibs = [0, 1] ++ [(fibs !! x) + (fibs !! (x + 1)) | x <- [0..]]
    main = putStrLn $ show $ take 10 fibs

Perl 6

As influenced by Haskell and others, Perl 6 has several functional and declarative approaches to problems. For example, you can declaratively build up a well-typed recursive version (the type constraints are optional) through signature pattern matching:

    # define constraints that are common to all candidates
    proto fib ( UInt:D \n --> UInt:D ) {*}

    multi fib ( 0 --> 0 ) { }
    multi fib ( 1 --> 1 ) { }

    multi fib ( \n ) {
        fib(n - 1) + fib(n - 2)
    }

    for ^10 -> $n { say fib($n) }

An alternative to this is to construct a lazy iterative sequence, which appears as an almost direct illustration of the sequence:

    my @fib = 0, 1, *+* ... *; # Each additional entry is the sum of the previous two
                               # and this sequence extends lazily indefinitely
    say @fib[^10];             # Display the first 10 entries

Erlang

ERLANG is a functional, concurrent, general-purpose programming language. A Fibonacci algorithm implemented in Erlang (Note: This is only for demonstrating the Erlang syntax. Use other algorithms for fast performance[93]):

    -module(fib).    % This is the file 'fib.erl', the module and the filename must match
    -export([fib/1]). % This exports the function 'fib' of arity 1

    fib(1) -> 1; % If 1, then return 1, otherwise (note the semicolon ; meaning 'else')
    fib(2) -> 1; % If 2, then return 1, otherwise
    fib(N) -> fib(N - 2) + fib(N - 1).

Elixir

ELIXIR is a functional, concurrent, general-purpose programming language that runs on the Erlang virtual machine (BEAM).

The Fibonacci function can be written in Elixir as follows:

    defmodule Fibonacci do
      def fib(0), do: 0
      def fib(1), do: 1
      def fib(n), do: fib(n-1) + fib(n-2)
    end

Lisp

The Fibonacci function can be written in Common Lisp as follows:

    (defun fib (n &optional (a 0) (b 1))
      (if (= n 0)
          a
          (fib (- n 1) b (+ a b))))

or

    (defun fib (n)
      (if (or (= n 0) (= n 1))
          n
          (+ (fib (- n 1)) (fib (- n 2)))))

The program can then be called as

    (fib 10)

Clojure

The Fibonacci function can be written in Clojure as follows:

    (defn fib
      [n]
      (loop [a 0 b 1 i n]
        (if (zero? i)
          a
          (recur b (+ a b) (dec i)))))

The program can then be called as

    (fib 7)

Explicitly using "lazy-seq", the infinite sequence of Fibonacci numbers can be defined recursively.

    ;; lazy infinite sequence
    (def fibs (cons 0 (cons 1 (lazy-seq (map + fibs (rest fibs))))))

    ;; list of first 10 Fibonacci numbers taken from infinite sequence
    (take 10 fibs)

Kotlin

The Fibonacci function can be written in Kotlin as follows:

    fun fib(x: Int): Int = if (x in 0..1) x else fib(x - 1) + fib(x - 2)

The program can then be called as

    fib(7)

Swift

The Fibonacci function can be written in Swift as follows:

    func fib(_ x: Int) -> Int {
        if x == 0 || x == 1 {
            return x
        } else {
            return fib(x - 1) + fib(x - 2)
        }
    }

The function can then be called as

    fib(7)

JavaScript

The Fibonacci function can be written in JavaScript as follows:

    const fib = (x) => (function sub_fib(a, b) { return x-- > 0 ? sub_fib(b, a+b) : a})(0,1)

or

    const fib = (x, a = 0, b = 1) => x > 0 ? fib(x - 1, b, a + b) : a

or

    const fib = x => x <= 0 ? 0 : x === 1 ? 1 : fib(x - 1) + fib(x - 2)

TypeScript

The Fibonacci function can be written in TypeScript as follows:

    const fib = (x: number): number => x <= 0 ? 0 : x === 1 ? x : fib(x - 1) + fib(x - 2)

SequenceL

SequenceL is a functional, concurrent, general-purpose programming language. The Fibonacci function can be written in SequenceL as follows:

    fib(n) := n when n < 2 else
              fib(n - 1) + fib(n - 2);

The function can then be called as

    fib(10)

To reduce the memory consumed by the call stack when computing a large Fibonacci term, a tail-recursive version can be used. A tail-recursive function is implemented by the SequenceL compiler as a memory-efficient looping structure:

    fib(n) := fib_Helper(0, 1, n);

    fib_Helper(prev, next, n) :=
        prev when n < 1 else
        next when n = 1 else
        fib_Helper(next, next + prev, n - 1);

Ruby

The Fibonacci function can be written in ruby using lambdas as follows:

     fib = -> n { (n == 0 || n == 1) ? n : fib[n - 1] + fib[n - 2] }

Tcl

The Fibonacci function can be written in Tcl as a recursive function as follows:

    proc fibo {x} {
        expr {$x<2? $x: [fibo [expr {$x-1}]] + [fibo [expr {$x-2}]]}
    }

Scala

The Fibonacci function can be written in Scala in several ways (assuming _n_ is non-negative):

Imperative "Java" style

    def fibImp(n: Int): Int = {
      var i = 0
      var j = 1

      for (k <- 0 until n) {
        val l = i + j
        i = j
        j = l
      }
      i
    }

Recursive style, slow

    def fibRec(n: Int): Int = n match {
      case 0 => 0
      case 1 => 1
      case _ => fibRec(n - 1) + fibRec(n - 2)
    }

Recursive style with tail call optimization, fast

    def fibTailRec(n: Int): Int = {
      @tailrec
      def fib(i: Int, v: Int, vNext: Int): Int =
        if(i == n) v
        else fib(i + 1, vNext, v + vNext)
      fib(0, 0, 1)
    }

Using Scala streams

    val fibStream: Stream[Int] =
      0 #:: 1 #:: (fibStream zip fibStream.tail).map(n => n._1 + n._2)


Use in industry

Functional programming has long been popular in academia, but with few industrial applications.[94] However, recently several prominent functional programming languages have been used in commercial or industrial systems.[95] For example, the Erlang programming language, which was developed by the Swedish company Ericsson in the late 1980s, was originally used to implement fault-tolerant telecommunications systems.[96] It has since become popular for building a range of applications at companies such as Nortel, Facebook, Électricité de France and WhatsApp.[97][98][99][100][101] The Scheme dialect of Lisp was used as the basis for several applications on early Apple Macintosh computers,[102][103] and has more recently been applied to problems such as training simulation software[104] and telescope control.[105] OCaml, which was introduced in the mid-1990s, has seen commercial use in areas such as financial analysis,[106] driver verification, industrial robot programming, and static analysis of embedded software.[107] Haskell, though initially intended as a research language,[108] has also been applied by a range of companies, in areas such as aerospace systems, hardware design, and web programming.[109][110]

Other functional programming languages that have seen use in industry include Scala,[111] F#,[112][113] (both being functional-OO hybrids with support for both purely functional and imperative programming) Wolfram Language,[114] Lisp,[115] Standard ML[116][117] and Clojure.[118]


In education

Functional programming is being used as a method to teach problem solving, algebra and geometric concepts.[119] It has also been used as a tool to teach classical mechanics in Structure and Interpretation of Classical Mechanics.


See also

-   Purely functional programming
-   Comparison of programming paradigms
-   Eager evaluation
-   List of functional programming topics
-   Nested function
-   Inductive functional programming
-   Functional reactive programming


References


Further reading

-   -   Cousineau, Guy and Michel Mauny. _The Functional Approach to Programming_. Cambridge, UK: Cambridge University Press, 1998.
-   Curry, Haskell Brooks and Feys, Robert and Craig, William. _Combinatory Logic_. Volume I. North-Holland Publishing Company, Amsterdam, 1958.
-   -   Dominus, Mark Jason. _Higher-Order Perl_. Morgan Kaufmann. 2005.
-   -   Graham, Paul. _ANSI Common LISP_. Englewood Cliffs, New Jersey: Prentice Hall, 1996.
-   MacLennan, Bruce J. _Functional Programming: Practice and Theory_. Addison-Wesley, 1990.
-   -   Pratt, Terrence, W. and Marvin V. Zelkowitz. _Programming Languages: Design and Implementation_. 3rd ed. Englewood Cliffs, New Jersey: Prentice Hall, 1996.
-   Salus, Peter H. _Functional and Logic Programming Languages_. Vol. 4 of Handbook of Programming Languages. Indianapolis, Indiana: Macmillan Technical Publishing, 1998.
-   Thompson, Simon. _Haskell: The Craft of Functional Programming_. Harlow, England: Addison-Wesley Longman Limited, 1996.


External links

-   -   An introduction

-   _Functional programming in Python_ (by David Mertz): part 1, part 2, part 3

Category:Programming paradigms Functional_programming

[1]

[2]

[3]

[4]

[5]

[6]

[7]

[8]

[9]

[10]

[11]

[12]

[13]

[14]

[15]

[16]

[17]

[18]

[19]

[20]

[21]

[22]

[23]

[24]

[25]

[26]

[27]

[28]

[29]

[30]

[31]

[32]

[33]

[34]

[35]

[36] The memoir of Herbert A. Simon (1991), _Models of My Life_ pp.189-190 claims that he, Al Newell, and Cliff Shaw are "...commonly adjudged to be the parents of [the] artificial intelligence [field]," for writing Logic Theorist, a program that proved theorems from _Principia Mathematica_ automatically. To accomplish this, they had to invent a language and a paradigm that, viewed retrospectively, embeds functional programming.

[37]

[38] R.M. Burstall. Design considerations for a functional programming language. Invited paper, Proc. Infotech State of the Art Conf. "The Software Revolution", Copenhagen, 45–57 (1977)

[39] R.M. Burstall and J. Darlington. A transformation system for developing recursive programs. Journal of the Association for Computing Machinery 24(1):44–67 (1977)

[40] R.M. Burstall, D.B. MacQueen and D.T. Sannella. HOPE: an experimental applicative language. Proc. 1980 LISP Conference, Stanford, 136–143 (1980).

[41]

[42]

[43]

[44]

[45]

[46]

[47]

[48]

[49] The Implementation of Functional Programming Languages. Simon Peyton Jones, published by Prentice Hall, 1987

[50]

[51]

[52]

[53]

[54]

[55]

[56]

[57]

[58]

[59]  source of citation

[60]

[61] ; (Part 1, Part 2)

[62]

[63]

[64]

[65]

[66]

[67]

[68]

[69]

[70]

[71]

[72]

[73] _Purely functional data structures_ by Chris Okasaki, Cambridge University Press, 1998,

[74]

[75]

[76]  F# for fun and profit|website=fsharpforfunandprofit.com|language=en|access-date=2018-11-13}}

[77]

[78]

[79]

[80]

[81]

[82]

[83]

[84]

[85]

[86]

[87]

[88]

[89]

[90]

[91]

[92]

[93]

[94]

[95]

[96]

[97]

[98]

[99]

[100]

[101] 1 million is so 2011 // WhatsApp blog, 2012-01-06: "the last important piece of our infrastracture is Erlang"

[102]

[103]

[104]

[105]

[106]

[107]

[108]

[109]

[110]

[111]

[112]

[113]

[114]

[115]

[116]

[117]

[118]

[119]