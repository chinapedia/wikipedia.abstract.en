In programming language theory, LAZY EVALUATION, or CALL-BY-NEED[1] is an evaluation strategy which delays the evaluation of an expression until its value is needed (non-strict evaluation) and which also avoids repeated evaluations (sharing).[2][3] The sharing can reduce the running time of certain functions by an exponential factor over other non-strict evaluation strategies, such as call-by-name.

However, for lengthy operations, it would be more appropriate to perform before any time-sensitive operations, such as handling user inputs in a video game.

The benefits of lazy evaluation include:

-   The ability to define control flow (structures) as abstractions instead of primitives.
-   The ability to define potentially infinite data structures. This allows for more straightforward implementation of some algorithms.
-   Performance increases by avoiding needless calculations, and avoiding error conditions when evaluating compound expressions.

Lazy evaluation is often combined with memoization, as described in Jon Bentley's _Writing Efficient Programs_.[4] After a function's value is computed for that parameter or set of parameters, the result is stored in a lookup table that is indexed by the values of those parameters; the next time the function is called, the table is consulted to determine whether the result for that combination of parameter values is already available. If so, the stored result is simply returned. If not, the function is evaluated and another entry is added to the lookup table for reuse.

Lazy evaluation can lead to reduction in memory footprint, since values are created when needed.[5] However, lazy evaluation is difficult to combine with imperative features such as exception handling and input/output, because the order of operations becomes indeterminate. Lazy evaluation can introduce memory leaks.[6]

The opposite of lazy evaluation is eager evaluation, sometimes known as strict evaluation. Eager evaluation is the evaluation strategy employed in most programming languages.


History

Lazy evaluation was introduced for lambda calculus by Christopher Wadsworth[7]. For programming languages, it was independently introduced by Peter Henderson and James H. Morris[8] and by Daniel P. Friedman and David S. Wise.[9][10]


Applications

Delayed evaluation is used particularly in functional programming languages. When using delayed evaluation, an expression is not evaluated as soon as it gets bound to a variable, but when the evaluator is forced to produce the expression's value. That is, a statement such as x = expression; (i.e. the assignment of the result of an expression to a variable) clearly calls for the expression to be evaluated and the result placed in x, but what actually is in x is irrelevant until there is a need for its value via a reference to x in some later expression whose evaluation could itself be deferred, though eventually the rapidly growing tree of dependencies would be pruned to produce some symbol rather than another for the outside world to see.[11]

Delayed evaluation has the advantage of being able to create calculable infinite lists without infinite loops or size matters interfering in computation. For example, one could create a function that creates an infinite list (often called a _stream_) of Fibonacci numbers. The calculation of the _n_-th Fibonacci number would be merely the extraction of that element from the infinite list, forcing the evaluation of only the first n members of the list.[12][13]

For example, in the Haskell programming language, the list of all Fibonacci numbers can be written as:[14]

     fibs = 0 : 1 : zipWith (+) fibs (tail fibs)

In Haskell syntax, ":" prepends an element to a list, tail returns a list without its first element, and zipWith uses a specified function (in this case addition) to combine corresponding elements of two lists to produce a third.[15]

Provided the programmer is careful, only the values that are required to produce a particular result are evaluated. However, certain calculations may result in the program attempting to evaluate an infinite number of elements; for example, requesting the length of the list or trying to sum the elements of the list with a fold operation would result in the program either failing to terminate or running out of memory.

Control structures

In almost all common "eager" languages, _if_ statements evaluate in a lazy fashion.

if a then b else c

evaluates (a), then if and only if (a) evaluates to true does it evaluate (b), otherwise it evaluates (c). That is, either (b) or (c) will not be evaluated. Conversely, in an eager language the expected behavior is that

define f(x, y) = 2 * x
set k = f(d, e)

will still evaluate (e) when computing the value of f(d, e) even though (e) is unused in function f. However, user-defined control structures depend on exact syntax, so for example

define g(a, b, c) = if a then b else c
l = g(h, i, j)

(i) and (j) would both be evaluated in an eager language. While in a lazy language,

l' = if h then i else j

(i) or (j) would be evaluated, but never both.

Lazy evaluation allows control structures to be defined normally, and not as primitives or compile-time techniques. If (i) or (j) have side effects or introduce run time errors, the subtle differences between (l) and (l') can be complex. It is usually possible to introduce user-defined lazy control structures in eager languages as functions, though they may depart from the language's syntax for eager evaluation: Often the involved code bodies (like (i) and (j)) need to be wrapped in a function value, so that they are executed only when called.

Short-circuit evaluation of Boolean control structures is sometimes called _lazy_.

Working with infinite data structures

Many languages offer the notion of _infinite data-structures_. These allow definitions of data to be given in terms of infinite ranges, or unending recursion, but the actual values are only computed when needed. Take for example this trivial program in Haskell:

    numberFromInfiniteList :: Int -> Int
    numberFromInfiniteList n =  infinity !! n - 1
        where infinity = [1..]

    main = print $ numberFromInfiniteList 4

In the function numberFromInfiniteList, the value of infinity is an infinite range, but until an actual value (or more specifically, a specific value at a certain index) is needed, the list is not evaluated, and even then it is only evaluated as needed (that is, until the desired index.)

List-of-successes pattern

Avoiding excessive effort

A compound expression might be in the form _EasilyComputed OR LotsOfWork_ so that if the easy part gives TRUE a lot of work could be avoided. For instance, suppose a large number N is to be checked to determine if it is a prime number and a function IsPrime(N) is available, but alas, it can require a lot of computation to evaluate. Perhaps _N=2 OR [Mod(N,2)≠0 AND IsPrime(N)]_ will help if there are to be many evaluations with arbitrary values for N.

Avoidance of error conditions

A compound expression might be in the form _SafeToTry AND Expression_ whereby if _SafeToTry_ is FALSE there should be no attempt at evaluating the _Expression_ lest a run-time error be signalled, such as divide-by-zero or index-out-of-bounds, etc. For instance, the following pseudocode locates the last non-zero element of an array:

 L:=Length(A);
 While L>0 and A(L)=0 do L:=L - 1;

Should all elements of the array be zero, the loop will work down to L = 0, and in this case the loop must be terminated without attempting to reference element zero of the array, which does not exist.

Other uses

In computer windowing systems, the painting of information to the screen is driven by _expose events_ which drive the display code at the last possible moment. By doing this, windowing systems avoid computing unnecessary display content updates.[16]

Another example of laziness in modern computer systems is copy-on-write page allocation or demand paging, where memory is allocated only when a value stored in that memory is changed.[17]

Laziness can be useful for high performance scenarios. An example is the Unix mmap function, which provides _demand driven_ loading of pages from disk, so that only those pages actually touched are loaded into memory, and unneeded memory is not allocated.

MATLAB implements _copy on edit_, where arrays which are copied have their actual memory storage replicated only when their content is changed, possibly leading to an _out of memory_ error when updating an element afterwards instead of during the copy operation.[18]


Implementation

Some programming languages delay evaluation of expressions by default, and some others provide functions or special syntax to delay evaluation. In Miranda and Haskell, evaluation of function arguments is delayed by default. In many other languages, evaluation can be delayed by explicitly suspending the computation using special syntax (as with Scheme's "delay" and "force" and OCaml's "lazy" and "Lazy.force") or, more generally, by wrapping the expression in a thunk. The object representing such an explicitly delayed evaluation is called a _lazy future._ Perl 6 uses lazy evaluation of lists, so one can assign infinite lists to variables and use them as arguments to functions, but unlike Haskell and Miranda, Perl 6 doesn't use lazy evaluation of arithmetic operators and functions by default.[19]


Laziness and eagerness

Controlling eagerness in lazy languages

In lazy programming languages such as Haskell, although the default is to evaluate expressions only when they are demanded, it is possible in some cases to make code more eager—or conversely, to make it more lazy again after it has been made more eager. This can be done by explicitly coding something which forces evaluation (which may make the code more eager) or avoiding such code (which may make the code more lazy). _Strict_ evaluation usually implies eagerness, but they are technically different concepts.

However, there is an optimisation implemented in some compilers called strictness analysis, which, in some cases, allows the compiler to infer that a value will always be used. In such cases, this may render the programmer's choice of whether to force that particular value or not, irrelevant, because strictness analysis will force strict evaluation.

In Haskell, marking constructor fields strict means that their values will always be demanded immediately. The seq function can also be used to demand a value immediately and then pass it on, which is useful if a constructor field should generally be lazy. However, neither of these techniques implements _recursive_ strictness—for that, a function called deepSeq was invented.

Also, pattern matching in Haskell 98 is strict by default, so the ~ qualifier has to be used to make it lazy.[20]

Simulating laziness in eager languages

Python

In Python 2.x the range() function[21] computes a list of integers. The entire list is stored in memory when the first assignment statement is evaluated, so this is an example of eager or immediate evaluation:

     >>> r = range(10)
     >>> print r
     [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
     >>> print r[3]
     3

In Python 3.x the range() function[22] returns a special range object which computes elements of the list on demand. Elements of the range object are only generated when they are needed (e.g., when print(r[3]) is evaluated in the following example), so this is an example of lazy or deferred evaluation:

     >>> r = range(10)
     >>> print(r)
     range(0, 10)
     >>> print(r[3])
     3

    This change to lazy evaluation saves execution time for large ranges which may never be fully referenced and memory usage for large ranges where only one or a few elements are needed at any time.

In Python 2.x is possible to use a function called xrange() which returns an object that generates the numbers in the range on demand. The advantage of xrange is that generated object will always take the same amount of memory.

    >>> r = xrange(10)
    >>> print(r)
    xrange(10)
    >>> lst = [x for x in r]
    >>> print(lst)
    [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

From version 2.2 forward, Python manifests lazy evaluation by implementing iterators (lazy sequences) unlike tuple or list sequences. For instance (Python 2):

     >>> numbers = range(10)
     >>> iterator = iter(numbers)
     >>> print numbers
     [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
     >>> print iterator
     <listiterator object at 0xf7e8dd4c>
     >>> print iterator.next()
     0

    The above example shows that lists are evaluated when called, but in case of iterator, the first element '0' is printed when need arises.

.NET Framework

In the .NET Framework it is possible to do lazy evaluation using the class

    System.Lazy<T>

.[23] The class can be easily exploited in F# using the

    lazy

keyword, while the

    force

method will force the evaluation. There are also specialized collections like

    Microsoft.FSharp.Collections.Seq

that provide built-in support for lazy evaluation.

    let fibonacci = Seq.unfold (fun (x, y) -> Some(x, (y, x + y))) (0I,1I)
    fibonacci |> Seq.nth 1000

In C# and VB.NET, the class

    System.Lazy<T>

is directly used.

    public int Sum()
    {
        int a = 0;
        int b = 0;
        Lazy<int> x = new Lazy<int>(() => a + b);
        a = 3;
        b = 5;
        return x.Value; // returns 8
    }

Or with a more practical example:

    // recursive calculation of the n'th fibonacci number
    public int Fib(int n)
    {
       return (n == 1)? 1 : (n == 2)? 1 : Fib(n-1) + Fib(n-2);
    }

    public void Main()
    {
        Console.WriteLine("Which Fibonacci number do you want to calculate?");
        int n = Int32.Parse(Console.ReadLine());
        Lazy<int> fib = new Lazy<int>(() => Fib(n)); // function is prepared, but not executed
        bool execute;
        if(n > 100)
        {
            Console.WriteLine("This can take some time. Do you really want to calculate this large number? [y/n]");
            execute = (Console.ReadLine() == "y");
        }
        else execute = false;

        if(execute) Console.WriteLine(fib.Value); // number is only calculated if needed
    }

Another way is to use the

    yield

keyword:

    // eager evaluation
    public IEnumerable<int> Fibonacci(int x)
    {
        IList<int> fibs = new List<int>();

        int prev = -1;
        int next = 1;
        for (int i = 0; i < x; i++)
        {
            int sum = prev + next;
            prev = next;
            next = sum;
            fibs.Add(sum);
        }
        return fibs;
    }

    // lazy evaluation
    public IEnumerable<int> LazyFibonacci(int x)
    {
        int prev = -1;
        int next = 1;
        for (int i = 0; i < x; i++)
        {
            int sum = prev + next;
            prev = next;
            next = sum;
            yield return sum;
        }
    }


See also

-   Combinatory logic
-   Currying
-   Dataflow
-   Eager evaluation
-   Functional programming
-   Futures and promises
-   Generator (computer programming)
-   Graph reduction
-   Incremental computing – a related concept whereby computations are only repeated if their inputs change. May be combined with lazy evaluation.
-   Lambda calculus
-   Lazy initialization
-   Look-ahead
-   Non-strict programming language
-   Normal order evaluation
-   Short-circuit evaluation (minimal)


References


Further reading

-   -   -   PhD thesis, Oxford University

-   -   -

Design patterns

-   John Hughes. "Why functional programming matters". _The Computer Journal_ - Special issue on lazy functional programming. Volume 32 Issue 2, April 1989.
-   Philip Wadler. "How to replace failure by a list of successes a method for exception handling, backtracking, and pattern matching in lazy functional languages". _Functional Programming Languages and Computer Architecture_. Lecture Notes in Computer Science, 1985, Volume 201/1985, 113-128.

Laziness in strict languages

-   Philip Wadler, Walid Taha, and David MacQueen. "How to add laziness to a strict language, without even being odd". Workshop on Standard ML, Baltimore, September 1998.

Blog posts by computer scientists

-   Robert Harper. "The Point of Laziness"
-   Lennart Augustsson. "More points for lazy evaluation"


External links

-   Lazy Evaluation at the Portland Pattern Repository
-   Lazy evaluation at Haskell Wiki
-   The Incomplete Guide to Lazy Evaluation (in Haskell) – A series of tutorials on lazy evaluation in Haskell: How it works, how it helps making code more modular, and other things.
-   Functional programming in Python becomes lazy
-   Lazy function argument evaluation in the D language
-   Lazy evaluation macros in Nemerle
-   Lambda calculus in Boost Libraries in C++ language
-   Lazy Evaluation in ANSI C++ by writing code in a style which uses classes to implement function closures.
-   Lazy Evaluation in Perl

Category:Evaluation strategy Category:Compiler optimizations Category:Implementation of functional programming languages Category:Articles with example Haskell code

[1]

[2]

[3]

[4] Bentley, Jon Louis. Writing Efficient Programs. Prentice-Hall, 1985.

[5]

[6] Edward Z. Yang. "Space leak zoo".

[7]

[8]

[9]

[10]

[11]

[12]

[13]

[14]

[15]

[16] Lazy and Speculative Execution Butler Lampson Microsoft Research OPODIS, Bordeaux, France 12 December 2006

[17]

[18]

[19]

[20]

[21]

[22]

[23]