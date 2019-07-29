ATLAS AUTOCODE (AA)[1][2] was a programming language developed around 1965 at Manchester University. A variant of the ALGOL programming language, it was developed by Tony Brooker and Derrick Morris for the Atlas Computer.

("Autocode" was basically an early term for "programming language"; different autocodes could be totally different).


Features

It removed some Algol features such as "passing parameters by name" (which in Algol 60 means passing the address of a short subroutine to recalculate the parameter each time it was mentioned).

It featured explicitly typed variables, subroutines, and functions.

The AA compiler generated range-checking for array accesses, and allowed an array to have dimensions that were determined at run-time (i.e. you could declare an array as integer array Thing (i:j), where i and j were calculated values).

Machine code could be included within the high-level AA routines either to make an inner loop more efficient or to effect some operation which could not easily be done otherwise.[3]

Atlas Autocode included a complex data type[4] to represent complex numbers, partly because of pressure from the electrical engineering department, as complex numbers are used to represent the behavior of alternating current. The square root of -1 was represented by i, which was treated as a fixed complex constant = _i_.

The complex data type was dropped when Atlas Autocode later evolved into the Edinburgh IMP programming language. (Imp was an extension of AA and was used to write the EMAS operating system.)

Atlas Autocode's second-greatest claim to fame (after being the progenitor of Imp and EMAS) was that it had many of the features of the original "Compiler Compiler". A variant of the AA compiler included run-time support for a top-down recursive descent parser. The style of parser used in the Compiler Compiler was in use continuously at Edinburgh from the 60's until almost the turn of the millennium.

Other Autocodes were developed for the Titan computer, a prototype Atlas 2 at Cambridge, and the Ferranti Mercury.


Syntax

Atlas Autocode's syntax was largely similar to Algol, though it was influenced by the output device which the author had available, a Friden Flexowriter. Consequently, it allowed symbols like "½" for ".5" and the superscript ² for "to the power of 2". The Flexowriter supported overstriking and therefore AA did as well — up to three characters could be overstruck as a single symbol. For example, the character set had no "↑" symbol, so exponentiation was an overstrike of "|" and "*". The aforementioned underlining of keywords could also be done using overstriking. The language is described in detail in the Atlas Autocode Reference Manual.

Other Flexowriter characters that were found a use in Atlas Autocode were: α in floating-point numbers, _e.g._, 3.56α-7 for modern 3.56e-7 ; β to mean "the second half of a 48-bit Atlas memory word"; π for the mathematical constant pi.

When AA was ported to the English Electric KDF9 computer, the character set was changed to ISO and that compiler has been recovered from an old paper tape by the Edinburgh Computer History Project and is available online, as is a high-quality scan of the original Edinburgh version of the Atlas Autocode manual.[5]

Keywords in AA were distinguishable from other text by being underlined, which was implemented via overstrike in the Flexowriter (compare to bold in Algol). There were also two stropping regimes. First, there was an "uppercasedelimiters" mode where all uppercase letters (outside strings) were treated as underlined lowercase. Second, in some versions (but not in the original Atlas version), it was possible to strop keywords by placing a "%" sign in front of them, for example the keyword endofprogramme could be typed as %end %of %programme or %endofprogramme. This significantly reduced typing, due to only needing one character, rather than overstriking the whole keyword. As in Algol, there were no reserved words in the language as keywords were identified by underlining (or stropping), not by recognising reserved character sequences. In the statement if token=if then result = token, there is both a keyword if and a variable named if.

As in Algol, AA allowed spaces in variable names, such as integer previous value. Spaces were not significant and were removed before parsing in a trivial pre-lexing stage called "line reconstruction". What the compiler would see in the above example would be "iftoken=ifthenresult=token". Spaces were possible due partly to keywords being distinguished in other ways, and partly because the source was processed by a scannerless parser, without a separate lexing phase, which allowed the lexical syntax to be context-sensitive.

The syntax for expressions let the multiplication operator be omitted, e.g. 3a was treated as 3*a, and a(i+j) was treated as a*(i+j) if a was not an array. In ambiguous usages, the longest possible name was taken (maximal munch), for example ab was not treated as a*b, whether or not a and b had been declared.

In the original Atlas Autocode for the Atlas computer, Atlas machine code instructions could be interpolated between the Atlas Autocode statements.


References


External links

-   Atlas Autocode Reference Manual
-   Programming In Atlas Autocode - Edinburgh University Computer Unit Report #1 (1965). (Original scan)

Category:Ferranti Category:History of computing in the United Kingdom Category:Structured programming languages

[1] R.A. Brooker and J.S. Rohl, _Atlas Autocode Reference Manual_, University of Manchester Computer Science Department, 1965. (Original Scans)

[2] P.D. Schofoeld and M.R. Osbourne, _Programming in Atlas Autocode_, Computer Unit Report No.1, University of Edinburgh, 1965. (Original scan)

[3]

[4]

[5]