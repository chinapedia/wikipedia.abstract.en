The COMPILER LANGUAGE WITH NO PRONOUNCEABLE ACRONYM, abbreviated INTERCAL, is an esoteric programming language that was created as a parody by Don Woods and James M. Lyon, two Princeton University students, in 1972. It satirizes aspects of the various programming languages at the time,[1] as well as the proliferation of proposed language constructs and notations in the 1960s.

There are two currently maintained versions of INTERCAL: C-INTERCAL, maintained by Eric S. Raymond,[2] and CLC-INTERCAL, maintained by Claudio Calvelli.[3]


History

According to the original manual by the authors,[4]

The original Princeton implementation used punched cards and the EBCDIC character set. To allow INTERCAL to run on computers using ASCII, substitutions for two characters had to be made: $ substituted for ¢ as the _mingle_ operator, "represent[ing] the increasing cost of software in relation to hardware", and ? was substituted for ⊻ as the unary exclusive-or operator to "correctly express the average person's reaction on first encountering exclusive-or".[5] In recent versions of C-INTERCAL, the older operators are supported as alternatives; INTERCAL programs may now be encoded in ASCII, Latin-1, or UTF-8.[6]


Details

INTERCAL was intended to be completely different from all other computer languages. Common operations in other languages have cryptic and redundant syntax in INTERCAL. From the INTERCAL Reference Manual:[7]

INTERCAL has many other features designed to make it even more aesthetically unpleasing to the programmer: it uses statements such as "READ OUT", "IGNORE", "FORGET", and modifiers such as "PLEASE". This last keyword provides two reasons for the program's rejection by the compiler: if "PLEASE" does not appear often enough, the program is considered insufficiently polite, and the error message says this; if too often, the program could be rejected as excessively polite. Although this feature existed in the original INTERCAL compiler, it was undocumented.[8]

Despite the language's intentionally obtuse and wordy syntax, INTERCAL is nevertheless Turing-complete: given enough memory, INTERCAL can solve any problem that a Universal Turing machine can solve. Most implementations of INTERCAL do this very slowly, however. A Sieve of Eratosthenes benchmark, computing all prime numbers less than 65536, was tested on a Sun SPARCstation 1. In C, it took less than half a second; the same program in INTERCAL took over seventeen hours.[9]


Documentation

The INTERCAL Reference Manual contains many paradoxical, nonsensical, or otherwise humorous instructions:

The manual also contains a "tonsil", as explained in this footnote: "4) Since all other reference manuals have Appendices, it was decided that the INTERCAL manual should contain some other type of removable organ."[10]

The INTERCAL manual gives unusual names to all non-alphanumeric ASCII characters: single and double quotes are "sparks" and "rabbit ears" respectively. (The exception is the ampersand: as the Jargon File states, "what could be sillier?") The assignment operator, represented as an equals sign (INTERCAL's "half mesh") in many other programming languages, is in INTERCAL a left-arrow, <-, made up of an "angle" and a "worm", obviously read as "gets".


Syntax

Input (using the WRITE IN instruction) and output (using the READ OUT instruction) do not use the usual formats; in INTERCAL-72, WRITE IN inputs a number written out as digits in English (such as SIX FIVE FIVE THREE FIVE), and READ OUT outputs it in "butchered" Roman numerals.[11] More recent versions have their own I/O systems.[12][13]

Comments can be achieved by using the inverted statement identifiers involving NOT or N'T; these cause lines to be initially ABSTAINed so that they have no effect.[14] (A line can be ABSTAINed from even if it doesn't have valid syntax; syntax errors happen at runtime, and only then when the line is un-ABSTAINed.)[15]

Data structures

INTERCAL-72 (the original version of INTERCAL) had only four data types: the 16-bit integer (represented with a ., called a "spot"), the 32-bit integer (:, a "twospot"), the array of 16-bit integers (,, a "tail"), and the array of 32-bit integers (;, a "hybrid"). There are 65535 available variables of each type, numbered from .1 to .65535 for 16-bit integers, for instance. However, each of these variables has its own stack on which it can be pushed and popped (STASHed and RETRIEVEd, in INTERCAL terminology), increasing the possible complexity of data structures.[16] More modern versions of INTERCAL have by and large kept the same data structures, with appropriate modifications; TriINTERCAL, which modifies the radix with which numbers are represented, can use a 10-trit type rather than a 16-bit type,[17] and CLC-INTERCAL implements many of its own data structures, such as "classes and lectures", by making the basic data types store more information rather than adding new types.[18] Arrays are dimensioned by assigning to them as if they were a scalar variable. Constants can also be used, and are represented by a # ("mesh") followed by the constant itself, written as a decimal number; only integer constants from 0 to 65535 are supported.[19]

Operators

There are only five operators in INTERCAL-72. Implementations vary in which characters represent which operation, and many accept more than one character, so more than one possibility is given for many of the operators.

  Operator              INTERCAL-72 characters   C-INTERCAL characters   CLC-INTERCAL characters
  --------------------- ------------------------ ----------------------- -------------------------
  INTERLEAVE / MINGLE   c backspace /            ¢, $, c backspace /     ¢
  SELECT                ~                        ~                       ~
  AND                   &                        &                       &
  OR                    V                        V                       V
  XOR                   V backspace -            V backspace -, ?, ∀     V backspace -, ¥

  : INTERCAL operators[20][21][22]

Contrary to most other languages, AND, OR, and XOR are unary operators, which work on consecutive bits of their argument; the most significant bit of the result is the operator applied to the least significant and most significant bits of the input, the second-most-significant bit of the result is the operator applied to the most and second-most significant bits, the third-most-significant bit of the result is the operator applied to the second-most and third-most bits, and so on. The operator is placed between the punctuation mark specifying a variable name or constant and the number that specifies which variable it is, or just inside grouping marks (i.e. one character later than it would be in programming languages like C.) SELECT and INTERLEAVE (which is also known as MINGLE) are infix binary operators; SELECT takes the bits of its first operand that correspond to "1" bits of its second operand and removes the bits that correspond to "0" bits, shifting towards the least significant bit and padding with zeroes (so 51 (110011 in binary) SELECT 21 (10101 in binary) is 5 (101 in binary)); MINGLE alternates bits from its first and second operands (in such a way that the least significant bit of its second operand is the least significant bit of the result). There is no operator precedence; grouping marks must be used to disambiguate the precedence where it would otherwise be ambiguous (the grouping marks available are ' ("spark"), which matches another spark, and " ("rabbit ears"), which matches another rabbit ears; the programmer is responsible for using these in such a way that they make the expression unambiguous).[23]

Control structures

INTERCAL statements all start with a "statement identifier"; in INTERCAL-72, this can be DO, PLEASE, or PLEASE DO, all of which mean the same to the program (but using one of these too heavily causes the program to be rejected, an undocumented feature in INTERCAL-72 that was mentioned in the C-INTERCAL manual),[24] or an inverted form (with NOT or N'T appended to the identifier).[25] Backtracking INTERCAL, a modern variant, also allows variants using MAYBE (possibly combined with PLEASE or DO) as a statement identifier, which introduces a choice-point.[26] Before the identifier, an optional line number (an integer enclosed in parentheses) can be given; after the identifier, a percent chance of the line executing can be given in the format %50, which defaults to 100%.[27]

In INTERCAL-72, the main control structures are NEXT, RESUME, and FORGET. DO (_line_) NEXT branches to the line specified, remembering the next line that would be executed if it weren't for the NEXT on a call stack (other identifiers than DO can be used on any statement, DO is given as an example); DO FORGET _expression_ removes _expression_ entries from the top of the call stack (this is useful to avoid the error that otherwise happens when there are more than 80 entries), and DO RESUME _expression_ removes _expression_ entries from the call stack and jumps to the last line remembered.[28]

C-INTERCAL also provides the COME FROM instruction, written DO COME FROM (_line_); CLC-INTERCAL and the most recent C-INTERCAL versions also provide computed COME FROM (DO COME FROM _expression_) and NEXT FROM, which is like COME FROM but also saves a return address on the NEXT STACK.[29]

Alternative ways to affect program flow, originally available in INTERCAL-72, are to use the IGNORE and REMEMBER instructions on variables (which cause writes to the variable to be silently ignored and to take effect again, so that instructions can be disabled by causing them to have no effect), and the ABSTAIN and REINSTATE instructions on lines or on types of statement, causing the lines to have no effect or to have an effect again respectively.[30]

Hello, world

The traditional "Hello, world!" program demonstrates how different INTERCAL is from standard programming languages. In C, it could read as follows:

    #include <stdio.h>

    int main(void) {
        printf("Hello, world!\n");

        return 0;
    }

The equivalent program in C-INTERCAL is longer and harder to read:

    DO ,1 <- #13
    PLEASE DO ,1 SUB #1 <- #238
    DO ,1 SUB #2 <- #108
    DO ,1 SUB #3 <- #112
    DO ,1 SUB #4 <- #0
    DO ,1 SUB #5 <- #64
    DO ,1 SUB #6 <- #194
    DO ,1 SUB #7 <- #48
    PLEASE DO ,1 SUB #8 <- #22
    DO ,1 SUB #9 <- #248
    DO ,1 SUB #10 <- #168
    DO ,1 SUB #11 <- #24
    DO ,1 SUB #12 <- #16
    DO ,1 SUB #13 <- #162
    PLEASE READ OUT ,1
    PLEASE GIVE UP


Dialects

The original Woods–Lyon INTERCAL was very limited in its input/output capabilities: the only acceptable input were numbers with the digits spelled out, and the only output was an extended version of Roman numerals.

The C-INTERCAL reimplementation, being available on the Internet, has made the language more popular with devotees of esoteric programming languages.[31] The C-INTERCAL dialect has a few differences from original INTERCAL and introduced a few new features, such as a COME FROM statement and a means of doing text I/O based on the Turing Text Model.[32]

The authors of C-INTERCAL also created the TriINTERCAL variant, based on the Ternary numeral system and generalizing INTERCAL's set of operators.[33]

A more recent variant is Threaded Intercal, which extends the functionality of COME FROM to support multithreading.[34]

In early 2017 a .NET Implementation targeting the .NET Framework appeared on GitHub. This implementation supports the creation of standalone binary libraries and interop with other programming languages. [35]


Impact and discussion

In the article "A Box, Darkly: Obfuscation, Weird Languages, and Code Aesthetics",[36] INTERCAL is described under the heading "Abandon all sanity, ye who enter here: INTERCAL". The compiler and commenting strategy are among the "weird" features described:

In "Technomasochism",[37] Lev Bratishenko characterizes the INTERCAL compiler as a dominatrix:


References


External links

-   Official website of C-INTERCAL
-   INTERCAL Resources on the Web, including several implementations
-   Computerworld Interview with Don Woods on INTERCAL
-   Paper on Abstraction and Modularity in INTERCAL

Category:Esoteric programming languages Category:Programming languages created in 1972 Category:Parodies

[1]

[2]

[3]

[4]

[5]

[6]

[7]

[8]

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

[30]

[31]

[32]

[33]

[34]

[35]

[36]

[37]