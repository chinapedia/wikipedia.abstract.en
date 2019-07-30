JShell is a Java read-eval-print loop tool first introduced in the JDK 9.[1] It is tracked by JEP 222: jshell: The Java Shell (Read-Eval-Print Loop).[2]

One of the reasons JShell was proposed for Java 9 is that a lot of applications use their own mechanisms to interactively evaluate expressions, and the _de facto_ library to use a Java REPL was often BeanShell, which is a dormant project since 2003, and which made arbitrary changes to the Java language.[3][4]


Example

    $ jshell
    |  Welcome to JShell -- Version 9
    |  For an introduction type: /help intro

    jshell> int a[] = {0,1,3,5,8}
    a ==> int[5] { 0, 1, 3, 5, 8 }

    jshell> int fact(int n){
       ...>     return n<2?1:n*fact(n-1);
       ...> }
    |  created method fact(int)

    jshell> for (int i=0 ; i<a.length ; ++i)
       ...>     a[i] = fact(a[i]);

    jshell> a
    a ==> int[5] { 1, 1, 6, 120, 40320 }

    jshell> /exit
    |  Goodbye
    $


See also

-   Read–eval–print loop
-   Exploratory programming
-   BeanShell


References

Category:Command shells Category:Cross-platform software Virtual machine Category:Java platform software Category:Interpreters (computing)

[1]

[2]

[3]

[4]