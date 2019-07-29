ALGOL (; short for "ALGORITHMIC LANGUAGE")[1] is a family of imperative computer programming languages, originally developed in the mid-1950s, which greatly influenced many other languages and was the standard method for algorithm description used by the ACM in textbooks and academic sources for more than thirty years.[2]

In the sense that the syntax of most modern languages is "Algol-like",[3] it was arguably the most influential of the four high-level programming languages among which it was roughly contemporary: FORTRAN, Lisp, and COBOL.[4] It was designed to avoid some of the perceived problems with FORTRAN and eventually gave rise to many other programming languages, including PL/I, Simula, BCPL, B, Pascal, and C.

ALGOL introduced code blocks and the begin...end pairs for delimiting them. It was also the first language implementing nested function definitions with lexical scope. Moreover, it was the first programming language which gave detailed attention to formal language definition and through the _Algol 60 Report_ introduced Backus–Naur form, a principal formal grammar notation for language design.

There were three major specifications, named after the year they were first published:

-   ALGOL 58 – originally proposed to be called _IAL_, for _International Algebraic Language_.
-   ALGOL 60 – first implemented as _X1 ALGOL 60_ in mid-1960. Revised 1963.[5][6]
-   ALGOL 68 – introduced new elements including flexible arrays, slices, parallelism, operator identification. Revised 1973.[7]

ALGOL 68 is substantially different from ALGOL 60 and was not well received, so that in general "Algol" means ALGOL 60 and dialects thereof.


Important implementations

The International Algebraic Language (IAL), or ALGOL 58, was extremely influential and generally considered the ancestor of most of the modern programming languages (the so-called Algol-like languages). Additionally, ALGOL OBJECT CODE was a simple, compact, and stack-based instruction set architecture commonly used in teaching compiler construction and other high order languages (of which Algol is generally considered the first).


History

ALGOL was developed jointly by a committee of European and American computer scientists in a meeting in 1958 at ETH Zurich (cf. ALGOL 58). It specified three different syntaxes: a reference syntax, a publication syntax, and an implementation syntax. The different syntaxes permitted it to use different keyword names and conventions for decimal points (commas vs periods) for different languages.

ALGOL was used mostly by research computer scientists in the United States and in Europe. Its use in commercial applications was hindered by the absence of standard input/output facilities in its description and the lack of interest in the language by large computer vendors other than Burroughs Corporation. ALGOL 60 did however become the standard for the publication of algorithms and had a profound effect on future language development.

John Backus developed the Backus normal form method of describing programming languages specifically for ALGOL 58. It was revised and expanded by Peter Naur for ALGOL 60, and at Donald Knuth's suggestion renamed Backus–Naur form.[8]

Peter Naur: "As editor of the ALGOL Bulletin I was drawn into the international discussions of the language and was selected to be member of the European language design group in November 1959. In this capacity I was the editor of the ALGOL 60 report, produced as the result of the ALGOL 60 meeting in Paris in January 1960."[9]

The following people attended the meeting in Paris (from 1 to 16 January):

-   Friedrich L. Bauer, Peter Naur, Heinz Rutishauser, Klaus Samelson, Bernard Vauquois, Adriaan van Wijngaarden, and Michael Woodger (from Europe)
-   John W. Backus, Julien Green, Charles Katz, John McCarthy, Alan J. Perlis, and Joseph Henry Wegstein (from the USA).

Alan Perlis gave a vivid description of the meeting: "The meetings were exhausting, interminable, and exhilarating. One became aggravated when one's good ideas were discarded along with the bad ones of others. Nevertheless, diligence persisted during the entire period. The chemistry of the 13 was excellent."

ALGOL 60 inspired many languages that followed it. Tony Hoare remarked: "Here is a language so far ahead of its time that it was not only an improvement on its predecessors but also on nearly all its successors."[10] The Scheme programming language, a variant of Lisp that adopted the block structure and lexical scope of ALGOL, also adopted the wording "Revised Report on the Algorithmic Language Scheme" for its standards documents in homage to ALGOL.[11]

Algol and programming language research

As Peter Landin noted, the language Algol was the first language to combine seamlessly imperative effects with the (call-by-name) lambda calculus. Perhaps the most elegant formulation of the language is due to John C. Reynolds, and it best exhibits its syntactic and semantic purity. Reynolds's idealized Algol also made a convincing methodological argument regarding the suitability of local effects in the context of call-by-name languages, to be contrasted with the global effects used by call-by-value languages such as ML. The conceptual integrity of the language made it one of the main objects of semantic research, along with PCF and ML.[12]

IAL implementations timeline

To date there have been at least 70 augmentations, extensions, derivations and sublanguages of Algol 60.[13]

+----------------------+-----------------+---------------------------------------------------------------------------------------------------------------------------------+--------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------+
| |Name                | |Year           | |Author                                                                                                                         | |Country     | |Description                                                                                                                                                     | |Target CPU                                                    |
+======================+=================+=================================================================================================================================+==============+==================================================================================================================================================================+================================================================+
| ZMMD-implementation  | 1958            | Friedrich L. Bauer, Heinz Rutishauser, Klaus Samelson, Hermann Bottenbruch                                                      | Germany      | implementation of ALGOL 58                                                                                                                                       | Z22                                                            |
|                      |                 |                                                                                                                                 |              |                                                                                                                                                                  | (later Zuse's Z23 was delivered with an Algol 60 compiler)[14] |
+----------------------+-----------------+---------------------------------------------------------------------------------------------------------------------------------+--------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------+
| X1 ALGOL 60          | August 1960[15] | Edsger W. Dijkstra and Jaap A. Zonneveld                                                                                        | Netherlands  | First implementation of ALGOL 60[16]                                                                                                                             | Electrologica X1                                               |
+----------------------+-----------------+---------------------------------------------------------------------------------------------------------------------------------+--------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------+
| Elliott ALGOL        | 1960s           | C. A. R. Hoare                                                                                                                  | UK           | Subject of the 1980 Turing lecture[17]                                                                                                                           | Elliott 803, Elliott 503, Elliott 4100 series                  |
+----------------------+-----------------+---------------------------------------------------------------------------------------------------------------------------------+--------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------+
| JOVIAL               | 1960            | Jules Schwartz                                                                                                                  | USA          | A DOD HOL prior to Ada                                                                                                                                           | Various (see article)                                          |
+----------------------+-----------------+---------------------------------------------------------------------------------------------------------------------------------+--------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------+
| Burroughs Algol      | 1961            | Burroughs Corporation (with participation by Hoare, Dijkstra, and others)                                                       | USA          | Basis of the Burroughs (and now Unisys MCP based) computers                                                                                                      | Burroughs large systems                                        |
| (Several variants)   |                 |                                                                                                                                 |              |                                                                                                                                                                  | and their midrange as well.                                    |
+----------------------+-----------------+---------------------------------------------------------------------------------------------------------------------------------+--------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------+
| Case ALGOL           | 1961            | Case Institute of Technology[18]                                                                                                | USA          | Simula was originally contracted as a simulation extension of the Case ALGOL                                                                                     | UNIVAC 1107                                                    |
+----------------------+-----------------+---------------------------------------------------------------------------------------------------------------------------------+--------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------+
| GOGOL                | 1961            | William M. McKeeman                                                                                                             | USA          | For ODIN time-sharing system[19]                                                                                                                                 | PDP-1                                                          |
+----------------------+-----------------+---------------------------------------------------------------------------------------------------------------------------------+--------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------+
| RegneCentralen ALGOL | 1961            | Peter Naur, Jørn Jensen                                                                                                         | Denmark      | Implementation of full Algol 60                                                                                                                                  | DASK at Regnecentralen                                         |
+----------------------+-----------------+---------------------------------------------------------------------------------------------------------------------------------+--------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------+
| Dartmouth ALGOL 30   | 1962            | Thomas Eugene Kurtz et al.                                                                                                      | USA          |                                                                                                                                                                  | LGP-30                                                         |
+----------------------+-----------------+---------------------------------------------------------------------------------------------------------------------------------+--------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------+
| USS 90 Algol         | 1962            | L. Petrone                                                                                                                      | Italy        |                                                                                                                                                                  |                                                                |
+----------------------+-----------------+---------------------------------------------------------------------------------------------------------------------------------+--------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------+
| Algol Translator     | 1962            | G. van der Mey and W.L. van der Poel                                                                                            | Netherlands  | Staatsbedrijf der Posterijen, Telegrafie en Telefonie                                                                                                            | ZEBRA                                                          |
+----------------------+-----------------+---------------------------------------------------------------------------------------------------------------------------------+--------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------+
| Kidsgrove Algol      | 1963            | F. G. Duncan                                                                                                                    | UK           |                                                                                                                                                                  | English Electric Company KDF9                                  |
+----------------------+-----------------+---------------------------------------------------------------------------------------------------------------------------------+--------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------+
| VALGOL               | 1963            | Val Schorre                                                                                                                     | USA          | A test of the META II compiler compiler                                                                                                                          |                                                                |
+----------------------+-----------------+---------------------------------------------------------------------------------------------------------------------------------+--------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------+
| Whetstone            | 1964            | Brian Randell and L. J. Russell                                                                                                 | UK           | Atomic Power Division of English Electric Company. Precursor to Ferranti Pegasus, National Physical Laboratories ACE and English Electric DEUCE implementations. | English Electric Company KDF9                                  |
+----------------------+-----------------+---------------------------------------------------------------------------------------------------------------------------------+--------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------+
| NU ALGOL             | 1965            |                                                                                                                                 | Norway       |                                                                                                                                                                  | UNIVAC                                                         |
+----------------------+-----------------+---------------------------------------------------------------------------------------------------------------------------------+--------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------+
| ALGEK                | 1965            |                                                                                                                                 | USSR         | АЛГЭК, based on ALGOL-60 and COBOL support, for economical tasks                                                                                                 | Minsk-22                                                       |
+----------------------+-----------------+---------------------------------------------------------------------------------------------------------------------------------+--------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------+
| ALGOL W              | 1966            | Niklaus Wirth                                                                                                                   | USA          | Proposed successor to ALGOL 60                                                                                                                                   | IBM System/360                                                 |
+----------------------+-----------------+---------------------------------------------------------------------------------------------------------------------------------+--------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------+
| MALGOL               | 1966            | publ. A. Viil, M Kotli & M. Rakhendi,                                                                                           | Estonian SSR |                                                                                                                                                                  | Minsk-22                                                       |
+----------------------+-----------------+---------------------------------------------------------------------------------------------------------------------------------+--------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------+
| ALGAMS               | 1967            | GAMS group (ГАМС, группа автоматизации программирования для машин среднего класса), cooperation of Comecon Academies of Science | Comecon      |                                                                                                                                                                  | Minsk-22, later ES EVM, BESM                                   |
+----------------------+-----------------+---------------------------------------------------------------------------------------------------------------------------------+--------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------+
| ALGOL/ZAM            | 1967            |                                                                                                                                 | Poland       |                                                                                                                                                                  | Polish ZAM computer                                            |
+----------------------+-----------------+---------------------------------------------------------------------------------------------------------------------------------+--------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------+
| Simula 67            | 1967            | Ole-Johan Dahl and Kristen Nygaard                                                                                              | Norway       | Algol 60 with classes                                                                                                                                            | UNIVAC 1107                                                    |
+----------------------+-----------------+---------------------------------------------------------------------------------------------------------------------------------+--------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------+
| Chinese Algol        | 1972            |                                                                                                                                 | China        | Chinese characters, expressed via the Symbol system                                                                                                              |                                                                |
+----------------------+-----------------+---------------------------------------------------------------------------------------------------------------------------------+--------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------+
| DG/L                 | 1972            |                                                                                                                                 | USA          |                                                                                                                                                                  | DG Eclipse family of Computers                                 |
+----------------------+-----------------+---------------------------------------------------------------------------------------------------------------------------------+--------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------+
| S-algol              | 1979            | Ron Morrison                                                                                                                    | UK           | Addition of orthogonal datatypes with intended use as a teaching language                                                                                        | PDP-11 with a subsequent implementation on the Java VM         |
+----------------------+-----------------+---------------------------------------------------------------------------------------------------------------------------------+--------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------+

The Burroughs dialects included special Bootstrapping dialects such as ESPOL and NEWP. The latter is still used for Unisys MCP system software.


Properties

ALGOL 60 as officially defined had no I/O facilities; implementations defined their own in ways that were rarely compatible with each other. In contrast, ALGOL 68 offered an extensive library of _transput_ (input/output) facilities.

ALGOL 60 allowed for two evaluation strategies for parameter passing: the common call-by-value, and call-by-name. Call-by-name has certain effects in contrast to call-by-reference. For example, without specifying the parameters as _value_ or _reference_, it is impossible to develop a procedure that will swap the values of two parameters if the actual parameters that are passed in are an integer variable and an array that is indexed by that same integer variable.[20] Think of passing a pointer to swap(i, A[i]) in to a function. Now that every time swap is referenced, it is reevaluated. Say i := 1 and A[i] := 2, so every time swap is referenced it'll return the other combination of the values ([1,2], [2,1], [1,2] and so on). A similar situation occurs with a random function passed as actual argument.

Call-by-name is known by many compiler designers for the interesting "thunks" that are used to implement it. Donald Knuth devised the "man or boy test" to separate compilers that correctly implemented "recursion and non-local references." This test contains an example of call-by-name.

ALGOL 68 was defined using a two-level grammar formalism invented by Adriaan van Wijngaarden and which bears his name. Van Wijngaarden grammars use a context-free grammar to generate an infinite set of productions that will recognize a particular ALGOL 68 program; notably, they are able to express the kind of requirements that in many other programming language standards are labelled "semantics" and have to be expressed in ambiguity-prone natural language prose, and then implemented in compilers as _ad hoc_ code attached to the formal language parser.


Examples and portability issues

Code sample comparisons

ALGOL 60

(The way the bold text has to be written depends on the implementation, e.g. 'INTEGER' -- quotation marks included -- for INTEGER. This is known as stropping.)

procedure Absmax(a) Size:(n, m) Result:(y) Subscripts:(i, k);
    value n, m; array a; integer n, m, i, k; real y;
comment The absolute greatest element of the matrix a, of size n by m
    is transferred to y, and the subscripts of this element to i and k;
begin
    integer p, q;
    y := 0; i := k := 1;
    for p := 1 step 1 until n do
        for q := 1 step 1 until m do
            if abs(a[p, q]) > y then
                begin y := abs(a[p, q]);
                    i := p; k := q
                end
end Absmax

Here is an example of how to produce a table using Elliott 803 ALGOL.[21]

 FLOATING POINT ALGOL TEST'
 BEGIN REAL A,B,C,D'
  
 READ D'
  
 FOR A:= 0.0 STEP D UNTIL 6.3 DO
 BEGIN
   PRINT PUNCH(3),££L??'
   B := SIN(A)'
   C := COS(A)'
   PRINT PUNCH(3),SAMELINE,ALIGNED(1,6),A,B,C'
 END'
 END'

PUNCH(3) sends output to the teleprinter rather than the tape punch.
SAMELINE suppresses the carriage return + line feed normally printed between arguments.
ALIGNED(1,6) controls the format of the output with 1 digit before and 6 after the decimal point.

ALGOL 68

The following code samples are ALGOL 68 versions of the above ALGOL 60 code samples.

ALGOL 68 implementations used ALGOL 60's approaches to stropping. In ALGOL 68's case tokens with the BOLD typeface are reserved words, types (MODEs) or operators.

proc abs max = ([,]real a, ref real y, ref int i, k)real:
comment The absolute greatest element of the matrix a, of size ⌈a by 2⌈a
is transferred to y, and the subscripts of this element to i and k; comment
begin
   real y := 0; i := ⌊a; k := 2⌊a;
   for p from ⌊a to ⌈a do
     for q from 2⌊a to 2⌈a do
       if abs a[p, q] > y then
           y := abs a[p, q];
           i := p; k := q
       fi
     od
   od;
   y
end # abs max #

Note: lower (⌊) and upper (⌈) bounds of an array, and array slicing, are directly available to the programmer.

floating point algol68 test:
(
  real a,b,c,d;
   
  # _printf_ - sends output to the file _stand out_. #
  # _printf($p$);_ – selects a _new page_ #
  printf(($pg$,"Enter d:"));  
  read(d);
   
  for step from 0 while a:=step*d; a <= 2*pi do
    printf($l$);  # _$l$_ - selects a _new line_. #
    b := sin(a);
    c := cos(a);
    printf(($z-d.6d$,a,b,c))  # formats output with 1 digit before and 6 after the decimal point. #
  od
)

Timeline: Hello world

The variations and lack of portability of the programs from one implementation to another is easily demonstrated by the classic hello world program.

ALGOL 58 (IAL)

ALGOL 58 had no I/O facilities.

ALGOL 60 family

Since ALGOL 60 had no I/O facilities, there is no portable hello world program in ALGOL.

BEGIN
  FILE F(KIND=REMOTE);
  EBCDIC ARRAY E[0:11];
  REPLACE E BY "HELLO WORLD!";
  WRITE(F, *, E);
END.

A simpler program using an inline format:

BEGIN
  FILE F(KIND=REMOTE);
  WRITE(F, <"HELLO WORLD!">);
END.

An even simpler program using the Display statement:

BEGIN DISPLAY("HELLO WORLD!") END.

An alternative example, using Elliott Algol I/O is as follows. Elliott Algol used different characters for "open-string-quote" and "close-string-quote":

 program HiFolks;
 begin
    print ‘Hello world’;
 end;

Here is a version for the Elliott 803 Algol (A104) The standard Elliott 803 used 5 hole paper tape and thus only had upper case. The code lacked any quote characters so £ (UK Pound Sign) was used for open quote and ? (Question Mark) for close quote. Special sequences were placed in double quotes (e.g. ££L?? produced a new line on the teleprinter).

  HIFOLKS'
  BEGIN
     PRINT £HELLO WORLD£L??'
  END'

The ICT 1900 series Algol I/O version allowed input from paper tape or punched card. Paper tape 'full' mode allowed lower case. Output was to a line printer. The open and close quote characters were represented using '(' and ')' and spaces by %.[22]

  'BEGIN'
     WRITE TEXT('('HELLO%WORLD')');
  'END'

ALGOL 68

ALGOL 68 code was published with reserved words typically in lowercase, but bolded or underlined.

begin
  printf(($gl$,"Hello, world!"))
end

In the language of the "Algol 68 Report" the input/output facilities were collectively called the "Transput".

Timeline of ALGOL special characters

The ALGOLs were conceived at a time when character sets were diverse and evolving rapidly; also, the ALGOLs were defined so that only _uppercase_ letters were required.

1960: IFIP – The Algol 60 language and report included several mathematical symbols which are available on modern computers and operating systems, but, unfortunately, were not supported on most computing systems at the time. For instance: ×, ÷, ≤, ≥, ≠, ¬, ∨, ∧, ⊂, ≡, ␣ and ⏨.

1961 September: ASCII – The ASCII character set, then in an early stage of development, had the \ (Back slash) character added to it in order to support ALGOL's boolean operators /\ and \/.[23]

1962: ALCOR – This character set included the unusual "᛭" runic cross[24] character for multiplication and the "⏨" Decimal Exponent Symbol[25] for floating point notation.[26][27][28]

1964: GOST – The 1964 Soviet standard GOST 10859 allowed the encoding of 4-bit, 5-bit, 6-bit and 7-bit characters in ALGOL.[29]

1968: The "Algol 68 Report" – used existing ALGOL characters, and further adopted →, ↓, ↑, □, ⌊, ⌈, ⎩, ⎧, ○, ⊥ and ¢ characters which can be found on the IBM 2741 keyboard with "golf-ball" print heads inserted (such as the APL golfball). These became available in the mid-1960s while ALGOL 68 was being drafted. The report was translated into Russian, German, French and Bulgarian, and allowed programming in languages with larger character sets, e.g. Cyrillic alphabet of the Soviet BESM-4. All ALGOL's characters are also part of the Unicode standard and most of them are available in several popular fonts.

2009 October: Unicode – The "⏨" (Decimal Exponent Symbol) for floating point notation was added to Unicode 5.2 for backward compatibility with historic Buran (spacecraft) ALGOL software.[30]


See also


References


Further reading

-   F.L. Bauer, R. Baumann, M. Feliciano, K. Samelson, _Introduction to Algol_. Prentice Hall, 1964,
-   Brian Randell and L. J. Russell, _ALGOL 60 Implementation: The Translation and Use of ALGOL 60 Programs on a Computer_. Academic Press, 1964. The design of the WHETSTONE COMPILER. One of the early published descriptions of implementing a compiler. See the related papers: Whetstone Algol Revisited, and The Whetstone KDF9 Algol Translator by Brian Randell
-   -   Revised Report on the Algorithmic Language Algol 60 by Peter Naur, et al. ALGOL definition
-   "The European Side of the Last Phase of the Development of ALGOL 60" by Peter Naur


External links

-   History of ALGOL at the Computer History Museum
-   Web enabled ALGOL-F compiler for small experiments

Category:ALGOL 60 dialect Algol_programming_language_family Category:Articles with example ALGOL 60 code Category:Computer-related introductions in 1958 Category:Procedural programming languages Category:Programming languages created in 1958 Category:Structured programming languages Category:Systems programming languages

[1] The name of this language family is sometimes given in mixed case (_Algol 60_ ), and sometimes in all uppercase (_ALGOL68_ ). For simplicity this article uses _ALGOL_.

[2] _Collected Algorithms of the ACM_ Compressed archives of the algorithms. ACM.

[3]

[4] "The ALGOL Programming Language" , University of Michigan-Dearborn

[5]

[6]

[7]

[8]

[9] ACM Award Citation / Peter Naur , 2005

[10] "Hints on Programming Language Design" , C.A.R. Hoare, December 1973. Page 27. (This statement is sometimes erroneously attributed to Edsger W. Dijkstra, also involved in implementing the first ALGOL 60 compiler.)

[11]

[12] Peter O'Hearn and Robert D. Tennent. 1996. Algol-Like Languages. Birkhauser Boston Inc., Cambridge, MA, USA.

[13]

[14] Computer Museum History , Historical Zuse-Computer Z23, restored by the Konrad Zuse Schule in Hünfeld, for the Computer Museum History Center in Mountain View (California) USA

[15]

[16]

[17]

[18]

[19]

[20] , Section 7.5, and references therein

[21] "803 ALGOL" , the manual for Elliott 803 ALGOL

[22]

[23] How ASCII Got Its Backslash , Bob Bemer

[24] iron/runic cross

[25] Decimal Exponent Symbol

[26]

[27]

[28]

[29]

[30]