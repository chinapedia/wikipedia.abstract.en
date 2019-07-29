SIMULA is the name of two simulation programming languages, Simula I and Simula 67, developed in the 1960s at the Norwegian Computing Center in Oslo, by Ole-Johan Dahl and Kristen Nygaard. Syntactically, it is a fairly faithful superset of ALGOL 60,[1] also influenced by the design of Simscript.[2]

Simula 67 introduced objects,[3] classes,[4] inheritance and subclasses,[5] virtual procedures,[6] coroutines,[7] and discrete event simulation,[8] and features garbage collection.[9] Also other forms of subtyping (besides inheriting subclasses) were introduced in Simula derivatives.

Simula is considered the first object-oriented programming language. As its name suggests, Simula was designed for doing simulations, and the needs of that domain provided the framework for many of the features of object-oriented languages today.

Simula has been used in a wide range of applications such as simulating VLSI designs, process modeling, protocols, algorithms, and other applications such as typesetting, computer graphics, and education. The influence of Simula is often understated, and Simula-type objects are reimplemented in C++, Object Pascal, Java, C# and several other languages. Computer scientists such as Bjarne Stroustrup, creator of C++, and James Gosling, creator of Java, have acknowledged Simula as a major influence.[10]


History

The following account is based on Jan Rune Holmevik's historical essay.[11][12]

Kristen Nygaard started writing computer simulation programs in 1957. Nygaard saw a need for a better way to describe the heterogeneity and the operation of a system. To go further with his ideas on a formal computer language for describing a system, Nygaard realized that he needed someone with more computer programming skills than he had. Ole-Johan Dahl joined him on his work January 1962. The decision of linking the language up to ALGOL 60 was made shortly after. By May 1962 the main concepts for a simulation language were set. "SIMULA I" was born, a special purpose programming language for simulating discrete event systems.

Kristen Nygaard was invited to visit the Eckert–Mauchly Computer Corporation late May 1962 in connection with the marketing of their new UNIVAC 1107 computer. At that visit Nygaard presented the ideas of Simula to Robert Bemer, the director of systems programming at Univac. Bemer was a sworn ALGOL fan and found the Simula project compelling. Bemer was also chairing a session at the second international conference on information processing hosted by IFIP. He invited Nygaard, who presented the paper "SIMULA -- An Extension of ALGOL to the Description of Discrete-Event Networks".

The Norwegian Computing Center got a UNIVAC 1107 August 1963 at a considerable discount, on which Dahl implemented the SIMULA I under contract with UNIVAC. The implementation was based on the UNIVAC ALGOL 60 compiler. SIMULA I was fully operational on the UNIVAC 1107 by January 1965. In the following couple of years Dahl and Nygaard spent a lot of time teaching Simula. Simula spread to several countries around the world and SIMULA I was later implemented on Burroughs B5500 computers and the Russian URAL-16 computer.

In 1966 C. A. R. Hoare introduced the concept of record class construct, which Dahl and Nygaard extended with the concept of prefixing and other features to meet their requirements for a generalized process concept. Dahl and Nygaard presented their paper on Class and Subclass declarations at the IFIP Working Conference on simulation languages in Oslo, May 1967. This paper became the first formal definition of Simula 67. In June 1967 a conference was held to standardize the language and initiate a number of implementations. Dahl proposed to unify the type and the class concept. This led to serious discussions, and the proposal was rejected by the board. SIMULA 67 was formally standardized on the first meeting of the SIMULA Standards Group (SSG) in February 1968.

Simula was influential in the development of Smalltalk and later object-oriented programming languages. It also helped inspire the actor model of concurrent computation although Simula only supports coroutines and not true concurrency.

In the late sixties and the early seventies there were four main implementations of Simula:

-   UNIVAC 1100 by NCC
-   System/360 and System/370 by NCC
-   CDC 3000 by University of Oslo's Joint Computer Installation at Kjeller
-   TOPS-10 by Swedish National Defence Research Institute (FOA)

These implementations were ported to a wide range of platforms. The TOPS-10 implemented the concept of public, protected, and private member variables and procedures, that later was integrated into Simula 87. Simula 87 is the latest standard and is ported to a wide range of platforms. There are mainly four implementations:

-   Simula AS
-   Lund Simula
-   GNU Cim[13]
-   Portable Simula Revisited[14]

In November 2001 Dahl and Nygaard were awarded the IEEE John von Neumann Medal by the Institute of Electrical and Electronics Engineers "For the introduction of the concepts underlying object-oriented programming through the design and implementation of SIMULA 67". In April 2002 they received the 2001 A. M. Turing Award by the Association for Computing Machinery (ACM), with the citation: "For ideas fundamental to the emergence of object oriented programming, through their design of the programming languages Simula I and Simula 67." Unfortunately neither Dahl nor Nygaard could make it to the ACM Turing Award Lecture,[15] scheduled to be delivered at the November 2002 OOPSLA conference in Seattle, as they died in June and August of that year, respectively.[16]

Simula Research Laboratory is a research institute named after the Simula language, and Nygaard held a part-time position there from the opening in 2001. The new Computer Science building at the University of Oslo is named Ole Johan Dahl's House, in Dahl's honour, and the main auditorium is named Simula.


Sample code

Minimal program

The empty computer file is the minimal program in Simula, measured by the size of the source code. It consists of one thing only; a dummy statement.

However, the minimal program is more conveniently represented as an empty block:

Begin
End;

It begins executing and immediately terminates. The language does not have any return value from the program itself.

Classic Hello world

An example of a Hello world program in Simula:

Begin
   OutText ("Hello, World!");
   Outimage;
End;

Simula is case-insensitive.

Classes, subclasses and virtual procedures

A more realistic example with use of classes,[17] subclasses[18] and virtual procedures:[19]

Begin
   Class Glyph;
      Virtual: Procedure print Is Procedure print;;
   Begin
   End;

   Glyph Class Char (c);
      Character c;
   Begin
      Procedure print;
        OutChar(c);
   End;

   Glyph Class Line (elements);
      Ref (Glyph) Array elements;
   Begin
      Procedure print;
      Begin
         Integer i;
         For i:= 1 Step 1 Until UpperBound (elements, 1) Do
            elements (i).print;
         OutImage;
      End;
   End;

   Ref (Glyph) rg;
   Ref (Glyph) Array rgs (1 : 4);

   _! Main program;_
   rgs (1):- New Char ('A');
   rgs (2):- New Char ('b');
   rgs (3):- New Char ('b');
   rgs (4):- New Char ('a');
   rg:- New Line (rgs);
   rg.print;
End;

The above example has one super class (Glyph) with two subclasses (Char and Line). There is one virtual procedure with two implementations. The execution starts by executing the main program. Simula does not have the concept of abstract classes since classes with pure virtual procedures can be instantiated. This means that in the above example all classes can be instantiated. Calling a pure virtual procedure will however produce a run-time error.

Call by name

Simula supports call by name[20] so the Jensen's Device can easily be implemented. However, the default transmission mode for simple parameter is call by value, contrary to ALGOL which used call by name. The source code for the Jensen's Device must therefore specify call by name for the parameters when compiled by a Simula compiler.

Another much simpler example is the summation function ∑ which can be implemented as follows:

Real Procedure Sigma (k, m, n, u);
   Name k, u;
   Integer k, m, n; Real u;
Begin
   Real s;
   k:= m;
   While k <= n Do Begin s:= s + u; k:= k + 1; End;
   Sigma:= s;
End;

The above code uses call by name for the controlling variable (k) and the expression (u). This allows the controlling variable to be used in the expression.

Note that the Simula standard allows for certain restrictions on the controlling variable in a for loop. The above code therefore uses a while loop for maximum portability.

The following:

$Z = \sum_{i=1}^{100}{1 \over (i + a)^2}$

can then be implemented as follows:

Z:= Sigma (i, 1, 100, 1 / (i + a) ** 2);

Simulation

Simula includes a simulation[21] package for doing discrete event simulations. This simulation package is based on Simula's object oriented features and its coroutine[22] concept.

Sam, Sally, and Andy are shopping for clothes. They have to share one fitting room. Each one of them is browsing the store for about 12 minutes and then uses the fitting room exclusively for about three minutes, each following a normal distribution. A simulation of their fitting room experience is as follows:

Simulation Begin
   Class FittingRoom; Begin
      Ref (Head) door;
      Boolean inUse;
      Procedure request; Begin
         If inUse Then Begin
             Wait (door);
             door.First.Out;
         End;
         inUse:= True;
      End;
      Procedure leave; Begin
         inUse:= False;
         Activate door.First;
      End;
      door:- New Head;
   End;

   Procedure report (message); Text message; Begin
      OutFix (Time, 2, 0); OutText (": " & message); OutImage;
   End;

   Process Class Person (pname); Text pname; Begin
      While True Do Begin
         Hold (Normal (12, 4, u));
         report  (pname & " is requesting the fitting room");
         fittingroom1.request;
         report (pname & " has entered the fitting room");
         Hold (Normal (3, 1, u));
         fittingroom1.leave;
         report (pname & " has left the fitting room");
      End;
   End;

   Integer u;
   Ref (FittingRoom) fittingRoom1;

   fittingRoom1:- New FittingRoom;
   Activate New Person ("Sam");
   Activate New Person ("Sally");
   Activate New Person ("Andy");
   Hold (100);
End;

The main block is prefixed with Simulation for enabling simulation. The simulation package can be used on any block and simulations can even be nested when simulating someone doing simulations.

The fitting room object uses a queue (door) for getting access to the fitting room. When someone requests the fitting room and it's in use they must wait in this queue (Wait (door)). When someone leaves the fitting room the first one (if any) is released from the queue (Activate door.first) and accordingly removed from the door queue (door.First.Out).

Person is a subclass of Process and its activity is described using hold (time for browsing the store and time spent in the fitting room) and calls procedures in the fitting room object for requesting and leaving the fitting room.

The main program creates all the objects and activates all the person objects to put them into the event queue. The main program holds for 100 minutes of simulated time before the program terminates.


See also

-   BETA, a modern successor to Simula


Notes


Sources

-


Further reading

-

Category:ALGOL 60 dialect Category:Class-based programming languages Category:Norwegian inventions Category:Programming languages created in 1962 Category:Science and technology in Norway Category:Simulation programming languages Category:Programming languages Category:1962 software

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