In computer programming, a P-CODE MACHINE, or PORTABLE CODE MACHINE is a virtual machine designed to execute P-CODE (the assembly language of a hypothetical CPU). This term is applied both generically to all such machines (such as the Java Virtual Machine and MATLAB precompiled code), and to specific implementations, the most famous being the p-Machine of the Pascal-P system, particularly the UCSD Pascal implementation (among whose developers the "p" in "p-code" was construed to mean "pseudo" more often than "portable", "pseudo-code" thus meaning instructions for a pseudo-machine) .

Although the concept was first implemented circa 1966 (as O-code for BCPL and P a code for the Euler Language),[1] the term p-code first appeared in the early 1970s. Two early compilers generating p-code were the Pascal-P compiler in 1973, by Nori, Ammann, Jensen, Hageli, and Jacobi,[2] and the Pascal-S compiler in 1975, by Niklaus Wirth.

Programs that have been translated to p-code can either be interpreted by a software program that emulates the behavior of the hypothetical CPU, or translated into the machine code of the CPU on which the program is to run and then executed. If there is sufficient commercial interest, a hardware implementation of the CPU specification may be built (e.g., the Pascal MicroEngine or a version of the Java processor).


Benefits and weaknesses of implementing p-code

Compared to direct translation into native machine code, a two-stage approach involving translation into p-code and execution by an interpreter or just-in-time compiler offers several advantages.

-   It is much easier to write a small p-code interpreter for a new machine than it is to modify a compiler to generate native code for the same machine.
-   Generating machine code is one of the more complicated parts of writing a compiler. By comparison, generating p-code is much easier because no machine-dependent behaviour must be considered in the generation of the bytecode. This makes it useful for getting a compiler up and running quickly.
-   Since p-code is based on an ideal virtual machine, a p-code program is often much smaller than the same program translated to machine code.
-   When the p-code is interpreted, the interpreter can apply additional run-time checks that are difficult to implement with native code.

One of the significant disadvantages of p-code is execution speed, which can sometimes be remedied through the use of a JIT compiler. P-code is often also easier to reverse-engineer than native code.

In the early 1980s, at least two operating systems achieved machine independence through extensive use of p-code. The Business Operating System (BOS) was a cross-platform operating system designed to run p-code programs exclusively. The UCSD p-System, developed at The University of California, San Diego, was a self-compiling and self-hosted operating system based on p-code optimized for generation by the Pascal programming language.

In the 1990s, translation into p-code became a popular strategy for implementations of languages such as Python, Microsoft P-Code in Visual Basic and Java bytecode in Java.

The Go programming language uses a generic, portable assembly as a form of p-code, implemented by Ken Thompson as an extension of the work on Plan 9 from Bell Labs. Unlike CLR bytecode or JVM bytecode, there is no stable specification, and the Go build tools do not emit a bytecode format to be used at a later time. The Go assembler uses the generic assembly language as an intermediate representation, and Go executables are machine-specific statically linked binaries.[3]


UCSD p-Machine

Architecture

Like many other p-code machines, the UCSD p-Machine is a stack machine, which means that most instructions take their operands from the stack, and place results back on the stack. Thus, the "add" instruction replaces the two topmost elements of the stack with their sum. A few instructions take an immediate argument. Like Pascal, the p-code is strongly typed, supporting boolean (b), character (c), integer (i), real (r), set (s), and pointer (a) types natively.

Some simple instructions:

Insn.   Stack   Stack   Description
        before  after
 
adi      i1 i2   i1+i2   add two integers
adr      r1 r2   r1+r2   add two reals
dvi      i1 i2   i1/i2   integer division
inn      i1 s1   b1      set membership; b1 = whether i1 is a member of s1
ldci     i1      i1      load integer constant
mov      a1      a2      move
not      b1      ~b1     boolean negation

Environment

Unlike other stack-based environments (such as Forth and the Java Virtual Machine) but very similar to a real target CPU, the p-System has only one stack shared by procedure stack frames (providing return address, etc.) and the arguments to local instructions. Three of the machine's registers point into the stack (which grows upwards):

-   SP points to the top of the stack (the stack pointer).
-   MP marks the beginning of the active stack frame (the mark pointer).
-   EP points to the highest stack location used in the current procedure (the extreme pointer).

Also present is a constant area, and, below that, the heap growing down towards the stack. The NP (the new pointer) register points to the top (lowest used address) of the heap. When EP gets greater than NP, the machine's memory is exhausted.

The fifth register, PC, points at the current instruction in the code area.

Calling conventions

Stack frames look like this:

EP ->
      local stack
SP -> ...
      locals
      ...
      parameters
      ...
      return address (previous PC)
      previous EP
      dynamic link (previous MP)
      static link (MP of surrounding procedure)
MP -> function return value

The procedure calling sequence works as follows: The call is introduced with

 mst n

where n specifies the difference in nesting levels (remember that Pascal supports nested procedures). This instruction will _mark_ the stack, i.e. reserve the first five cells of the above stack frame, and initialise previous EP, dynamic, and static link. The caller then computes and pushes any parameters for the procedure, and then issues

 cup n, p

to call a user procedure (n being the number of parameters, p the procedure's address). This will save the PC in the return address cell, and set the procedure's address as the new PC.

User procedures begin with the two instructions

 ent 1, i
 ent 2, j

The first sets SP to MP + i, the second sets EP to SP + j. So i essentially specifies the space reserved for locals (plus the number of parameters plus 5), and j gives the number of entries needed locally for the stack. Memory exhaustion is checked at this point.

Returning to the caller is accomplished via

 retC

with C giving the return type (i, r, c, b, a as above, and p for no return value). The return value has to be stored in the appropriate cell previously. On all types except p, returning will leave this value on the stack.

Instead of calling a user procedure (cup), standard procedure q can be called with

 csp q

These standard procedures are Pascal procedures like readln() (csp rln), sin() (csp sin), etc. Peculiarly eof() is a p-Code instruction instead.


Example machine

Niklaus Wirth specified a simple p-code machine in the 1976 book _Algorithms + Data Structures = Programs_. The machine had 3 registers - a program counter _p_, a base register _b_, and a top-of-stack register _t_. There were 8 instructions:

1.  LIT 0, _a_ : load constant _a_
2.  OPR 0, _a_ : execute operation _a_ (13 operations: RETURN, 5 math functions, and 7 comparison functions)
3.  LOD _l_, _a_ : load variable _l,a_
4.  STO _l_, _a_ : store variable _l,a_
5.  CAL _l_, _a_ : call procedure _a_ at level _l_
6.  INT 0, _a_ : increment t-register by _a_
7.  JMP 0, _a_ : jump to _a_
8.  JPC 0, _a_ : jump conditional to _a_[4]

This is the code for the machine, written in Pascal:

    const
        amax=2047;      {maximum address}
        levmax=3;       {maximum depth of block nesting}
        cxmax=200;      {size of code array}

    type
        fct=(lit,opr,lod,sto,cal,int,jmp,jpc);
        instruction=packed record
            f:fct;
            l:0..levmax;
            a:0..amax;
        end;

    var
        code: array [0..cxmax] of instruction;

    procedure interpret;

      const stacksize = 500;

      var
        p, b, t: integer; {program-, base-, topstack-registers}
        i: instruction; {instruction register}
        s: array [1..stacksize] of integer; {datastore}

      function base(l: integer): integer;
        var b1: integer;
      begin
        b1 := b; {find base l levels down}
        while l > 0 do begin
          b1 := s[b1];
          l := l - 1
        end;
        base := b1
      end {base};

    begin
      writeln(' start pl/0');
      t := 0; b := 1; p := 0;
      s[1] := 0; s[2] := 0; s[3] := 0;
      repeat
        i := code[p]; p := p + 1;
        with i do
          case f of
            lit: begin t := t + 1; s[t] := a end;
            opr:
              case a of {operator}
                0:
                  begin {return}
                    t := b - 1; p := s[t + 3]; b := s[t + 2];
                  end;
                1: s[t] := -s[t];
                2: begin t := t - 1; s[t] := s[t] + s[t + 1] end;
                3: begin t := t - 1; s[t] := s[t] - s[t + 1] end;
                4: begin t := t - 1; s[t] := s[t] * s[t + 1] end;
                5: begin t := t - 1; s[t] := s[t] div s[t + 1] end;
                6: s[t] := ord(odd(s[t]));
                8: begin t := t - 1; s[t] := ord(s[t] = s[t + 1]) end;
                9: begin t := t - 1; s[t] := ord(s[t] <> s[t + 1]) end;
                10: begin t := t - 1; s[t] := ord(s[t] < s[t + 1]) end;
                11: begin t := t - 1; s[t] := ord(s[t] >= s[t + 1]) end;
                12: begin t := t - 1; s[t] := ord(s[t] > s[t + 1]) end;
                13: begin t := t - 1; s[t] := ord(s[t] <= s[t + 1]) end;
              end;
            lod: begin t := t + 1; s[t] := s[base(l) + a] end;
            sto: begin s[base(l)+a] := s[t]; writeln(s[t]); t := t - 1 end;
            cal:
              begin {generate new block mark}
                s[t + 1] := base(l); s[t + 2] := b; s[t + 3] := p;
                b := t + 1; p := a
              end;
            int: t := t + a;
            jmp: p := a;
            jpc: begin if s[t] = 0 then p := a; t := t - 1 end
          end {with, case}
      until p = 0;
      writeln(' end pl/0');
    end {interpret};

This machine was used to run Wirth's PL/0, which was a Pascal subset compiler used to teach compiler development.


See also

-   Apple Integer Sweet 16
-   Bytecode
-   Joel McCormack designer of the NCR Corporation version of the p-code machine
-   LLVM IR
-   Microsoft P-Code
-   Token threading


Notes


Further reading

-   Steven Pemberton and Martin Daniels: Pascal Implementation: The P4 Compiler and Interpreter. ;
-   Steven Pemberton's page on Pascal has Pascal sources of the P4 compiler and interpreter, usage instructions, and the p-code of the compiler (generated by itself).
-   The Jefferson Computer Museum's page on the UCSD p-System
-   Open Source implementation, including packaging and pre-compiled binaries; a friendly fork of the Klebsch implementation
-   _Compiling with C# and Java_, Pat Terry, 2005, , 624
-   _Algorithms + Data Structures = Programs_, Niklaus Wirth, 1975,
-   _Compiler Construction_, Niklaus Wirth, 1996,
-   _The Byte Book of Pascal_, Blaise W. Liffick, Editor, 1979,
-   _PASCAL - The Language and its Implementation_, Edited by D.W. Barron, 1981, . Especially see the articles _Pascal-P Implementation Notes_ and _Pascal-S: A Subset and its Implementation_.

Category:Stack-based virtual machines Category:Pascal (programming language) * Category:Programming language implementation Category:Articles with example Pascal code

[1]

[2]

[3]

[4] http://pascal.hansotten.com/category/wirth/