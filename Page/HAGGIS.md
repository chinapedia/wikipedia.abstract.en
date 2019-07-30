HAGGIS is a high-level reference programming language used primarily to examine Computing Science for Scottish pupils taking SQA courses on the subject.[1] HAGGIS is used as a tool to bridge the gap between pseudocode and typical computer programming.[2]

HAGGIS is not based on any one language but a mixture that is intended to allow a pupil familiar with any of the many languages used in classrooms to easily understand the syntactic construct being used in an example. It has multiple programming paradigms of functional, imperative and object-oriented to suit this purpose.[3]

There are three separate language definitions, one for each level at which computing is assessed by the SQA; these are proper subsets of each other, so for example any program contained by the National 5 level language is also well-defined at Higher and Advanced Higher levels. Higher includes the definition of procedures and functions and the use of record types and files, while Advanced Higher includes object-orientation.

Online HAGGIS interpreters have been developed to provide a way for examiners and teachers to check their programs are correctly defined and behave as expected.[4]


Overview

In Scotland, school-level computing qualifications are awarded by the Scottish Qualifications Authority. A decision was made for computing courses that a single choice of programming language for examination should not be mandated: this allows teachers to choose languages as appropriate to context. This however leaves the issue of how to examine programming, especially in the light of recent educational research which encourages the teaching of reading and understanding code as a core discipline, which should therefore be examined.

Initially, a form of pseudocode language emerged among examiners, to avoid any such language dependency. However this led to the very undesirable situation that, while students are being taught about the importance of rigour of terms in a programming language, they can look back over previous years of examinations and see non-standard use of coding which varies from example to example.

HAGGIS is the solution to this. HAGGIS is a formally-defined reference language, but its purpose is to examine programming, not to write programs. A further requirement is that it must not be a mandatory part of the curriculum, so students who have never previously seen the language should be able to read it. These aspects, along with an attempt to conform as far as possible with the evolved pseudocode style, directed the specification of the language. So, while HAGGIS is in fact a programming language (even although, in general, not all HAGGIS programs are executable), it is not intended as a language in which to write programs.

These concepts are more fully explained in an academic paper.[5]


History

HAGGIS was commissioned by the SQA in 2010 to provide a uniform syntax and form in which to present questions to pupils in assessments. Its present form was jointly developed by Quintin Cutts (University of Glasgow), Greg Michaelson (Heriot Watt University) and Richard Connor (University of Strathclyde). The aim of developing HAGGIS was to emphasise the core idea of ensuring pupils could view code and demonstrate their understanding of its behaviour, in order to develop their computational thinking and programming skills.[6]

HAGGIS was first introduced into the Computing Science examinations as part of the Scottish Government’s Curriculum for Excellence development programme in the 2013/2014 session in National 5, 2014/2015 for the new Higher courses[7] and into the new Advanced Higher in the 2015/2016 session.[8] HAGGIS was not introduced as a language to replace other languages already used in education, not was it intended that the language should be taught or used in the normal curriculum. However some teachers have adopted it as a rigorous pseudocode form to enhance teaching delivered in another language.[9]


Features and philosophy

Core principles

HAGGIS was designed with 8 core principles in mind[10]

-   Not be based on any one extant programming language
-   Be adaptable to programming languages already taught in the Scottish Curriculum.
-   Provide enough complexity for Advanced Higher teaching whilst being appropriately useful for earlier teaching years.
-   Provide an instinctive element, e.g. variable types are self specified.
-   Be concise in use but open to interpretation of multiple ways to solve a problem.
-   Allow different constructs have different meanings when used in certain context.
-   Don’t visualise the non-useful elements such as Memory being allocated.

Use within education

It was designed to be both functional/sequential and object-oriented based in order to be simple and complex for National 5 / Higher students and Advanced Higher students simultaneously.[11]

HAGGIS was designed to allow pupils across Scotland to enhance the learning and understanding of computer programming through reading examples, and aid the step of converting from pseudocode to full programming. It was not created with the intention of asking pupils to write it in assessments but provide a uniform language in which to present code examples to students, ensuring that all pupils have a fair understanding and is not hindered by learning a different programming language different to the one exemplified in the assessment.[12]


Syntax

HAGGIS_Code_Example.png Syntax and structure in HAGGIS are very similar to other programming languages and can be easily learned.

Complex_HAGGIS_Code.png

Reserved words

-   Reserved words are capitalised; this would be generally be considered ugly for a programming language, but makes the program structure clearer for a first-time reader of the language. Similarly, the language deliberately contains a great deal of syntactic redundancy.
-   DECLARE, FOR, WHILE, etc.

Data types

(types are normally determined by inference except where this is not possible)

-   Character (a single character type, from which Strings are composed)
-   Integer
-   Real (including integers)
-   Boolean (true or false)

Structured types

-   Array: Sequence of same data types.
-   String: Array of Character.
-   Record: A labelled collection of values.
-   Object: as defined by Class descriptors.

Arrays are included at National 5 level, Records at Higher, and Objects at Advanced Higher.

Line numbers

In some examples in examination papers line numbers are used to allow easy reference; this is not a part of the language however.

Indentation

Code within other structures should be intended so it can be properly identified by the compiler and to make it easier to read for the developer and for anyone else of who may be reading the code. Once again, this is not a part of the language definition.

Comments

Comments can be made using the “#” character for every line of commented text, this can appear either at the beginning of a new line or after a piece of code. Large blocks of text can be specified using the “<(COMMENT TEXT>” format, this is primarily implemented for educational use to provide larger context for students.

Variable names

Variable names should be written in lowercase or, if the name is complex, in lower camelCase. Camelcase is when a name is concatenated together to form one long word, however the first letter of each word (apart from the first) is capitalised.

For example, variables could be called:

-   number
-   meaningfulName

Initialisation

Initialisation allows the declaration of a new variable.

    DECLARE <variable’s name> INITIALLY

If the type cannot be determined from the initialising value, an optional type may be included, as for example

    DECLARE myArray AS ARRAY OF INTEGER INITIALLY []

Assignment

Assignment allows the user to set values to variables. The syntax is as shown.

    SET <variable’s name> TO

-   If is a string, it should be written within quotation marks, like this: SET phrase TO "maybe"
-   If is an integer, it doesn’t need quotation marks, like this: SET number TO 23

Input

Input in HAGGIS is similar to pseudocode in that you state the data type of the input the program is receiving and also where the input is coming from, like so:

    RECEIVE  FROM

The optional typing for a declaration may also be used, for example

    DECLARE number AS INTEGER INITIALLY FROM KEYBOARD

Output

Outputs in HAGGIS can be written similarly to inputs.

    SEND <variable, value or text> TO

For example:

-   SEND meaningfulName TO DISPLAY

Arithmetic calculations

SET is used to assign the result of calculation.

For example:

    SET number TO 32*6

This is another form of assignment.

Procedures / functions

A procedure is a kind of sub-program within a program. It allows the sectioning of code to make it more readable and easier to work with. You must remember to end the procedure as shown below.

    PROCEDURE <Procedure ID/Name>(<Data Type> <Variable>,<Data Type> <Variable>...)
       HAGGIS Commands
    END PROCEDURE

Operations

HAGGIS includes all the operations you would expect from a programming language to be able to carry out calculations and logical operations alike. For INTEGER and REAL data typed, the following operations are possible.

-   “-” is subtract
-   “+” is add
-   “*” is multiply
-   “/” is divide
-   “^” is exponent

For INTEGER data types alone, the modulo is possible which is written as MOD.

Comparison operators:

-   “=” is equals
-   “≠” is inequals
-   “<” is less than
-   “>” is greater than
-   “≤” is less than or equal
-   “>” is greater than or equal

Logical operations:

-   “AND” is Conjunction
-   “OR” is Disjunction
-   “NOT” is Negation

Defining a class

Defining a class in HAGGIS uses the syntax [CLASS ()].

There are various methods you can declare in HAGGIS such as:

        CONSTRUCTOR( [Data Type][Data Name], [Data Type][Data Name]...)
            The users' '''HAGGIS''' code will then go here.
        END CONSTRUCTOR

        FUNCTION <Function Name>() RETURN <Data Type>
            The users' '''HAGGIS''' code will then go here.
            RETURN THIS <Class Property>
        END FUNCTION
        '''“THIS” is used to reference the current object invoking the method.'''

        PROCEDURE <Procedure Name> ()
            The users' '''HAGGIS''' code will then go here.
        END PROCEDURE


Application and uses

HAGGIS was originally implemented and then expected to be used in the following ways. The students would be taught how to code in a programming language that the teacher has selected. The students would then make plans in a pseudocode format in a higher level of language than the code itself. Once the students felt comfortable with writing pseudocode they would then be introduced to HAGGIS as it is the language used in exam texts.[13]

HAGGIS was implemented in this way because research has shown the ability to understand programs is essential to developing further programming skills.[14] Courses run by the SQA (National 5 and Higher) both include outcomes that require students to have this ability. Because HAGGIS is so easy to understand and pick up, it has been used in exam texts. It is noted that students were and never will be asked to write any code in HAGGIS during an exam, they are only required to be able to read and understand it.

Problems

There have only ever been a very small number of problems with HAGGIS. None are to do with the language itself but more to do with the way students view it. The first is that students had no idea why they were being taught to write a completed computer program in two languages. The other is that they were mixing up the two languages that they had been taught and were often getting syntax wrong because they were being taught the two languages at the same time which was causing some minor confusion.[15]

Observation

HAGGIS was observed by the creator and was found to be used in the following ways.[16] HAGGIS was being used as a planning language for the computer programs that students were being asked to create. After students had been asked to refine their code through several planning stages, a final plan was made using HAGGIS. After this final plan is made, the HAGGIS code would then be transferred into a real programming language that is specified by the teacher. This method is effective in increasing students skills as mentioned earlier to give them as much preparation as possible for the exam for when they will see HAGGIS applied in a context.


References


External links

-   Quintin Cutts Web Page
-   SQA Online Haggis Parser

Category:Programming languages Category:Education in Scotland

[1]

[2]

[3]

[4]

[5] Quintin Cutts, Richard Connor, Greg Michaelson, and Peter Donaldson. 2014. Code or (not code): separating formal and natural language in CS education. In Proceedings of the 9th Workshop in Primary and Secondary Computing Education (WiPSCE '14). ACM, New York, NY, USA, 20-28. DOI=https://dx.doi.org/10.1145/2670757.2670780

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