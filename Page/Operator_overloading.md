In programming, OPERATOR OVERLOADING, sometimes termed _operator ad hoc polymorphism_, is a specific case of polymorphism, where different operators have different implementations depending on their arguments. Operator overloading is generally defined by a programming language, a programmer, or both.


Motive

Operator overloading is syntactic sugar, and is used because it allows programming using notation nearer to the target domain[1] and allows user-defined types a similar level of syntactic support as types built into a language. It is common, for example, in scientific computing, where it allows computing representations of mathematical objects to be manipulated with the same syntax as on paper.

Operator overloading does not change the expressive power of a language (with functions), as it can be emulated using function calls. For example, consider variables a, b, c of some user-defined type, such as matrices:

a + b * c

In a language that supports operator overloading, and with the usual assumption that the '*' operator has higher precedence than '+' operator, this is a concise way of writing:

Add(a, Multiply(b, c))

However, the former syntax reflects common mathematical usage.


Examples

In this case, the addition operator is overloaded to allow addition on a user-defined type "Time" (in C++):

    Time operator+(const Time& lhs, const Time& rhs) {
      Time temp = lhs;
      temp.seconds += rhs.seconds;
      temp.minutes += temp.seconds / 60;
      temp.seconds %= 60;
      temp.minutes += rhs.minutes;
      temp.hours += temp.minutes / 60;
      temp.minutes %= 60;
      temp.hours += rhs.hours;
      return temp;
    }

Addition is a binary operation, which means it has two operands. In C++, the arguments being passed are the operands, and the temp object is the returned value.

The operation could also be defined as a class method, replacing lhs by the hidden this argument; however this forces the left operand to be of type Time:

    // This "const" means that |this| is not modified.
    //  \
    //   ------------------------------------\
    //                                       |
    //                                       V
    Time Time::operator+(const Time& rhs) const {
      Time temp = *this;  // Copy |this| which is not to be modified.
      temp.seconds += rhs.seconds;
      temp.minutes += temp.seconds / 60;
      temp.seconds %= 60;
      temp.minutes += rhs.minutes;
      temp.hours += temp.minutes / 60;
      temp.minutes %= 60;
      temp.hours += rhs.hours;
      return temp;
    }

Note that a unary operator defined as a class method would receive no apparent argument (it only works from this):

    bool Time::operator!() const {
      return hours == 0 && minutes == 0 && seconds == 0;
    }

Less than(<) operator is often overloaded to sort a structure or class.

    class Pair {
     public:
      bool operator<(const Pair& p) const {
        if (x_ == p.x_) {
          return y_ < p.y_;
        }
        return x_ < p.x_;
      }

     private:
      int x_;
      int y_;
    };

In the last example, operator overloading is done within the class which is the same as the previous examples. In C++, after overloading the less-than operator (<), standard sorting functions can be used to sort some classes.


Criticisms

Operator overloading has often been criticized[2] because it allows programmers to reassign the semantics of operators depending on the types of their operands. For example, the use of the << in C++'s:

    a << 1

shifts the bits in the variable a left by 1 bit if a is of an integer type, but if a is an output stream then the above code will attempt to write a "1" to the stream. Because operator overloading allows the original programmer to change the usual semantics of an operator and to catch any subsequent programmers by surprise, it is considered good practice to use operator overloading with care (the creators of Java decided not to use this feature,[3] although not necessarily for this reason).

Another, more subtle, issue with operators is that certain rules from mathematics can be wrongly expected or unintentionally assumed. For example, the commutativity of + (i.e. that a + b == b + a) does not always apply; an example of this occurs when the operands are strings, since + is commonly overloaded to perform a concatenation of strings (i.e. "bird" + "song" yields "birdsong", while "song" + "bird" yields "songbird"). A typical counter to this argument comes directly from mathematics: While + is commutative on integers (and more generally any complex numbers), it is not commutative for other "types" of variable. In practice, + is not associative even with floating-point values, due to rounding errors. Another example: In mathematics, multiplication is commutative for real and complex numbers but not commutative in matrix multiplication.


Catalog

A classification of some common programming languages is made according to whether their operators are overloadable by the programmer and whether the operators are limited to a predefined set.

+------------------+--------------------+---------------------------------------------------------------------------------+
| Operators        | Not overloadable   | Overloadable                                                                    |
+==================+====================+=================================================================================+
| New definable[4] | -   ML             | -   ALGOL 68                                                                    |
|                  | -   Pico[5]        | -   Clojure                                                                     |
|                  | -   Prolog         | -   Eiffel                                                                      |
|                  |                    | -   Fortran[6]                                                                  |
|                  |                    | -   F#[7]                                                                       |
|                  |                    | -   Haskell[8]                                                                  |
|                  |                    | -   Io                                                                          |
|                  |                    | -   Perl 6                                                                      |
|                  |                    | -   R                                                                           |
|                  |                    | -   Scala                                                                       |
|                  |                    | -   Seed7                                                                       |
|                  |                    | -   Smalltalk                                                                   |
|                  |                    | -   Swift                                                                       |
+------------------+--------------------+---------------------------------------------------------------------------------+
| Limited set      | -   BASIC          | -   Ada                                                                         |
|                  | -   C              | -   C#[11]                                                                      |
|                  | -   Go[9]          | -   C++                                                                         |
|                  | -   Java           | -   Ceylon                                                                      |
|                  | -   JavaScript     | -   D                                                                           |
|                  | -   Modula-2       | -   Dart                                                                        |
|                  | -   Objective-C    | -   FreeBASIC                                                                   |
|                  | -   Pascal         | -   Groovy                                                                      |
|                  | -   TypeScript[10] | -   Kotlin[12]                                                                  |
|                  | -   Visual Basic   | -   Lua                                                                         |
|                  |                    | -   MATLAB[13]                                                                  |
|                  |                    | -   Object Pascal (Free Pascal,[14] Delphi (since 2005)[15])                    |
|                  |                    | -   PHP (using magic methods,[16] ArrayAccess interface, or Operator extension) |
|                  |                    | -   Perl[17]                                                                    |
|                  |                    | -   Python                                                                      |
|                  |                    | -   Ruby                                                                        |
|                  |                    | -   Rust                                                                        |
|                  |                    | -   Visual Basic .NET                                                           |
+------------------+--------------------+---------------------------------------------------------------------------------+


Timeline of operator overloading

1960s

The ALGOL 68 specification allowed operator overloading.[18]

Extract from the ALGOL 68 language specification (page 177) where the overloaded operators ¬, =, ≠, and ABS are defined:

10.2.2. Operations on Boolean Operands
a) op ∨ = (bool a, b) bool:( a | true | b );
b) op ∧ = (bool a, b) bool: ( a | b | false );
c) op ¬ = (bool a) bool: ( a | false | true );
d) op = = (bool a, b) bool:( a∧b ) ∨ ( ¬b∧¬a );
e) op ≠ = (bool a, b) bool: ¬(a=b);
f) op abs = (bool a)int: ( a | 1 | 0 );

Note that no special declaration is needed to _overload_ an operator, and the programmer is free to create new operators.

1980s

Ada supports overloading of operators from its inception, with the publication of the Ada 83 language standard. However, the language designers chose to preclude the definition of new operators. Only extant operators in the language may be overloaded, by defining new functions with identifiers such as "+", "*", "&" etc. Subsequent revisions of the language (in 1995 and 2005) maintain the restriction to overloading of extant operators.

In C++, operator overloading is more refined than in ALGOL 68.[19]

1990s

Java language designers at Sun Microsystems chose to omit overloading.[20][21][22]

Ruby allows operator overloading as syntactic sugar for simple method calls.

Lua allows operator overloading as syntactic sugar for method calls with the added feature that if the first operand doesn't define that operator, the method for the second operand will be used.

2000s

Microsoft includes operator overloading for C# in 2001.

Scala treats all operators as methods and thus allows operator overloading by proxy.

In Perl 6, the definition of all operators is delegated to lexical functions, and so, using function definitions, operators can be overloaded or new operators added. For example, the function defined in the Rakudo source for incrementing a Date object with "+" is:

    multi infix:<+>(Date:D $d, Int:D $x) {
        Date.new-from-daycount($d.daycount + $x)
    }

Since "multi" was used, the function gets added to the list of multidispatch candidates, and "+" is only overloaded for the case where the type constraints in the function signature are met. While the capacity for overloading includes +, *, >=, the postfix and term I, and so on, it also allows for overloading various brace operators: "[x, y]", "x[ y ]", "x{ y }", and "x( y )".

Kotlin has supported operator overloading since its creation.


See also

-   Function overloading
-   Polymorphism (computer science)
-   Subroutine
-   Operator (programming)
-   Operators in C and C++
-   Mutator method
-   Indexer (programming)
-   Property (programming)


References

Category:Articles with example ALGOL 68 code Category:Operators (programming)

[1]

[2] Issues in Overloading

[3] No more operator overloading – Features Removed from C and C++

[4] Completely new operators can be added

[5] binary functions with a symbolic name can be called infix

[6] introduced in Fortran 90

[7]

[8] type classes instead of overloading

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

[20] comp.lang.java FAQ Question 6.9: Why isn't there operator overloading?

[21] java.sun.com

[22]