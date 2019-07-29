ICON is a very high-level programming language featuring goal-directed execution and many facilities for managing strings and textual patterns. It is related to SNOBOL and SL5, string processing languages. Icon is not object-oriented, but an object-oriented extension called Idol was developed in 1996 which eventually became Unicon.


Basic syntax

The Icon language is derived from the ALGOL-class of structured programming languages, and thus has syntax similar to C or Pascal. Icon is most similar to Pascal, using := syntax for assignments, the procedure keyword and similar syntax. On the other hand, Icon uses C-style brackets for structuring execution groups, and programs start by running a procedure called "main".

In many ways Icon also shares features with most scripting languages (as well as SNOBOL and SL5, from which they were taken): variables do not have to be declared, types are cast automatically, and numbers can be converted to strings and back automatically. Another feature common to many scripting languages, but not all, is the lack of a line-ending character; in Icon, lines not ended by a semicolon get ended by an implied semicolon if it makes sense.

Procedures are the basic building blocks of Icon programs. Although they use Pascal naming, they work more like C functions and can return values; there is no function keyword in Icon.

     procedure doSomething(aString)
       write(aString)
     end


Goal-directed execution

One of Icon's key concepts is that control structures are based on the "success" or "failure" of expressions, rather than on boolean logic, as in most other programming languages. Under this model, simple comparisons like if a < b do not mean "if the operations to the right evaluate to true" as they would under most languages; instead it means something more like "if the operations to the right _succeed"_. In this case the < operator succeeds if the comparison is true, so the end result is the same. In addition, the < operator returns its second argument if it succeeds, allowing things like if a < b < c, a common type of comparison that in most languages must be written as a conjunction of two inequalities like if (a < b) && (b < c).

The utility of this concept becomes much clearer when you consider real-world examples. Since Icon uses success or failure for all flow control, this simple code:

    if a := read() then write(a)

will copy one line of standard input to standard output. This code will work even if the read() causes an error, for instance, if the file does not exist. In that case the statement a := read() will fail, and write will simply not be called.

Success and failure are passed "up" through functions, meaning that a failure inside a nested function will cause the functions calling it to fail as well. For instance, we can write a program to copy an entire input file to output in a single line:

    while write(read())

When the read() command fails, at the end of file for instance, the failure will be passed up the chain, and write() will fail as well. The while, being a control structure, stops on failure, meaning it stops when the file is empty. For comparison, consider a similar example written in pseudocode (using syntax close to C++ and derived languages such as Java):

     try {
       while ((a = read()) != EOF) {
         write(a);
       }
     } catch (Exception e) {
       // do nothing, exit the loop
     }

This case needs two comparisons: one for end of file (EOF) and another for all other errors. Since Java does not allow errors to be compared as logic elements, as under Icon, the lengthy

    try/catch

syntax must be used instead. Try blocks also impose a performance penalty for simply using them, even if no error occurs, a distributed cost that Icon avoids.

Icon refers to this concept as _goal-directed execution_, referring to the way that execution continues until some goal is reached. In the example above the goal is to read the entire file; the read command continues to succeed while there is more information to be read, and fails when there isn't. The goal is thus coded directly in the language, instead of using statements checking return codes or similar constructs.


Generators

Expressions in Icon often return a single value, for instance, will evaluate and succeed if the value of x is less than 5, or else fail. However several of the examples below rely on the fact that many expressions do not _immediately_ return success or failure, returning values in the meantime. This drives the examples with and ; causes to continue to return values until it fails.

This is a key concept in Icon, known as _generators_. Generators drive much of the loop functionality in the language, but do so more directly; the programmer does not write a loop and then pull out and compare values, Icon will do all of this for you.

Within the parlance of Icon, the evaluation of an expression or function results in a result sequence. A result sequence contains all the possible values that can be generated by the expression or function. When the result sequence is exhausted (e.g. there are no more values within the result sequence), the expression or function fails. Iteration over the result sequence is achieved either implicitly via Icon's goal directed evaluation or explicitly via the clause.

Icon includes several generator-builders. The _alternator_ syntax allows a series of items to be generated in sequence until one fails:

     1 | "hello" | x < 5

can generate "1", "hello", and "5" if x is less than 5. Alternators can be read as "or" in many cases, for instance:

     if y < (x | 5) then write("y=", y)

will write out the value of y if it is smaller than x _or_ 5. Internally Icon checks every value from left to right until one succeeds or the list empties and it returns a failure. Remember that functions will not be called unless the calls within do not fail, so this example can be shortened to:

     write("y=", (x | 5) > y)

Another simple generator is the to, which generates lists of integers; every write(1 to 10) will do exactly what it seems to. The _bang syntax_ generates every item of a list; every write(!aString) will output each character of aString on a new line.

To demonstrate the power of this concept, consider string operations. Most languages include a function known as find or indexOf that returns the location of a string within another. Consider:

     s = "All the world's a stage. And all the men and women merely players";
     i = indexOf("the", s)

This code will return 4, the position of the first occurrence of the word "the". To get the next instance of "the" an alternate form must be used,

     i = indexOf("the", s, 5)

the 5 at the end saying it should look from position 5 on. In order to extract all the occurrences of "the", a loop must be used...

     s = "All the world's a stage. And all the men and women merely players";
     i = indexOf("the", s)
     while i != -1 {
       write(i);
       i =  indexOf("the", s, i+1);
     }

Under Icon the function is a generator, and will return the next instance of the string each time it is resumed before finally failing after it passes the end of the string. The same code under Icon can be written:

     s := "All the world's a stage. And all the men and women merely players"
     every write(find("the",s))

will return the index of the next instance of "the" each time it is resumed by , eventually passing the end of the string and failing. As in the prior example, this will cause write to fail, and the (one-line) loop to exit.

Of course there are times where you deliberately want to find a string after some point in input, for instance, you might be scanning a text file containing data in multiple columns. Goal-directed execution works here as well, and can be used this way:

     write(5 < find("the", s))

The position will only be returned if "the" appears after position 5, the comparison will fail otherwise, passing that failure to write() as before. There is one small "trick" to this code that needs to be considered: comparisons return the right-hand result, so it is important to put the find on the right-hand side of the comparison. If the 5 were placed on the right, 5 would be written.

Icon adds several control structures for looping through generators. The operator is similar to , looping through every item returned by a generator and exiting on failure:

      every k := i to j do
       write(someFunction(k))

Why use instead of a while loop in this case? Because re-evaluates the first result, but produces all results. The syntax actually injects values into the function in a fashion similar to blocks under Smalltalk. For instance, the above loop can be re-written this way:

     every write(someFunction(i to j))

Users can build new generators easily using the keyword:

     procedure findOnlyOdd(pattern, theString)
       every i := find(pattern, theString) do
         if i % 2 = 1 then suspend i
     end

This example loops over _theString_ using find to look for _pattern_. When one is found, and the position is odd, the location is returned from the function with . Unlike , writes down where it is in the internal generators as well, allowing it to pick up where it left off on the next iteration.


Strings

In keeping with its script-like functionality, Icon adds a number of features to make working with strings easier. Most notable among these is the _scanning_ system, which repeatedly calls functions on a string:

    s ? write(find("the"))

is a short form of the examples shown earlier. In this case the _subject_ of the find function is placed outside the parameters in front of the question-mark. Icon functions are deliberately (as opposed to automatically) written to identify the subject in parameter lists and allow them to be pulled out in this fashion.

Substrings can be extracted from a string by using a range specification within brackets. A range specification can return a point to a single character, or a slice of the string. Strings can be indexed from either the right or the left. Positions within a string are defined to be BETWEEN the characters ₁A₂B₃C₄ and can be specified from the right _(−3)A_(−2)B_(−1)C₀

For example,

     "Wikipedia"[1]     ==> "W"
     "Wikipedia"[3]     ==> "k"
     "Wikipedia"[0]     ==> "a"
     "Wikipedia"[1:3]   ==> "Wi"
     "Wikipedia"[-2:0]  ==> "ia"
     "Wikipedia"[2+:3]  ==> "iki"

Where the last example shows using a length instead of an ending position

The subscripting specification can be used as a lvalue within an expression. This can be used to insert strings into another string or delete parts of a string. For example,

        s := "abc"
        s[2] := "123"
        s now has a value of "a123c"
        s := "abcdefg"
        s[3:5] := "ABCD"
        s now has a value of "abABCDefg"
        s := "abcdefg"
        s[3:5] := ""
        s now has a value of "abefg"

As noted above, Icon's subscript indices are between the elements. Given the string s := "ABCDEFG", the indexes are: ₁A₂B₃C₄D₅E₆F₇G₈. The slice s[3:5] is the string between the indices 3 and 5, which is the string "CD".


Other structures

Icon also allows the user to easily construct their own lists (or _arrays_):

    aCat := ["muffins", "tabby", 2002, 8]

The items within a list can be of any sort, including other structures. To quickly build larger lists, Icon includes the list generator; i := list(10, "word") generates a list containing 10 copies of "word".

Like arrays in other languages, Icon allows items to be looked up by position, e.g., weight := aCat[4]. As with strings, the indices are between the elements, and a slice of a list can be obtained by specifying the range, e.g., aCat[2:4] produces the list ["tabby",2002]. Unlike strings, a slice using a range cannot be a lvalue.

The _bang-syntax_, e.g., every write(!aCat), will print out four lines, each with one element.

Icon includes stack-like functions, push and pop to allow them to form the basis of stacks and queues.

Icon also includes functionality for sets and tables (known as _hashes_, _associative arrays_, _dictionaries_, etc.):

     symbols := table(0)
     symbols["there"] := 1
     symbols["here"] := 2

This code creates a table that will use zero as the default value of any unknown key. It then adds two items into it, with the keys "there" and "here", and values 1 and 2.


String scanning

One of the powerful features of Icon is string scanning. The scan string operator, ? saves the current string scanning environment and creates a new string scanning environment. The string scanning environment consists of two keyword variables, &subject and &pos. Where &subject is the string being scanned, and &pos is the _cursor_ or current position within the subject string.

For example,

      s := "this is a string"
      s ? write("subject=[",&subject,"] pos=[",&pos,"]")

would produce

    subject=[this is a string] pos=[1]

Built-in and user-defined functions can be used to move around within the string being scanned. Many of the built-in functions will default to &subject and &pos (for example the _find_ function). The following, for example, will write all blank delimited "words" in a string.

      s := "this is a string"
      s ? {                               # Establish string scanning environment
          while not pos(0) do  {          # Test for end of string
              tab(many(' '))              # Skip past any blanks
              word := tab(upto(' ') | 0)  # the next word is up to the next blank -or- the end of the line
              write(word)                 # write the word
          }
      }

A more complex example demonstrates the integration of generators and string scanning within the language.

     procedure main()
         s := "Mon Dec 8"
         s ? write(Mdate() | "not a valid date")
     end
     # Define a matching function that returns
     # a string that matches a day month dayofmonth
     procedure Mdate()
     # Define some initial values
     static dates
     static days
     initial {
            days := ["Mon","Tue","Wed","Thr","Fri","Sat","Sun"]
            dates := ["Jan","Feb","Mar","Apr","May","Jun",
                      "Jul","Aug","Sep","Oct","Nov","Dec"]
     }
     every suspend   (retval <-  tab(match(!days)) ||     # Match a day
                                 =" " ||                  # Followed by a blank
                                 tab(match(!dates)) ||    # Followed by the month
                                 =" " ||                  # Followed by a blank
                                 matchdigits(2)           # Followed by at least 2 digits
                     ) &
                     (=" " | pos(0) ) &                   # Either a blank or the end of the string
                     retval                               # And finally return the string
     end
     # Matching function that returns a string of n digits
     procedure matchdigits(n)
         suspend (v := tab(many(&digits)) & *v <= n) & v
     end

The idiom of expr₁ & expr₂ & expr₃ returns the value of the last expression


See also

-   Unicon (programming language) (a descendant and enhancement of Icon)
-   CLU (programming language) by Barbara Liskov
-   Coroutine
-   Generator (computer programming)


References

The definitive work is _The Icon Programming Language_ (third edition) by Griswold and Griswold, . It is out of print but can be downloaded in PDF form.

Icon also has co-expressions, providing non-local exits for program execution. Please see _The Icon Programming language_ and also Shamim Mohamed's article _Co-expressions in Icon_. (This topic should probably be expanded.)


External links

-   Icon homepage
-   Oral history interview with Stephen Wampler, Charles Babbage Institute, University of Minnesota. Wampler discusses his work on the development of the Icon programming language in the late 1970s at the University of Arizona under Ralph Griswold.
-   Oral history interview with Robert Goldberg, Charles Babbage Institute, University of Minnesota. Goldberg discusses his interaction with Ralph Griswold when working on the Icon programming language in the classroom at Illinois Institute of Technology.
-   Oral history interview with Kenneth Walker, Charles Babbage Institute, University of Minnesota. Walker describes the work environment of the Icon project, his interactions with Ralph Griswold, and his own work on an Icon compiler.
-   The Icon Programming Language page on The Rosetta Code comparative programming tasks project site

Category:Dynamically typed programming languages Category:Icon programming language family Category:Pattern matching programming languages Category:Public-domain software Category:SNOBOL programming language family Category:Text-oriented programming languages Category:Programming languages created in 1977