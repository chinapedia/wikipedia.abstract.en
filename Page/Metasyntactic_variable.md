A METASYNTACTIC VARIABLE is a specific word or set of words identified as a placeholder in computer science and specifically computer programming. These words are commonly found in source code and are intended to be modified or substituted to be applicable to the specific usage before compilation (translation to an executable). The words FOO and BAR are good examples as they are used in over 330 Internet Engineering Task Force Requests for Comments, which are documents explaining foundational internet technologies like HTTP (websites), TCP/IP, and email protocols.[1][2]

By mathematical analogy, a metasyntactic variable is a word that is a variable for other words, just as in algebra letters are used as variables for numbers.[3]

Metasyntactic variables are used to name entities such as variables, functions, and commands whose exact identity is unimportant and serve only to demonstrate a concept, which is useful for teaching programming.


Common metasyntactic variables

Due to English being the foundation-language, or lingua franca, of most computer programming languages these variables are commonly seen even in programs and examples of programs written for other spoken-language audiences.

The typical names may depend however on the subculture that has developed around a given programming language.

General usage

Metasyntactic variables used commonly across all programming languages include _foobar_, _foo_, _bar_, _baz_, _qux_, _quux_, _quuz_, _corge_, _grault_, _garply_, _waldo_, _fred_, _plugh_, _xyzzy_, and _thud_; several of these words are references to the game _Colossal Cave Adventure_.[4][5] _Wibble_, _wobble_, _wubble_, and _flob_ are also used in the UK.[6]

A complete reference can be found in a MIT Press book titled _The Hacker's Dictionary_.

Python

spam, ham, and eggs are the principal metasyntactic variables used in the Python programming language.[7] This is a reference to the comedy sketch _Spam_ by Monty Python, the eponym of the language.[8]

Japanese

In Japanese, the words _hoge_ (ほげ)[9] and _piyo_ (ぴよ) are commonly used, with other common words and variants being _fuga_ (ふが), _hogera_ (ほげら), and _hogehoge_ (ほげほげ).[10] Note that _-ra_ is a pluralizing ending in Japanese, and reduplication is also used for pluralizing. The origin of _hoge_ as a metasyntactic variable is not known, but it is believed to date to the early 1980s.[11]

French

In French, the word _toto_ is widely used, with variants _tata_, _titi_, _tutu_ as related placeholders. One commonly-raised source for the use of _toto_ is a reference to the stock character used to tell jokes with Tête à Toto.


Usage examples

C

In the following example the function name _FOO_ and the variable name _BAR_ are both metasyntactic variables. Lines beginning with // are comments.

    // The function named foo
    int foo(void)
    {
       // Declare the variable bar and set the value to 1
       int bar = 1;

       return bar;
    }

Python

Spam, ham, and eggs are the principal metasyntactic variables used in the Python programming language.[12] This is a reference to the famous comedy sketch, "Spam", by Monty Python, the eponym of the language.[13] In the following example SPAM, HAM, and EGGS are metasyntactic variables and lines beginning with # are comments.

    # Define a function named spam
    def spam():

        # Define the variable ham
        ham = "Hello World!"

        # Define the variable eggs
        eggs = 1

        return

IETF Requests for Comments

Both the IETF RFCs and computer programming languages are rendered in plain text, making it necessary to distinguish metasyntactic variables by a naming convention, since it would not be obvious from context.

Plain text example:

RFC 772 (cited in RFC 3092) contains for instance:

 All is well; now the recipients can be specified.
     S: MRCP TO:<Foo@Y> 
     R: 200 OK
     S: MRCP TO:<Raboof@Y> 
     R: 553  No such user here
     S: MRCP TO:<bar@Y> 
     R: 200 OK
     S: MRCP TO:<@Y,@X,fubar@Z> 
     R: 200 OK
  Note that the failure of "Raboof" has no effect on the storage of
  mail for "Foo", "bar" or the mail to be forwarded to "fubar@Z"
  through host "X".

(The documentation for texinfo emphasizes the distinction between metavariables and mere variables used in a programming language being documented in some texinfo file as: "Use the @var command to indicate metasyntactic variables. A metasyntactic variable is something that stands for another piece of text. For example, you should use a metasyntactic variable in the documentation of a function to describe the arguments that are passed to that function. Do not use @var for the names of particular variables in programming languages. These are specific names from a program, so @code is correct for them."[14])

Another point reflected in the above example is the convention that a metavariable is to be uniformly substituted with the same instance in all its appearances in a given schema. This is in contrast with nonterminal symbols in formal grammars where the nonterminals on the right of a production can be substituted by different instances.[15]


Teaching concepts

This section includes bits of code which show how metasyntactic variables are used in teaching computer programming concepts.

C++

Function prototypes with different argument passing mechanisms:[16]

    void foo(Fruit bar);
    void foo(Fruit* bar);
    void foo(Fruit& bar);

Example showing the function overloading capabilities of the C++ language

    void foo(int bar);
    void foo(int bar, int baz);
    void foo(int bar, int baz, int qux);


See also

-   Metavariable (logic)
-   xyzzy
-   Alice and Bob
-   John Doe
-   Fnord
-   Free variables and bound variables
-   Gadget
-   Lorem ipsum
-   Nonce word
-   Placeholder name
-   Widget
-   Smurf


References


External links

-   Definition of _metasyntactic variable_, with examples.
-   Examples of metasyntactic variables used in _Commonwealth Hackish_, such as _wombat_.
-   Variable "foo" and Other Programming Oddities

Category:Placeholder names Category:Metalogic Category:Variable (computer science) Category:Syntax (logic)

[1]

[2] RFC-Editor.org

[3]

[4]

[5]

[6] _wibble_. (n.d.). Jargon File 4.4.7. Retrieved February 23, 2010, from 1

[7] Python Tutorial

[8] General Python FAQ

[9] http://ejje.weblio.jp/content/hoge

[10] メタ構文変数

[11]

[12] Python Tutorial

[13] General Python FAQ

[14]

[15]

[16]