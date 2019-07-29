Java_implementation_of_a_quine_program.png

A QUINE is a computer program which takes no input and produces a copy of its own source code as its only output. The standard terms for these programs in the computability theory and computer science literature are "self-replicating programs", "self-reproducing programs", and "self-copying programs".

A quine is a fixed point of an execution environment, when the execution environment is viewed as a function transforming programs into their outputs. Quines are possible in any Turing complete programming language, as a direct consequence of Kleene's recursion theorem. For amusement, programmers sometimes attempt to develop the shortest possible quine in any given programming language.

The name "quine" was coined by Douglas Hofstadter, in his popular science book _Gödel, Escher, Bach: An Eternal Golden Braid_, in honor of philosopher Willard Van Orman Quine (1908–2000), who made an extensive study of indirect self-reference, and in particular for the following paradox-producing expression, known as Quine's paradox:

  "Yields falsehood when preceded by its quotation" yields falsehood when preceded by its quotation.


History

The idea of self-reproducing automata came from the dawn of computing, if not before. John von Neumann theorized about them in the 1940s. Later, Paul Bratley and Jean Millo's article "Computer Recreations: Self-Reproducing Automata" discussed them in 1972.[1] Bratley first became interested in self-reproducing programs after seeing the first known such program written in Atlas Autocode at Edinburgh in the 1960s by the University of Edinburgh lecturer and researcher Hamish Dewar.

The "download source" requirement of the Affero General Public License is based on the idea of a quine.


Examples

Constructive quines

In general, the method used to create a quine in any programming language is to have, within the program, two pieces: (a) code used to do the actual printing and (b) data that represents the textual form of the code. The code functions by using the data to print the code (which makes sense since the data represents the textual form of the code), but it also uses the data, processed in a simple way, to print the textual representation of the data itself.

The following Java code demonstrates the basic structure of a quine.

    public class Quine
    {
      public static void main(String[] args)
      {
        char q = 34;      // Quotation mark character
        String[] l = {    // Array of source code
        "public class Quine",
        "{",
        "  public static void main(String[] args)",
        "  {",
        "    char q = 34;      // Quotation mark character",
        "    String[] l = {    // Array of source code",
        "    ",
        "    };",
        "    for(int i = 0; i < 6; i++)           // Print opening code",
        "        System.out.println(l[i]);",
        "    for(int i = 0; i < l.length; i++)    // Print string array",
        "        System.out.println(l[6] + q + l[i] + q + ',');",
        "    for(int i = 7; i < l.length; i++)    // Print this code",
        "        System.out.println(l[i]);",
        "  }",
        "}",
        };
        for(int i = 0; i < 6; i++)           // Print opening code
            System.out.println(l[i]);
        for(int i = 0; i < l.length; i++)    // Print string array
            System.out.println(l[6] + q + l[i] + q + ',');
        for(int i = 7; i < l.length; i++)    // Print this code
            System.out.println(l[i]);
      }
    }

The source code contains a string array of itself, which is output twice, once inside quotation marks.

The same idea is used in the following SQL quine:

    SELECT REPLACE(REPLACE('SELECT REPLACE(REPLACE("$",CHAR(34),CHAR(39)),CHAR(36),"$") AS Quine',CHAR(34),CHAR(39)),CHAR(36),'SELECT REPLACE(REPLACE("$",CHAR(34),CHAR(39)),CHAR(36),"$") AS Quine') AS Quine

A very concise quine with the same basic structure can be written in Lua:

    x = [["x_=_["_.._"["_.._x_.._"]"_.._"]/nprint("_.._x)|"x = [" .. "[" .. x .. "]" .. "]\nprint(" .. x)]]
    print("x = [" .. "[" .. x .. "]" .. "]\nprint(" .. x)

And in Python:

    s = 's = %r\nprint(s%%s)'
    print(s%s)

The above converted to a one-liner in Python:

    s = 's = %r; print (s%%s)'; print (s%s)

A one-liner with lambda functions in Python:

    print((lambda s:s%s)('print((lambda s:s%%s)(%r))'))

As a one-liner in Matlab:

    s='disp(char([115,61,39,s,39,59,s]));';disp(char([115,61,39,s,39,59,s]));

Or as a matlab function:

    function f(),p='function f(),p=%c%s%c;fprintf(p,39,p,39)';fprintf(p,39,p,39)

As a one-liner in C:

    int main(){char*s="int main(){char*s=%c%s%c;printf(s,34,s,34);return 0;}";printf(s,34,s,34);return 0;}

Actually another shorter one:

    main(p){printf(p="main(p){printf(p=%c%s%1$c,34,p);}",34,p);}

In Scala:

    val s =
      """val s =
        |  ""%2$s%1$s%2$s""
        |print(s.stripMargin.format(s, "\""))
        |"""
    print(s.stripMargin.format(s, "\""))

In R:

    m<-"m<-0;cat(sub(0,deparse(m),m))";cat(sub(0,deparse(m),m))

In Rust:[2]

    fn main() {
        let x = "fn main() {\n    let x = ";
        let y = "print!(\"{}{:?};\n    let y = {:?};\n    {}\", x, x, y, y)\n}\n";
        print!("{}{:?};
        let y = {:?};
        {}", x, x, y, y)
    }

In Go:[3]

    package main;import"fmt";func main(){s:="package main;import\"fmt\";func main(){s:=%q;fmt.Printf(s,s)}";fmt.Printf(s,s)}

In OCaml:[4]

    (fun s -> Printf.printf "%s%S;;\n" s s) "(fun s -> Printf.printf \"%s%S;;\\n\" s s) ";;

In Haskell:[5]

    main = putStr s >> print s where s = "main = putStr s >> print s where s = "

In Kotlin:[6]

    val a="val a=%c%s%c%nprint(a.format(34,a,34))"
    print(a.format(34,a,34))

In Clojure, quines can take of the quote special form that is also applicable with ':

    ((fn [x] (list x (list 'quote x))) '(fn [x] (list x (list 'quote x))))

Quines can take advantage of eval. For example, this Ruby quine:

    eval s="print 'eval s=';p s"

Or in JavaScript:

    eval(s = "console.log('eval(s = %s)', JSON.stringify(s))")

In Smalltalk in the Pharo IDE:

    [ :s | Transcript show: s; show: s printString ] value: '[ :s | Transcript show: s; show: s printString ] value:'

"Cheating" quines

Self-evaluation

In many functional languages, including Scheme and other Lisps, and interactive languages such as APL, numbers are self-evaluating. In TI-BASIC, if the last line of a program is value returning, the returned value is displayed on the screen. Therefore, in such langages a program containing a single digit results in a 1-byte quine. Since such code does not _construct_ itself, this is often considered cheating.

    1

In some languages, particularly scripting languages but also C, an empty source file is a fixed point of the language, being a valid program that produces no output. Such an empty program, submitted as "the world's smallest self reproducing program", once won the "worst abuse of the rules" prize in the International Obfuscated C Code Contest.[7] The program was not actually compiled, but used cp to copy the file into another file, which could be executed to print nothing.[8]

Other questionable techniques include making use of compiler messages; for example, in the GW-BASIC environment, entering "Syntax Error" will cause the interpreter to respond with "Syntax Error".

Source code inspection

Quines, per definition, cannot receive _any_ form of input, including reading a file, which means a quine is considered to be "cheating" if it looks at its own source code. The following shell script is not a quine:

    #!/bin/sh
    # Invalid quine.
    # Reading the executed file from disk is cheating.
    cat $0

Nor is this succinct use of the Shebang:

    #!/bin/cat

The above also applies to this JavaScript code:

    (function a() {
        console.log(`(${a})()`);
    })()

In PHP:

    <? highlight_file(__FILE__) ?>

In Python:

    print(open(__file__).read())

Except in implementations where Hello, world! is a legal program and the output of the H command, a program in the joke language HQ9+ is a quine if and only if the source code consists only of zero or more '+' characters and a single 'Q' character (the 'Q' command prints a quine and '+' prints nothing):

    ++Q++++++

One of the shortest cheating quines is provided by Forth, which has a built-in command to read its own source:

    source type

An even shorter cheating quine exists on many 1980s home computers (such as the ZX Spectrum and the Commodore 64) as follows:

    1 LIST

Another even shorter cheating quine in bash:

    dd<*

In C:

    #include <stdio.h>
    /*#include <stdlib.h>*/
    main() {
        char c;FILE *f;
        f=fopen(__FILE__,"r");
        while((c=fgetc(f))!=EOF)putchar(c);
    /*  system("pause");*/
    }


Ouroboros programs

The quine concept can be extended to multiple levels of recursion, originating "ouroboros programs", or quine-relays. This should not be confused with Multiquines.

Example

This Java program outputs the source for a C++ program that outputs the original Java code.

    #include <iostream>
    #include <string>
    using namespace std;

    int main(int argc, char* argv[])
    {
        char q = 34;
        string l[] = {
        "    ",
        "=============<<<<<<<< C++ Code >>>>>>>>=============",
        "#include <iostream>",
        "#include <string>",
        "using namespace std;",
        "",
        "int main(int argc, char* argv[])",
        "{",
        "    char q = 34;",
        "    string l[] = {",
        "    };",
        "    for(int i = 20; i <= 25; i++)",
        "        cout << l[i] << endl;",
        "    for(int i = 0; i <= 34; i++)",
        "        cout << l[0] + q + l[i] + q + ',' << endl;",
        "    for(int i = 26; i <= 34; i++)",
        "        cout << l[i] << endl;",
        "    return 0;",
        "}",
        "=============<<<<<<<< Java Code >>>>>>>>=============",
        "public class Quine",
        "{",
        "  public static void main(String[] args)",
        "  {",
        "    char q = 34;",
        "    String[] l = {",
        "    };",
        "    for(int i = 2; i <= 9; i++)",
        "        System.out.println( l[i] );",
        "    for(int i = 0; i < l.length; i++)",
        "        System.out.println(l[0] + q + l[i] + q + ',');",
        "    for(int i = 10; i <= 18; i++)",
        "        System.out.println(l[i]);",
        "  }",
        "}",
        };
        for(int i = 20; i <= 25; i++)
            cout << l[i] << endl;
        for(int i = 0; i <= 34; i++)
            cout << l[0] + q + l[i] + q + ',' << endl;
        for(int i = 26; i <= 34; i++)
            cout << l[i] << endl;
        return 0;
    }

    public class Quine
    {
      public static void main(String[] args)
      {
        char q = 34;
        String[] l = {
        "    ",
        "=============<<<<<<<< C++ Code >>>>>>>>=============",
        "#include <iostream>",
        "#include <string>",
        "using namespace std;",
        "",
        "int main(int argc, char* argv[])",
        "{",
        "    char q = 34;",
        "    string l[] = {",
        "    };",
        "    for(int i = 20; i <= 25; i++)",
        "        cout << l[i] << endl;",
        "    for(int i = 0; i <= 34; i++)",
        "        cout << l[0] + q + l[i] + q + ',' << endl;",
        "    for(int i = 26; i <= 34; i++)",
        "        cout << l[i] << endl;",
        "    return 0;",
        "}",
        "=============<<<<<<<< Java Code >>>>>>>>==========",
        "public class Quine",
        "{",
        "  public static void main( String[] args )",
        "  {",
        "    char q = 34;",
        "    String[] l = {",
        "    };",
        "    for(int i = 2; i <= 9; i++)",
        "        System.out.println(l[i]);",
        "    for(int i = 0; i < l.length; i++)",
        "        System.out.println( l[0] + q + l[i] + q + ',' );",
        "    for(int i = 10; i <= 18; i++))",
        "        System.out.println(l[i]);",
        "  }",
        "}",
        };
        for(int i = 2; i <= 9; i++)
            System.out.println(l[i]);
        for(int i = 0; i < l.length; i++)
            System.out.println( l[0] + q + l[i] + q + ',' );
        for(int i = 10; i <= 18; i++)
            System.out.println(l[i]);

     }
    }

Such programs have been produced with various cycle lengths:

-   Haskell → Python → Ruby[9]
-   Python → Bash → Perl[10]
-   C → Haskell → Python → Perl[11]
-   Haskell → Perl → Python → Ruby → C → Java[12]
-   Ruby → Java → C# → Python[13]
-   C → C++ → Ruby → Python → PHP → Perl[14]
-   Ruby → Python → Perl → Lua → OCaml → Haskell → C → Java → Brainfuck → Whitespace → Unlambda[15]
-   Ruby → Scala → Scheme → Scilab → Shell (bash) → S-Lang → Smalltalk → Squirrel3 → Standard ML → … → Rexx (128 (and formerly 50) programming languages)[16]


Multiquines

David Madore, creator of Unlambda, describes multiquines as follows:[17]

  "A multiquine is a set of r different programs (in r different languages — without this condition we could take them all equal to a single quine), each of which is able to print any of the r programs (including itself) according to the command line argument it is passed. (Note that cheating is not allowed: the command line arguments must not be too long — passing the full text of a program is considered cheating)."

A multiquine consisting of 2 languages (or biquine) would be a program which:

-   When run, is a quine in language X.
-   When supplied with a user-defined command line argument, would print a second program in language Y.
-   Given the second program in language Y, when run normally, would also be a quine in language Y.
-   Given the second program in language Y, and supplied with a user-defined command line argument, would produce the original program in language X.

A biquine could then be seen as a set of two programs, both of which are able to print either of the two, depending on the command line argument supplied.

Theoretically, there is no limit on the number of languages in a multiquine, a 5-part multiquine (or pentaquine) has been produced with Python, Perl, C, NewLISP, and F#[18] and there is also a 25-language multiquine.[19]


Radiation-hardened

A radiation-hardened quine is a quine that can have any single character removed and still produce the original program with no missing character. Of necessity, such quines are much more convoluted than ordinary quines, as is seen by the following example in Ruby:[20]

    eval='eval$q=%q(puts %q(10210/#{1 1 if 1==21}}/.i rescue##/

    1 1"[13,213].max_by{|s|s.size}#"##").gsub(/\d/){["=\47eval$q=%q(#$q)#\47##\47

    ",:eval,:instance_,"||=9"][eval$&]}
    exit)#'##'

    instance_eval='eval$q=%q(puts %q(10210/#{1 1 if 1==21}}/.i rescue##/

    1 1"[13,213].max_by{|s|s.size}#"##").gsub(/\d/){["=\47eval$q=%q(#$q)#\47##\47

    ",:eval,:instance_,"||=9"][eval$&]}
    exit)#'##'

    /#{eval eval if eval==instance_eval}}/.i rescue##/

    eval eval"[eval||=9,instance_eval||=9].max_by{|s|s.size}#"##"


See also

-   Diagonal lemma
-   Fixed point combinator
-   Self-interpreter
-   Self-replicating machine
-   Self-replication
-   Self-relocation
-   Tupper's self-referential formula
-   Programming languages
-   Quine's paradox


Notes


References


Further reading

-   Douglas Hofstadter: _Gödel, Escher, Bach: An Eternal Golden Braid_
-   Ken Thompson: "Reflections on Trusting Trust" (_Communications of the ACM_, 27(8):761-3)


External links

-   TiddlyWiki, a quine manifested as a wiki
-   The Quine Page (by Gary P. Thompson)
-   A Brief Guide to Self-Referential Programs
-   QuineProgram at the Portland Pattern Repository Wiki
-   David Madore's Discussion of Quines
-   Zip File Quine
-   Zip Files All The Way Down
-   An Introduction to Quines — in particular, quines using more than one language
-   Quine Web Page: A standards-conforming HTML+JavaScript web page that shows its own source code
-   HTML Quine: An HTML page that only uses HTML and CSS to show its own source code
-   Quine Challenge for Tom's JavaScript Machine, with a series of interactive hints
-   A Java Quine built straight from Kleene's fixed point theorem, composition and s-n-m
-   A QR code quine

Category:Source code Category:Articles with example C code Category:Willard Van Orman Quine Category:Test items in computer languages Category:Computer programming folklore Category:Self-replication

[1]

[2] https://play.rust-lang.org/?gist=538739d5b3008dd6edbdc8e2022abb47

[3]

[4]

[5] http://www.iis.sinica.edu.tw/~scm/2007/a-haskell-quine/

[6] https://stackoverflow.com/a/51737574

[7] IOCCC 1994 Worst Abuse of the Rules

[8]

[9]

[10]

[11]

[12]

[13]

[14]  (this one is also a polyglot)

[15]

[16]

[17]

[18]

[19]

[20]