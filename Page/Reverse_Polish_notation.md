REVERSE POLISH NOTATION (RPN), also known as POLISH POSTFIX NOTATION or simply POSTFIX NOTATION, is a mathematical notation in which operators follow their operands, in contrast to Polish notation (PN), in which operators precede their operands. It does not need any parentheses as long as each operator has a fixed number of operands. The description "Polish" refers to the nationality of logician Jan Łukasiewicz,[1] who invented Polish notation in 1924.[2][3]

The reverse Polish scheme was proposed in 1954 by Arthur Burks, Don Warren, and Jesse Wright[4] and was independently reinvented by Friedrich L. Bauer and Edsger W. Dijkstra in the early 1960s to reduce computer memory access and utilize the stack to evaluate expressions. The algorithms and notation for this scheme were extended by Australian philosopher and computer scientist Charles L. Hamblin in the mid-1950s.[5][6]

During the 1970s and 1980s, Hewlett-Packard used RPN in all of their desktop and hand-held calculators, and continued to use it in some models into the 2010s.[7][8] In computer science, reverse Polish notation is used in stack-oriented programming languages such as Forth and PostScript.


Explanation

Note: Most of what follows is about binary operators. An example of a unary operator whose standard notation may be interpreted as reverse Polish notation is the factorial, "_n_!".

In reverse Polish notation, the operators follow their operands; for instance, to add 3 and 4, one would write rather than . If there are multiple operations, operators are given immediately after their second operands; so the expression written in conventional notation would be written in reverse Polish notation: 4 is first subtracted from 3, then 5 is added to it. An advantage of reverse Polish notation is that it removes the need for parentheses that are required by infix notation. While can also be written , that means something quite different from . In reverse Polish notation, the former could be written , which unambiguously means which reduces to ; the latter could be written (or , if keeping similar formatting), which unambiguously means .


Practical implications

In comparison testing of reverse Polish notation with algebraic notation, reverse Polish has been found to lead to faster calculations, for two reasons. The first reason is that reverse Polish calculators do not need expressions to be parenthesized, fewer operations need to be entered to perform typical calculations. Additionally, users of reverse Polish calculators made fewer mistakes than for other types of calculator.[9][10] Later research clarified that the increased speed from reverse Polish notation may be attributed to the smaller number of keystrokes needed to enter this notation, rather than to a smaller cognitive load on its users.[11] However, anecdotal evidence suggests that reverse Polish notation is more difficult for users to learn than algebraic notation.[12]


Postfix evaluation algorithm

The following algorithm evaluates postfix expressions using a stack, with the expression processed from left to right:

for each token in the postfix expression:
  if token is an operator:
    operand_2 ← pop from the stack
    operand_1 ← pop from the stack
    result ← evaluate token with operand_1 and operand_2
    push result back onto the stack
  else if token is an operand:
    push token onto the stack
result ← pop from the stack

The following algorithm produces the same results of the previous one, but the expression is processed from right to left:

for each token in the reversed postfix expression:
  if token is an operator:
    push token onto the operator stack
    pending_operand ← False
  else if token is an operand:
    operand ← token
    if pending_operand is True:
      while the operand stack is not empty:
        operand_1 ← pop from the operand stack
        operator ← pop from the operator stack
        operand ← evaluate operator with operand_1 and operand
    push operand onto the operand stack
    pending_operand ← True
result ← pop from the operand stack

A significant difference between the two algorithms is that the first one holds only numbers on a stack, and so it is possible to write a long calculation that uses minimal stack space by putting operators as early as possible in the expression. For example, will accumulate the subtotal on the stack and the stack never has more than two items.

Example

The infix expression can be written like this in reverse Polish notation:



-   Evaluating this postfix expression with the above left-to-right algorithm yields (red items are the stack contents, bold is the current token):

15 7 1 1 + − ÷ 3 × 2 1 1 + + − =
 7 1 1 + − ÷ 3 × 2 1 1 + + − =
 1 1 + − ÷ 3 × 2 1 1 + + − =
 1 + − ÷ 3 × 2 1 1 + + − =
 + − ÷ 3 × 2 1 1 + + − =
 − ÷ 3 × 2 1 1 + + − =
 ÷ 3 × 2 1 1 + + − =
              3 × 2 1 1 + + − =
              × 2 1 1 + + − =
                  2 1 1 + + − =
                  1 1 + + − =
                  1 + + − =
                  + + − =
                  + − =
                  − =
                              =
                             5

-   Evaluating this postfix expression with the above right-to-left algorithm yields:

15 7 1 1 + − ÷ 3 × 2  + − =
15 7 1 1 + − ÷ 3 ×  − =
15 7  − ÷ 3 ×         4 − =
15  ÷ 3 ×         4 − =
 3 ×         4 − =
         4 − =
 =
                             5

The following table shows the state of the operand stack at each stage of the above left-to-right algorithm:

  Token   Type       Stack      Actions
  ------- ---------- ---------- ---------------------------------------------------------------------
  15      Operand    15         Push onto stack.
  7       Operand    15 7       Push onto stack.
  1       Operand    15 7 1     Push onto stack.
  1       Operand    15 7 1 1   Push onto stack.
  +       Operator   15 7 2     Pop from stack twice (1, 1), calculate ( 2}}) and push onto stack.
  −       Operator   15 5       Pop from stack twice (7, 2), calculate ( 5}}) and push onto stack.
  ÷       Operator   3          Pop from stack twice (15, 5), calculate ( 3}}) and push onto stack.
  3       Operand    3 3        Push onto stack.
  ×       Operator   9          Pop from stack twice (3, 3), calculate ( 9}}) and push onto stack.
  2       Operand    9 2        Push onto stack.
  1       Operand    9 2 1      Push onto stack.
  1       Operand    9 2 1 1    Push onto stack.
  +       Operator   9 2 2      Pop from stack twice (1, 1), calculate ( 2}}) and push onto stack.
  +       Operator   9 4        Pop from stack twice (2, 2), calculate ( 4}}) and push onto stack.
  −       Operator   5          Pop from stack twice (9, 4), calculate ( 5}}) and push onto stack.

The above example could be rewritten by following the "chain calculation" method described by HP for their series of reverse Polish notation calculators:[13]

  As was demonstrated in the Algebraic mode, it is usually easier (fewer keystrokes) in working a problem like this to begin with the arithmetic operations inside the parentheses first.




Converting from infix notation

Edsger Dijkstra invented the shunting-yard algorithm to convert infix expressions to postfix expressions (reverse Polish notation), so named because its operation resembles that of a railroad shunting yard.

There are other ways of producing postfix expressions from infix expressions. Most operator-precedence parsers can be modified to produce postfix expressions; in particular, once an abstract syntax tree has been constructed, the corresponding postfix expression is given by a simple post-order traversal of that tree.


Implementations

History

The first computers to implement architectures enabling reverse Polish notation were the English Electric Company's KDF9 machine, which was announced in 1960 and delivered (i.e. made available commercially) in 1963, and the American Burroughs B5000, announced in 1961 and also delivered in 1963. One of the designers of the B5000, Robert S. Barton, later wrote that he developed reverse Polish notation independently of Hamblin sometime in 1958 after reading a 1954 textbook on symbolic logic by Irving Copi,[14][15][16] where he found a reference to Polish notation,[17] which made him read the works of Jan Łukasiewicz as well,[18] and before he was aware of Hamblin's work. Designed by Robert "Bob" Appleby Ragen,[19] Friden introduced reverse Polish notation to the desktop calculator market with the EC-130 supporting a four-level stack[20] in June 1963 .[21] The successor EC-132 added a square root function in April 1965.[22] Around 1966, the Monroe Epic calculator supported an unnamed input scheme resembling RPN as well.[23]

Hewlett-Packard

HP_hat.jpg Hewlett-Packard engineers designed the 9100A Desktop Calculator in 1968 with reverse Polish notation[24] with only three stack levels,[25] a reverse Polish notation variant later referred to as _three-level RPN_. This calculator popularized reverse Polish notation among the scientific and engineering communities. The HP-35, the world's first handheld scientific calculator,[26] introduced the classical _four-level RPN_ in 1972.[27] HP used reverse Polish notation on every handheld calculator it sold, whether scientific, financial, or programmable, until it introduced the HP-10 adding machine calculator in 1977. By this time, HP was the leading manufacturer of calculators for professionals, including engineers and accountants.

Later LCD-based calculators in the early 1980s such as the HP-10C, HP-11C, HP-15C, HP-16C, and the financial calculator, the HP-12C also used reverse Polish notation. In 1988, Hewlett-Packard introduced a business calculator, the HP-19B, without reverse Polish notation, but its 1990 successor, the HP-19BII, gave users the option of using algebraic notation or reverse Polish notation.

Around 1987, HP introduced RPL, an object-oriented successor to reverse Polish notation. It deviates from classical reverse Polish notation by utilizing a stack only limited by the amount of available memory (instead of three or four fixed levels) and which can hold all kinds of data objects (including symbols, strings, lists, matrices, graphics, programs, etc.) instead of just numbers. It also changed the behaviour of the stack to no longer duplicate the top register on drops (since in an unlimited stack there is no longer a top register) and the behaviour of the key so that it no longer duplicates values into Y under certain conditions, both part of the specific ruleset of the so-called _automatic memory stack_[28] or _operational (memory) stack_[29] in classical reverse Polish notation in order to ease some calculations and to save keystrokes, but which had shown to also sometimes cause confusion among users not familiar with these properties. From 1990 to 2003 HP manufactured the HP-48 series of graphing RPL calculators and in 2006 introduced the HP 50g.

As of 2011, Hewlett-Packard was offering the calculator models 12C, 12C Platinum, 17bII+, 20b, 30b, 33s, 35s, 48gII (RPL) and 50g (RPL) which support reverse Polish notation.[30] While calculators emulating classical models continue to support classical reverse Polish notation, new reverse Polish notation models feature a variant of reverse Polish notation, where the key behaves as in RPL. This latter variant is sometimes known as _entry RPN_.[31] In 2013, the HP Prime introduced a _128-level_ form of entry RPN called _advanced RPN_. By late 2017, only the 12C, 12C Platinum, 17bii+, 35s and Prime remain active HP models supporting reverse Polish notation.

WP 31S and WP 34S

The community-developed calculators WP 31S and WP 34S, which are based on the HP 20b/HP 30b hardware platform, support Hewlett-Packard-style classical reverse Polish notation with either a four- or an eight-level stack. A seven-level stack had been implemented in the MITS 7400C scientific desktop calculator in 1972[32][33][34] and an eight-level stack was already suggested by John A. Ball in 1978.[35]

Sinclair Radionics

In Britain, Clive Sinclair's Sinclair Scientific and Scientific Programmable models used reverse Polish notation.[36][37]

Commodore

In 1974 Commodore produced the Minuteman *6 (MM6) without key and the Minuteman *6X (MM6X) with key, both implementing a form of _two-level RPN_. The SR4921 RPN came with a variant of _four-level RPN_ with stack levels named X, Y, Z, and W (rather than T). In contrast to Hewlett-Packard's reverse Polish notation implementation, W filled with 0 instead of its contents being duplicated on stack drops.[38]

Prinztronic

PRINZ and PRINZTRONIC were own-brand trade names of the British Dixons photographic and electronic goods stores retail chain, which was later rebranded as Currys Digital stores, and became part of DSG International. A variety of calculator models was sold in the 1970s under the Prinztronic brand, all made for them by other companies.

Among these was the PROGRAM[39] Programmable Scientific Calculator which featured reverse Polish notation.

Heathkit

The Aircraft Navigation Computer Heathkit OC-1401/OCW-1401 used _five-level RPN_ in 1978.

Soviet Union

Soviet programmable calculators (MK-52, MK-61, B3-34 and earlier B3-21[40] models) used reverse Polish notation for both automatic mode and programming. Modern Russian calculators MK-161[41] and MK-152,[42] designed and manufactured in Novosibirsk since 2007 and offered by Semico,[43] are backward compatible with them. Their extended architecture is also based on reverse Polish notation.

Other

Existing implementations using reverse Polish notation include:

-   Any stack-oriented programming language, such as:
    -   Forth
    -   Factor
    -   PostScript page description language[44][45]
    -   BibTeX
    -   Befunge
    -   Joy
    -   IPTSCRAE
    -   Lotus 1-2-3 and Lotus Symphony formulas[46][47]
    -   RPL (aka Reverse Polish Language) , a programming language for the Commodore PET around 1979/1981
    -   RPL (aka Reverse Polish Lisp), a programming language for Hewlett-Packard calculators between 1984 and 2015
    -   RPNL (Reverse Polish Notation Language)[48][49]
-   Hardware calculators:
    -   Some Hewlett-Packard science/engineering and business/finance calculators
    -   Semico calculators
    -   SwissMicros calculators
-   Software calculators:
    -   Mac OS X Calculator
    -   Several Apple iPhone applications e.g. "reverse polish notation calculator"
    -   Several Android applications e.g. "RealCalc"
    -   Several Windows 10 Mobile applications e.g. "RPN9"
    -   Unix system calculator program dc
    -   Emacs lisp library package calc
    -   Xorg calculator (xcalc)
    -   grpn[50] scientific/engineering calculator using the GIMP Toolkit (GTK+)
    -   F-Correlatives in MultiValue dictionary items
    -   RRDtool, a widely used tabulating and graphing software
    -   grdmath, a program for algebraic operations on NetCDF grids, part of Generic Mapping Tools (GMT) suite
    -   galculator,[51] a GTK desktop calculator
    -   Mouseless Stack-Calculator[52] scientific/engineering calculator including complex numbers.


See also

-   Calculator input methods
-   Factor (programming language)
-   FOCAL keystroke programming
-   Formula calculator
-   Forth (programming language)
-   Joy (programming language)
-   LIFO (computing)
-   Object–subject–verb
-   Polish notation
-   PostScript
-   Reverse Polish Lisp (RPL)
-   Stack machine
-   Subject–object–verb (SOV)


References


Further reading

-   -   -   (NB. The book's cover title contains a typographical error reading "APS Mark 55" instead of the correct "APF Mark 55".)


External links

-   -   -   -   -   Rosettacode.org providing many implementations in several programming languages.
-   http://rpn.codeplex.com/ Implementation of RPN with custom functions support and flexible list of operators.
-   https://xrjunque.nom.es/ConvertAlg2RPN_RPL.aspx Free online Algebraic expression to RPN Converter

Category:Calculators Category:Mathematical notation Category:Science and technology in Poland Category:Operators (programming)

[1]  (Reprinted by Garland Publishing in 1987. )

[2]

[3]

[4]

[5] "Charles L. Hamblin and his work" by Peter McBurney

[6]

[7]

[8]

[9]

[10]

[11]

[12]

[13] http://h20331.www2.hp.com/Hpsub/downloads/17b2pChain.pdf

[14]  A New Approach to the Design of a Digital Computer (1961)

[15] 1 The Burroughs B5000 Conference (1985) p. 49

[16]

[17] "Oral History: Burroughs B5000 Conference", OH 98. Oral history on 6 September 1985, conducted by Bernard A. Galler and Robert F. Rosin, sponsored by AFIPS and Burroughs Corporation, at Marina del Rey, California, archived by the Charles Babbage Institute, University of Minnesota, Minneapolis.

[18]

[19]

[20]

[21]

[22]

[23]

[24]

[25]

[26]

[27]

[28]

[29]

[30] HP Calculators

[31] http://h20331.www2.hp.com/hpsub/downloads/S07%20HP%20RPN%20Evolves%20V5b.pdf

[32] Radio-Electronics magazine, 1972

[33]

[34]  (NB. Shows a photo of the MITS 7400, but the text erroneously refers to the later algebraic 7440 model instead of the 7400A/B/C models.)

[35]

[36]

[37]

[38] http://www.wass.net/manuals/Commodore%20SR4921R.pdf

[39]

[40] Elektronika B3-21 page on RSkey.org

[41] Elektronika MK-161 page on RSkey.org

[42]

[43]

[44]  (NB. This book is informally called "blue book" due to its blue cover.)

[45]  (NB. This book is informally called "red book" due to its red cover.)

[46]

[47]

[48]  (NB. According to this book, a 4 KB compiler was available from Lifeboat Software for CP/M.)

[49]

[50]

[51]

[52]