In computer science, REGISTER TRANSFER LANGUAGE (RTL) is a kind of intermediate representation (IR) that is very close to assembly language, such as that which is used in a compiler. It is used to describe data flow at the register-transfer level of an architecture. Academic papers and textbooks often use a form of RTL as an architecture-neutral assembly language. RTL is used as the name of a specific intermediate representation in several compilers, including the Gnu Compiler Collection (GCC), Zephyr, and the European compiler projects CerCo and CompCert.


In GCC

In GCC, RTL is generated from the GIMPLE representation, transformed by various passes in the GCC 'middle-end', and then converted to assembly language.

GCC's RTL is usually written in a form which looks like a Lisp S-expression:

    (set (reg:SI 140)
         (plus:SI (reg:SI 138)
                  (reg:SI 139)))

This "side-effect expression" says "sum the contents of register 138 with the contents of register 139 and store the result in register 140". The SI specifies the access mode for each registers. In the example it is "SImode", i.e. "access the register as 32-bit integer".

The sequence of RTL generated has some dependency on the characteristics of the processor for which GCC is generating code. However, the meaning of the RTL is more-or-less independent of the target: it would usually be possible to read and understand a piece of RTL without knowing what processor it was generated for. Similarly, the meaning of the RTL doesn't usually depend on the original high-level language of the program.

A register transfer language is a system for expressing in symbolic form the microoperation sequences among the registers of a digital module. It is a convenient tool for describing the internal organization of digital computers in concise and precise manner. It can also be used to facilitate the design process of digital systems.


History

The idea behind RTL was first described in: Davidson and Fraser; The Design and Application of a Retargetable Peephole Optimizer; ToPLaS v2(2) 191-202 (April 1980)


See also

-   Register-transfer level – a similar, but distinct, concept in hardware description languages


References


External links

-   Register Transfer Language of GCC

Category:Compiler structures