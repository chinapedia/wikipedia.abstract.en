In computer science, an operation, function or expression is said to have a SIDE EFFECT if it modifies some state variable value(s) outside its local environment, that is to say has an observable effect besides returning a value (the main effect) to the invoker of the operation. State data updated "outside" of the operation may be maintained "inside" a stateful object or a wider stateful system within which the operation is performed. Example side effects include modifying a non-local variable, modifying a static local variable, modifying a mutable argument passed by reference, performing I/O or calling other side-effect functions.[1] In the presence of side effects, a program's behaviour may depend on history; that is, the order of evaluation matters. Understanding and debugging a function with side effects requires knowledge about the context and its possible histories.[2][3]

The degree to which side effects are used depends on the programming paradigm. Imperative programming is commonly used to produce side effects, to update a system's state. By contrast, Declarative programming is commonly used to report on the state of system, without side effects.

In functional programming, side effects are rarely used. The lack of side effects makes it easier to do formal verifications of a program. Functional languages such as Standard ML, Scheme and Scala do not restrict side effects, but it is customary for programmers to avoid them.[4] The functional language Haskell expresses side effects such as I/O and other stateful computations using monadic actions.[5][6]

Assembly language programmers must be aware of _hidden_ side effects—instructions that modify parts of the processor state which are not mentioned in the instruction's mnemonic. A classic example of a hidden side effect is an arithmetic instruction that implicitly modifies condition codes (a hidden side effect) while it explicitly modifies a register (the overt effect). One potential drawback of an instruction set with hidden side effects is that, if many instructions have side effects on a single piece of state, like condition codes, then the logic required to update that state sequentially may become a performance bottleneck. The problem is particularly acute on some processors designed with pipelining (since 1990) or with out-of-order execution. Such a processor may require additional control circuitry to detect hidden side effects and stall the pipeline if the next instruction depends on the results of those effects.


Referential transparency

Absence of side effects is a necessary, but not sufficient, condition for referential transparency. Referential transparency means that an expression (such as a function call) can be replaced with its value. This requires that the expression is pure, that is to say the expression must be deterministic (always give the same value for the same input) and side-effect free.


Temporal side effects

Side effects caused by the time taken for an operation to execute are usually ignored when discussing side effects and referential transparency. There are some cases, such as with hardware timing or testing, where operations are inserted specifically for their temporal side effects e.g. sleep(5000) or for (int i = 0; i < 10000; ++i) {}. These instructions do not change state other than taking an amount of time to complete.


Idempotence

A function f with side effects is said to be idempotent under sequential composition f; f if, when called twice with the same list of arguments, the second call has no side effects (assuming no other procedures were called between the end of the first call and the start of the second call).

For instance, consider the following Python code:

    x = 0

    def setx(n):
        global x
        x = n

    setx(5)
    setx(5)

Here, setx is idempotent because the second call to setx (with the same argument) does not change the visible program state: x was already set to 5 in the first call, and is again set to 5 in the second call, thus keeping the same value. Note that this is distinct from idempotence under function composition f ∘ f. For example, the absolute value is idempotent under function composition:

    def abs(n):
        if n < 0:
            return -n
        else:
            return n

    abs(-5) == abs(abs(-5)) == abs(5) == 5


Example

One common demonstration of side effect behavior is that of the assignment operator in C++. For example, assignment returns the right operand and has the side effect of assigning that value to a variable. This allows for syntactically clean multiple assignment:

    int i, j;
    i = j = 3;

Because the operator right associates, this equates to

    int i, j;
    i = (j = 3);  // j = 3 returns 3, which then gets assigned to i

Where the result of assigning 3 into j then gets assigned into i. This presents a potential hangup for novice programmers who may confuse

    while (b == 10) {}  // tests if b evaluates to 10

with

    while (b = 10) {}  // = returns 10 which automatically casts to true so the test is always true


See also

-   Sequence point
-   Action at a distance (computer science)
-   Don't-care term
-   Side channel
-   Side channel attack


References

Category:Computer programming Category:Programming language theory Category:Functional programming

[1]

[2] “Research Topics in Functional Programming” ed. D. Turner, Addison-Wesley, 1990, pp 17–42. Retrieved from:

[3]

[4] Matthias Felleisen et al., _How To Design Programs_, MIT Press

[5] Haskell 98 report, http://www.haskell.org.

[6] _Imperative Functional Programming_, Simon Peyton Jones and Phil Wadler, _Conference Record of the 20th Annual ACM Symposium on Principles of Programming Languages_, pages 71–84, 1993