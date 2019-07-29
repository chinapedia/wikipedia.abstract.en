JUNIT is a unit testing framework for the Java programming language. JUnit has been important in the development of test-driven development, and is one of a family of unit testing frameworks which is collectively known as xUnit that originated with SUnit.

JUnit is linked as a JAR at compile-time; the framework resides under package junit.framework for JUnit 3.8 and earlier, and under package org.junit for JUnit 4 and later.

A research survey performed in 2013 across 10,000 Java projects hosted on GitHub found that JUnit (in a tie with slf4j-api), was the most commonly included external library. Each library was used by 30.7% of projects. [1]


Example of JUnit test fixture

A JUnit test fixture is a Java object. With older versions of JUnit, fixtures had to inherit from junit.framework.TestCase, but the new tests using JUnit 4 should not do this.[2] Test methods must be annotated by the @Test annotation. If the situation requires it,[3] it is also possible to define a method to execute before (or after) each (or all) of the test methods with the @Before (or @After) and @BeforeClass (or @AfterClass) annotations.[4]

    import org.junit.*;

    public class FoobarTest {
        @BeforeClass
        public static void setUpClass() throws Exception {
            // Code executed before the first test method
        }

        @Before
        public void setUp() throws Exception {
            // Code executed before each test
        }

        @Test
        public void testOneThing() {
            // Code that tests one thing
        }

        @Test
        public void testAnotherThing() {
            // Code that tests another thing
        }

        @Test
        public void testSomethingElse() {
            // Code that tests something else
        }

        @After
        public void tearDown() throws Exception {
            // Code executed after each test
        }

        @AfterClass
        public static void tearDownClass() throws Exception {
            // Code executed after the last test method
        }
    }


Ports

JUnit alternatives have been written in other languages including:

-   Actionscript (FlexUnit)
-   Ada (AUnit)
-   C (CUnit)
-   C# (NUnit)
-   C++ (CPPUnit, CxxTest)
-   Coldfusion (MXUnit)
-   Delphi (DUnit)
-   Erlang (EUnit)
-   Eiffel (Auto-Test) - JUnit inspired getest (from Gobosoft), which led to Auto-Test in Eiffel Studio.
-   Fortran (fUnit, pFUnit)
-   Free Pascal (FPCUnit)
-   Golang (Go JUnit report)
-   Haskell (HUnit)
-   JavaScript (JSUnit)
-   Microsoft .NET (NUnit)
-   Objective-C (OCUnit)
-   OCaml (OUnit)
-   Perl ([http://metacpan.org/module/Test::Class Test::Class] and [http://metacpan.org/module/Test::Unit Test::Unit])
-   PHP (PHPUnit)
-   Python (PyUnit and junit-xml)
-   Qt (QTestLib)
-   R (RUnit)
-   Ruby (JUnit for Rspec)


See also

-   TestNG, another test framework for Java
-   Mock object, a technique used during unit testing
-   Mockito and PowerMock, mocking extensions to JUnit
-   JUnit-Tools, a set of tools to optimize the creation and maintainability of junit-tests (www.junit-tools.org)
-   EvoSuite, a tool to automatically generate JUnit tests
-   JUnit Foundation, a set of extensions including event notifications, timeout management, automatic retry, and artifact capture.


References


External links

-   -   An early look at JUnit 4
-   JUnit Presentation
-   JUnit Tutorials

Category:Cross-platform software Category:Extreme programming Category:Free software programmed in Java (programming language) Category:Java development tools Category:Java platform Category:Unit testing frameworks Category:Software using the Eclipse license Category:Articles with example Java code

[1]

[2]

[3]

[4]