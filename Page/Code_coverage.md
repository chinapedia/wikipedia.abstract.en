In computer science, TEST COVERAGE is a measure used to describe the degree to which the source code of a program is executed when a particular test suite runs. A program with high test coverage, measured as a percentage, has had more of its source code executed during testing, which suggests it has a lower chance of containing undetected software bugs compared to a program with low test coverage.[1][2] Many different metrics can be used to calculate test coverage; some of the most basic are the percentage of program subroutines and the percentage of program statements called during execution of the test suite.

Test coverage was among the first methods invented for systematic software testing. The first published reference was by Miller and Maloney in _Communications of the ACM_ in 1963.[3]


Coverage criteria

To measure what percentage of code has been exercised by a test suite, one or more _coverage criteria_ are used. Coverage criteria are usually defined as rules or requirements, which a test suite needs to satisfy.[4]

Basic coverage criteria

There are a number of coverage criteria, the main ones being:[5]

-   FUNCTION COVERAGEHas each function (or subroutine) in the program been called?
-   STATEMENT COVERAGEHas each statement in the program been executed?
-   EDGE COVERAGEhas every edge in the Control flow graph been executed?
-   BRANCH COVERAGEHas each branch (also called DD-path) of each control structure (such as in _if_ and _case_ statements) been executed? For example, given an _if_ statement, have both the true and false branches been executed? Notice that this one is a subset of EDGE COVERAGE.
-   CONDITION COVERAGE (or predicate coverage)Has each Boolean sub-expression evaluated both to true and false?

For example, consider the following C function:

    int foo (int x, int y)
    {
        int z = 0;
        if ((x > 0) && (y > 0))
        {
            z = x;
        }
        return z;
    }

Assume this function is a part of some bigger program and this program was run with some test suite.

-   If during this execution function 'foo' was called at least once, then _function coverage_ for this function is satisfied.
-   _Statement coverage_ for this function will be satisfied if it was called e.g. as foo(1,1), as in this case, every line in the function is executed including z = x;.
-   Tests calling foo(1,1) and foo(0,1) will satisfy _branch coverage_ because, in the first case, both if conditions are met and z = x; is executed, while in the second case, the first condition (x>0) is not satisfied, which prevents executing z = x;.
-   _Condition coverage_ can be satisfied with tests that call foo(1,0) and foo(0,1). These are necessary because in the first cases, (x>0) evaluates to true, while in the second, it evaluates false. At the same time, the first case makes (y>0) false, while the second makes it true.

Condition coverage does not necessarily imply branch coverage. For example, consider the following fragment of code:

    if a and b then

Condition coverage can be satisfied by two tests:

-   a=true, b=false
-   a=false, b=true

However, this set of tests does not satisfy branch coverage since neither case will meet the if condition.

Fault injection may be necessary to ensure that all conditions and branches of exception handling code have adequate coverage during testing.

Modified condition/decision coverage

A combination of function coverage and branch coverage is sometimes also called DECISION COVERAGE. This criterion requires that every point of entry and exit in the program has been invoked at least once, and every decision in the program has taken on all possible outcomes at least once. In this context the decision is a boolean expression composed of conditions and zero or more boolean operators. This definition is not the same as branch coverage,[6] however, some do use the term _decision coverage_ as a synonym for _branch coverage_.[7]

CONDITION/DECISION COVERAGE requires that both decision and condition coverage be satisfied. However, for safety-critical applications (e.g., for avionics software) it is often required that MODIFIED CONDITION/DECISION COVERAGE (MC/DC) be satisfied. This criterion extends condition/decision criteria with requirements that each condition should affect the decision outcome independently. For example, consider the following code:

    if (a or b) and c then

The condition/decision criteria will be satisfied by the following set of tests:

-   a=true, b=true, c=true
-   a=false, b=false, c=false

However, the above tests set will not satisfy modified condition/decision coverage, since in the first test, the value of 'b' and in the second test the value of 'c' would not influence the output. So, the following test set is needed to satisfy MC/DC:

-   a=false, b=true, c=FALSE
-   a=false, b=TRUE, c=TRUE
-   a=FALSE, b=FALSE, c=true
-   a=TRUE, b=false, c=TRUE

Multiple condition coverage

This criterion requires that all combinations of conditions inside each decision are tested. For example, the code fragment from the previous section will require eight tests:

-   a=false, b=false, c=false
-   a=false, b=false, c=true
-   a=false, b=true, c=false
-   a=false, b=true, c=true
-   a=true, b=false, c=false
-   a=true, b=false, c=true
-   a=true, b=true, c=false
-   a=true, b=true, c=true

Parameter value coverage

PARAMETER VALUE COVERAGE (PVC) requires that in a method taking parameters, all the common values for such parameters be considered. The idea is that all common possible values for a parameter are tested.[8] For example, common values for a string are: 1) null, 2) empty, 3) whitespace (space, tabs, newline), 4) valid string, 5) invalid string, 6) single-byte string, 7) double-byte string. It may also be appropriate to use very long strings. Failure to test each possible parameter value may leave a bug. Testing only one of these could result in 100% code coverage as each line is covered, but as only one of seven options are tested, there is only 14.2% PVC.

Other coverage criteria

There are further coverage criteria, which are used less often:

-   LINEAR CODE SEQUENCE AND JUMP (LCSAJ) COVERAGE a.k.a. JJ-PATH COVERAGE has every LCSAJ/JJ-path been executed?[9]
-   PATH COVERAGEHas every possible route through a given part of the code been executed?
-   ENTRY/EXIT COVERAGEHas every possible call and return of the function been executed?
-   LOOP COVERAGEHas every possible loop been executed zero times, once, and more than once?
-   STATE COVERAGEHas each state in a finite-state machine been reached and explored?
-   DATA-FLOW COVERAGEHas each variable definition and its usage been reached and explored?[10]

Safety-critical or dependable applications are often required to demonstrate 100% of some form of test coverage. For example, the ECSS-E-ST-40C standard demands 100% statement and decision coverage for two out of four different criticality levels; for the other ones, target coverage values are up to negotiation between supplier and customer.[11] However, setting specific target values - and, in particular, 100% - has been criticized by practitioners for various reasons (cf.[12]) Martin Fowler writes: "I would be suspicious of anything like 100% - it would smell of someone writing tests to make the coverage numbers happy, but not thinking about what they are doing".[13]

Some of the coverage criteria above are connected. For instance, path coverage implies decision, statement and entry/exit coverage. Decision coverage implies statement coverage, because every statement is part of a branch.

Full path coverage, of the type described above, is usually impractical or impossible. Any module with a succession of n decisions in it can have up to 2^(n) paths within it; loop constructs can result in an infinite number of paths. Many paths may also be infeasible, in that there is no input to the program under test that can cause that particular path to be executed. However, a general-purpose algorithm for identifying infeasible paths has been proven to be impossible (such an algorithm could be used to solve the halting problem).[14] Basis path testing is for instance a method of achieving complete branch coverage without achieving complete path coverage.[15]

Methods for practical path coverage testing instead attempt to identify classes of code paths that differ only in the number of loop executions, and to achieve "basis path" coverage the tester must cover all the path classes.


In practice

The target software is built with special options or libraries and run under a controlled environment, to map every executed function to the function points in the source code. This allows testing parts of the target software that are rarely or never accessed under normal conditions, and helps reassure that the most important conditions (function points) have been tested. The resulting output is then analyzed to see what areas of code have not been exercised and the tests are updated to include these areas as necessary. Combined with other test coverage methods, the aim is to develop a rigorous, yet manageable, set of regression tests.

In implementing test coverage policies within a software development environment, one must consider the following:

-   What are coverage requirements for the end product certification and if so what level of test coverage is required? The typical level of rigor progression is as follows: Statement, Branch/Decision, Modified Condition/Decision Coverage(MC/DC), LCSAJ (Linear Code Sequence and Jump)
-   Will coverage be measured against tests that verify requirements levied on the system under test (DO-178B)?
-   Is the object code generated directly traceable to source code statements? Certain certifications, (i.e. DO-178B Level A) require coverage at the assembly level if this is not the case: "Then, additional verification should be performed on the object code to establish the correctness of such generated code sequences" (DO-178B) para-6.4.4.2.[16]

Software authors can look at test coverage results to devise additional tests and input or configuration sets to increase the coverage over vital functions. Two common forms of test coverage are statement (or line) coverage and branch (or edge) coverage. Line coverage reports on the execution footprint of testing in terms of which lines of code were executed to complete the test. Edge coverage reports which branches or code decision points were executed to complete the test. They both report a coverage metric, measured as a percentage. The meaning of this depends on what form(s) of coverage have been used, as 67% branch coverage is more comprehensive than 67% statement coverage.

Generally, test coverage tools incur computation and logging in addition to the actual program thereby slowing down the application, so typically this analysis is not done in production. As one might expect, there are classes of software that cannot be feasibly subjected to these coverage tests, though a degree of coverage mapping can be approximated through analysis rather than direct testing.

There are also some sorts of defects which are affected by such tools. In particular, some race conditions or similar real time sensitive operations can be masked when run under test environments; though conversely, some of these defects may become easier to find as a result of the additional overhead of the testing code.


Usage in industry

Test coverage is one consideration in the safety certification of avionics equipment. The guidelines by which avionics gear is certified by the Federal Aviation Administration (FAA) is documented in DO-178B[17] and DO-178C.[18]

Test coverage is also a requirement in part 6 of the automotive safety standard ISO 26262 _Road Vehicles - Functional Safety_.[19]


See also

-   Cyclomatic complexity
-   Intelligent verification
-   Linear Code Sequence and Jump
-   Modified Condition/Decision Coverage
-   Mutation testing
-   Regression testing
-   Software metric
-   Static code analysis
-   White box testing
-   Java code coverage tools


References

Category:Software testing Category:Software metrics Category:Software testing tools

[1]

[2]

[3]

[4]

[5]

[6] Position Paper CAST-10 (June 2002). _What is a "Decision" in Application of Modified Condition/Decision Coverage (MC/DC) and Decision Coverage (DC)?_

[7] MathWorks. ''Types of Model Coverage.''

[8] Unit Testing with Parameter Value Coverage (PVC)

[9] M. R. Woodward, M. A. Hennell, "On the relationship between two control-flow coverage criteria: all JJ-paths and MCDC", Information and Software Technology 48 (2006) pp. 433-440

[10] Ting Su, Ke Wu, Weikai Miao, Geguang Pu, Jifeng He, Yuting Chen, and Zhendong Su. "A Survey on Data-Flow Testing". ACM Comput. Surv. 50, 1, Article 5 (March 2017), 35 pages.

[11] ECSS-E-ST-40C: Space engineering - Software. ECSS Secretariat, ESA-ESTEC. March, 2009

[12] C. Prause, J. Werner, K. Hornig, S. Bosecker, M. Kuhrmann (2017): _Is 100% Test Coverage a Reasonable Requirement? Lessons Learned from a Space Software Project_. In: PROFES 2017. Springer. Last accessed: 2017-11-17

[13] Martin Fowler's blog: TestCoverage. Last accessed: 2017-11-17

[14] Dorf, Richard C.: _Computers, Software Engineering, and Digital Devices_, Chapter 12, pg. 15. CRC Press, 2006. , ; via Google Book Search

[15]

[16]

[17] RTCA/DO-178B, _Software Considerations in Airborne Systems and Equipment Certification, Radio Technical Commission for Aeronautics,_ December 1, 1992

[18] RTCA/DO-178C, _Software Considerations in Airborne Systems and Equipment Certification, Radio Technical Commission for Aeronautics,_ January, 2012.

[19]