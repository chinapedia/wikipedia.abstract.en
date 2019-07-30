TOI is an imperative, type-sensitive language that provides the basic functionality of a programming language. The language was designed and developed from the ground-up by Paul Longtine.[1] Written in C, Toi was created with the intent to be an educational experience and serves as a learning tool (or toy, hence the name) for those looking to familiarize themselves with the inner-workings of a programming language.[2]


Specification[3][4]

Types

0 VOID    - Null, no data
1 ADDR    - Address type (bytecode)
2 TYPE    - A `type` type
3 PLIST   - Parameter list
4 FUNC    - Function
5 OBJBLDR - Object builder
6 OBJECT  - Object/Class
7 G_PTR   - Generic pointer
8 G_INT   - Generic integer
9 G_FLOAT - Generic double
10 G_CHAR  - Generic character
11 G_STR   - Generic string
12 S_ARRAY - Static array
13 D_ARRAY - Dynamic array
14 H_TABLE - Hashtable
15 G_FIFO  - Stack

Runtime

Runtime context definition

The runtime context keeps track of an individual threads metadata, such as:

-   The operating stack
    -   The operating stack where current running instructions push/pop to.
    -   refer to STACK DEFINITION
-   Namespace instance
    -   Data structure that holds the references to variable containers, also proving the interface for Namespace Levels.
    -   refer to NAMESPACE DEFINITION
-   Argument stack
    -   Arguments to function calls are pushed on to this stack, flushed on call.
    -   refer to STACK DEFINITION, FUNCTION DEFINITION
-   Program counter
    -   An interface around bytecode to keep track of traversing line-numbered instructions.
    -   refer to PROGRAM COUNTER DEFINITION

This context gives definition to an 'environment' where code is executed.

Namespace definition

A key part to any operational computer language is the notion of a 'Namespace'. This notion of a 'Namespace' refers to the ability to declare a name, along with needed metadata, and call upon the same name to retrieve the values associated with that name.

In this definition, the namespace will provide the following key mechanisms:

-   Declaring a name
-   Assigning a name to a value
-   Retrieving a name's value
-   Handle a name's scope
-   Implicitly move in/out of scopes

The scope argument is a single byte, where the format is as follows:

Namespace|Scope
0000000  |0

Scopes are handled by referencing to either the Global Scope or the Local Scope. The Local Scope is denoted by '0' in the scope argument when referring to names, and this scope is initialized when evaluating any new block of code. When a different block of code is called, a new scope is added as a new Namespace level. Namespace levels act as context switches within function contexts. For example,the local namespace must be 'returned to' if that local namespace context needs to be preserved on return. Pushing 'Namespace levels' ensures that for every _n_ function calls, you can traverse _n_ instances of previous namespaces. For example, take this namespace level graphic, where each Level is a namespace instance:

Level 0: Global namespace, LSB == '1'.
Level 1: Namespace level, where Local Level is at 1, LSB == '0'.

When a function is called, another namespace level is created and the local level increases, like so:

Level 0: Global namespace, LSB == '1'.
Level 1: Namespace level.
Level 2: Namespace level, where Local Level is at 2, LSB == '0'.

Global scope names (LSB == 1 in the scope argument) are persistent through the runtime as they handle all function definitions, objects, and names declared in the global scope. The "Local Level" is at where references that have a scope argument of '0' refer to when accessing names.

The Namespace argument refers to which Namespace the variable exists in. When the namespace argument equals 0, the current namespace is referenced. The global namespace is 1 by default, and any other namespaces must be declared by using the

Variable definition

Variables in this definition provide the following mechanisms:

-   Provide a distinguishable area of typed data
-   Provide a generic container around typed data, to allow for labeling
-   Declare a set of fundamental datatypes, and methods to:
    -   Allocate the proper space of memory for the given data type,
    -   Deallocate the space of memory a variables data may take up, and
    -   Set in place a notion of ownership

For a given variable V, V defines the following attributes

   V -> Ownership
   V -> Type
   V -> Pointer to typed space in memory

Each variable then can be handled as a generic container.

In the previous section, the notion of Namespace levels was introduced. Much like how names are scoped, generic variable containers must communicate their scope in terms of location within a given set of scopes. This is what is called 'Ownership'. In a given runtime, variable containers can exist in the following structures: A stack instance, Bytecode arguments, and Namespaces

The concept of ownership differentiates variables existing on one or more of the structures. This is set in place to prevent accidental deallocation of variable containers that are not copied, but instead passed as references to these structures.

Function definition

Functions in this virtual machine are a pointer to a set of instructions in a program with metadata about parameters defined.

Object definition

In this paradigm, objects are units that encapsulate a separate namespace and collection of methods.

Bytecode spec

Bytecode is arranged in the following order:

  <opcode>, <arg 0>, <arg 1>, <arg 2>

Where the is a single byte denoting which subroutine to call with the following arguments when executed. Different opcodes have different argument lengths, some having 0 arguments, and others having 3 arguments.

Interpreting Bytecode Instructions

A bytecode instruction is a single-byte opcode, followed by at maximum 3 arguments, which can be in the following forms:

-   Static (single byte)
-   Name (single word)
-   Address (depending on runtime state, usually a word)
-   Dynamic (size terminated by NULL, followed by (size)*bytes of data)
    -   i.e. FF FF 00 <0xFFFF bytes of data>,
    -   01 00 <0x1 bytes of data>,
    -   06 00 <0x6 bytes of data>, etc.

Below is the specification of all the instructions with a short description for each instruction, and instruction category:

Opcode

Keywords:

TOS           - 'Top Of Stack' The top element
TBI           - 'To be Implemented'
S<[variable]> - Static Argument.
N<[variable]> - Name.
A<[variable]> - Address Argument.
D<[variable]> - Dynamic bytecode argument.

------------------------------------------------------------------------

Hex | Memnonic | arguments - description

------------------------------------------------------------------------

1 - STACK MANIPULATION

   These subroutines operate on the current-working stack(1).

------------------------------------------------------------------------

10 POP S<n>  - pops the stack n times.
11 ROT       - rotates top of stack
12 DUP       - duplicates the top of the stack
13 ROT_THREE - rotates top three elements of stack

------------------------------------------------------------------------

2 - VARIABLE MANAGEMENT

------------------------------------------------------------------------

20 DEC S<scope> S<type> N - declare variable of type
21 LOV S<scope> N - loads reference variable on to stack
22 STV S<scope> N - stores TOS to reference variable
23 CTV S<scope> N D<data> - loads constant into variable
24 CTS D<data>                 - loads constant into stack

------------------------------------------------------------------------

3 - TYPE MANAGEMENT

Types are in the air at this moment. I'll detail what types there are when the time comes

------------------------------------------------------------------------

30 TYPEOF       - pushes type of TOS on to the stack                        TBI
31 CAST S<type> - Tries to cast TOS to <type>                               TBI

------------------------------------------------------------------------

4 - BINARY OPS

OPS take the two top elements of the stack, perform an operation and push the result on the stack.

------------------------------------------------------------------------

40 ADD  - adds
41 SUB  - subtracts
42 MULT - multiplies
43 DIV  - divides 
44 POW  - power, TOS^TOS1                                                   TBI
45 BRT  - base root, TOS root TOS1                                          TBI
46 SIN  - sine                                                              TBI
47 COS  - cosine                                                            TBI
48 TAN  - tangent                                                           TBI 
49 ISIN - inverse sine                                                      TBI
4A ICOS - inverse consine                                                   TBI
4B ITAN - inverse tangent                                                   TBI
4C MOD  - modulus                                                           TBI
4D OR   - or's                                                              TBI
4E XOR  - xor's                                                             TBI
4F NAND - and's                                                             TBI 

------------------------------------------------------------------------

5 - CONDITIONAL EXPRESSIONS

Things for comparison, < > = ! and so on and so forth. Behaves like Arithmetic instructions, besides NOT instruction. Pushes boolean to TOS

------------------------------------------------------------------------

50 GTHAN    - Greater than
51 LTHAN    - Less than
52 GTHAN_EQ - Greater than or equal to
53 LTHAN_EQ - Less than or equal to
54 EQ       - Equal to
55 NEQ      - Not equal to
56 NOT      - Inverts TOS if TOS is boolean
57 OR       - Boolean OR
58 AND      - Boolean AND

------------------------------------------------------------------------

6 - LOOPS

------------------------------------------------------------------------

60 STARTL - Start of loop
61 CLOOP  - Conditional loop. If TOS is true, continue looping, else break
6E BREAK  - Breaks out of loop
6F ENDL   - End of loop

------------------------------------------------------------------------

7 - CODE FLOW

These instructions dictate code flow.

------------------------------------------------------------------------

70 GOTO A<addr> - Goes to address
71 JUMPF A<n>   - Goes forward  lines
72 IFDO         - If TOS is TRUE, do until done, if not, jump to done
73 ELSE         - Chained with an IFDO statement, if IFDO fails, execute ELSE
                  block until DONE is reached.
74 JTR          - jump-to-return.                                           TBI
75 JTE          - jump-to-error. Error object on TOS                        TBI
7D ERR          - Start error block, uses TOS to evaluate error             TBI
7E DONE         - End of block
7F CALL N - Calls function, pushes return value on to STACK.

------------------------------------------------------------------------

8 - GENERIC OBJECT INTERFACE. EXPECTS OBJECT ON TOS

------------------------------------------------------------------------

80 GETN N<name>   - Returns variable associated with name in object
81 SETN N<name>   - Sets the variable associated with name in object
                    Object on TOS, Variable on TOS1
82 CALLM N<name>  - Calls method in object
83 INDEXO         - Index an object, uses argument stack
84 MODO S<OP>     - Modify an object based on op. [+, -, *, /, %, ^ .. etc.]

------------------------------------------------------------------------

F - FUNCTIONS/CLASSES

------------------------------------------------------------------------

FF DEFUN NS<type> D<args> - Un-funs everything. no, no- it defines a
                                  function. D is its name, S<type> is
                                  the return value, D<args> is the args.

FE DECLASS ND       - Defines a class.
FD DENS S                 - Declares namespace
F2 ENDCLASS               - End of class block
F1 NEW S N         - Instantiates class
F0 RETURN                 - Returns from function

------------------------------------------------------------------------

0 - SPECIAL BYTES

------------------------------------------------------------------------

00 NULL          - No-op
01 LC N<name>    - Calls OS function library, i.e. I/O, opening files, etc.  TBI
02 PRINT         - Prints whatever is on the TOS.
03 DEBUG         - Toggle debug mode
0E ARGB          - Builds argument stack
0F PC S          - Primitive call, calls a subroutine A. A list of     TBI
                   primitive subroutines providing methods to tweak
                   objects this bytecode set cannot touch. Uses argstack.

Compiler/Translator/Assembler

Lexical analysis

Going from code to bytecode is what this section is all about. First off an abstract notation for the code will be broken down into a binary tree as so:

                                   <node>
                                     /\
                                    /  \
                                   /    \
                                 <arg> <next>

node> can be an argument of its parent node, or the next instruction. Instruction nodes are nodes that will produce an instruction, or multiple based on the bytecode interpretation of its instruction. For example, this line of code:

                                  int x = 3

would translate into:

                                     def
                                      /\
                                     /  \
                                    /    \
                                   /      \
                                  /        \
                                int        set
                                /\          /\
                               /  \        /  \
                             null 'x'    'x'  null
                                         /\
                                        /  \
                                      null  3

Functions are expressed as individual binary trees. The root of any file is treated as an individual binary tree, as this is also a function.

The various instruction nodes are as follows:

-   def <type> <name>
    -   Define a named space in memory with the type specified
        -   See the 'TYPES' section under 'OVERVIEW'
-   set
    -   Set a named space in memory with value specified

Going from Binary Trees to Bytecode

The various instruction nodes within the tree will call specific functions that will take arguments specified and lookahead and lookbehind to formulate the correct bytecode equivalent.


Developer's Website

The developer of the language, Paul Longtine, operates a publicly available website and blog called banna.tech, named after his online alias 'banna'.


References

Specification

[1]

[2]

[3]

[4] http://dev.nanner.co/language/file/doc/SPECIFICATION.html