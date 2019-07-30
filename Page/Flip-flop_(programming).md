In computer programming, a FLIP-FLOP is a seldom-used syntactic construct which allows a boolean to flip from false to true when a first condition is met and then back to false when a second condition is met. The syntax is available in the programming languages Perl[1] and Ruby.[2] Similar logic is available in sed and awk.[3]

A flip-flop with first condition A and second condition B is not equivalent to "if A and not B", as the former has persistent state and is true even if A is no longer true, as long as at some point in the past A was true and B has always been false.


Example

The following Ruby code prints the numbers 4 through 6:

    (1..10).each do |x|
      puts x if (x == 4 .. x == 6)
    end

The first instance of ".." is the range operator, which produces the enumeration of integers 1 through 10. The second ".." is the flip-flop operator, otherwise known as the flip floperator [4]. Note that the number 5 is printed even though both "x == 4" and "x== 6" are false. This is because the expression remembers that "x == 4" was true on a previous iteration, and that "x == 6" had at that point never been true.


References

Category:Operators (programming)

[1]

[2]

[3]

[4]