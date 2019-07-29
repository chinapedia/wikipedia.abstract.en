JvmSpec7.png A JAVA VIRTUAL MACHINE (JVM) is a virtual machine that enables a computer to run Java programs as well as programs written in other languages that are also compiled to Java bytecode. The JVM is detailed by a specification that formally describes what is required in a JVM implementation. Having a specification ensures interoperability of Java programs across different implementations so that program authors using the Java Development Kit (JDK) need not worry about idiosyncrasies of the underlying hardware platform.

The JVM reference implementation is developed by the OpenJDK project as open source code and includes a JIT compiler called HotSpot. The commercially supported Java releases available from Oracle Corporation are based on the OpenJDK runtime. Eclipse OpenJ9 is another open source JVM for OpenJDK.


JVM specification

The Java virtual machine is an abstract (virtual) computer defined by a specification. The garbage-collection algorithm used and any internal optimization of the Java virtual machine instructions (their translation into machine code) are not specified. The main reason for this omission is to not unnecessarily constrain implementers. Any Java application can be run only inside some concrete implementation of the abstract specification of the Java virtual machine.[1]

Starting with Java Platform, Standard Edition (J2SE) 5.0, changes to the JVM specification have been developed under the Java Community Process as JSR 924.[2] , changes to specification to support changes proposed to the class file format (JSR 202)[3] are being done as a maintenance release of JSR 924. The specification for the JVM was published as the _blue book_,[4] The preface states:

One of Oracle's JVMs is named HotSpot, the other, inherited from BEA Systems is JRockit. Clean-room Java implementations include Kaffe, OpenJ9 and Skelmir's CEE-J. Oracle owns the Java trademark and may allow its use to certify implementation suites as fully compatible with Oracle's specification.

Class loader

One of the organizational units of JVM byte code is a class. A class loader implementation must be able to recognize and load anything that conforms to the Java class file format. Any implementation is free to recognize other binary forms besides _class_ files, but it must recognize _class_ files.

The class loader performs three basic activities in this strict order:

1.  Loading: finds and imports the binary data for a type
2.  Linking: performs verification, preparation, and (optionally) resolution
    -   Verification: ensures the correctness of the imported type
    -   Preparation: allocates memory for class variables and initializing the memory to default values
    -   Resolution: transforms symbolic references from the type into direct references.
3.  Initialization: invokes Java code that initializes class variables to their proper starting values.

In general, there are two types of class loader: bootstrap class loader and user defined class loader.

Every Java virtual machine implementation must have a bootstrap class loader, capable of loading trusted classes. The Java virtual machine specification doesn't specify how a class loader should locate classes.

Virtual machine architecture

The JVM operates on primitive values (integers and floating-point numbers) and references. The JVM is fundamentally a 32-bit machine. long and double types, which are 64-bits, are supported natively, but consume two units of storage in a frame's local variables or operand stack, since each unit is 32 bits. boolean, byte, short, and char types are all sign-extended (except char which is zero-extended) and operated on as 32-bit integers, the same as int types. The smaller types only have a few type-specific instructions for loading, storing, and type conversion. boolean is operated on as 8-bit byte values, with 0 representing false and 1 representing true. (Although boolean has been treated as a type since _The Java Virtual Machine Specification, Second Edition_ clarified this issue, in compiled and executed code there is little difference between a boolean and a byte except for name mangling in method signatures and the type of boolean arrays. booleans in method signatures are mangled as Z while bytes are mangled as B. Boolean arrays carry the type boolean[] but use 8 bits per element, and the JVM has no built-in capability to pack booleans into a bit array, so except for the type they perform and behave the same as byte arrays. In all other uses, the boolean type is effectively unknown to the JVM as all instructions to operate on booleans are also used to operate on bytes.)

The JVM has a garbage-collected heap for storing objects and arrays. Code, constants, and other class data are stored in the "method area". The method area is logically part of the heap, but implementations may treat the method area separately from the heap, and for example might not garbage collect it. Each JVM thread also has its own call stack (called a "Java Virtual Machine stack" for clarity), which stores frames. A new frame is created each time a method is called, and the frame is destroyed when that method exits.

Each frame provides an "operand stack" and an array of "local variables". The operand stack is used for operands to computations and for receiving the return value of a called method, while local variables serve the same purpose as registers and are also used to pass method arguments. Thus, the JVM is both a stack machine and a register machine.

Bytecode instructions

The JVM has instructions for the following groups of tasks:

The aim is binary compatibility. Each particular host operating system needs its own implementation of the JVM and runtime. These JVMs interpret the bytecode semantically the same way, but the actual implementation may be different. More complex than just emulating bytecode is compatibly and efficiently implementing the Java core API that must be mapped to each host operating system.

These instructions operate on a set of common rather the native data types of any specific instruction set architecture.

JVM languages

A JVM language is any language with functionality that can be expressed in terms of a valid class file which can be hosted by the Java Virtual Machine. A class file contains Java Virtual Machine instructions (Java byte code) and a symbol table, as well as other ancillary information. The class file format is the hardware- and operating system-independent binary format used to represent compiled classes and interfaces.[5]

There are several JVM languages, both old languages ported to JVM and completely new languages. JRuby and Jython are perhaps the most well-known ports of existing languages, i.e. Ruby and Python respectively. Of the new languages that have been created from scratch to compile to Java bytecode, Clojure, Apache Groovy, Scala and Kotlin may be the most popular ones. A notable feature with the JVM languages is that they are compatible with each other, so that, for example, Scala libraries can be used with Java programs and vice versa.[6]

Java 7 JVM implements _JSR 292: Supporting Dynamically Typed Languages_[7] on the Java Platform, a new feature which supports dynamically typed languages in the JVM. This feature is developed within the Da Vinci Machine project whose mission is to extend the JVM so that it supports languages other than Java.[8][9]

Bytecode verifier

A basic philosophy of Java is that it is inherently safe from the standpoint that no user program can crash the host machine or otherwise interfere inappropriately with other operations on the host machine, and that it is possible to protect certain methods and data structures belonging to trusted code from access or corruption by untrusted code executing within the same JVM. Furthermore, common programmer errors that often led to data corruption or unpredictable behavior such as accessing off the end of an array or using an uninitialized pointer are not allowed to occur. Several features of Java combine to provide this safety, including the class model, the garbage-collected heap, and the verifier.

The JVM verifies all bytecode before it is executed. This verification consists primarily of three types of checks:

-   Branches are always to valid locations
-   Data is always initialized and references are always type-safe
-   Access to private or package private data and methods is rigidly controlled

The first two of these checks take place primarily during the verification step that occurs when a class is loaded and made eligible for use. The third is primarily performed dynamically, when data items or methods of a class are first accessed by another class.

The verifier permits only some bytecode sequences in valid programs, e.g. a jump (branch) instruction can only target an instruction within the same method. Furthermore, the verifier ensures that any given instruction operates on a fixed stack location,[10] allowing the JIT compiler to transform stack accesses into fixed register accesses. Because of this, that the JVM is a stack architecture does not imply a speed penalty for emulation on register-based architectures when using a JIT compiler. In the face of the code-verified JVM architecture, it makes no difference to a JIT compiler whether it gets named imaginary registers or imaginary stack positions that must be allocated to the target architecture's registers. In fact, code verification makes the JVM different from a classic stack architecture, of which efficient emulation with a JIT compiler is more complicated and typically carried out by a slower interpreter.

The original specification for the bytecode verifier used natural language that was incomplete or incorrect in some respects. A number of attempts have been made to specify the JVM as a formal system. By doing this, the security of current JVM implementations can more thoroughly be analyzed, and potential security exploits prevented. It will also be possible to optimize the JVM by skipping unnecessary safety checks, if the application being run is proven to be safe.[11]

Secure execution of remote code

A virtual machine architecture allows very fine-grained control over the actions that code within the machine is permitted to take. It assumes the code is "semantically" correct, that is, it successfully passed the (formal) bytecode verifier process, materialized by a tool, possibly off-board the virtual machine. This is designed to allow safe execution of untrusted code from remote sources, a model used by Java applets, and other secure code downloads. Once bytecode-verified, the downloaded code runs in a restricted "sandbox", which is designed to protect the user from misbehaving or malicious code. As an addition to the bytecode verification process, publishers can purchase a certificate with which to digitally sign applets as safe, giving them permission to ask the user to break out of the sandbox and access the local file system, clipboard, execute external pieces of software, or network.

Formal proof of bytecode verifiers have been done by the Javacard industry (Formal Development of an Embedded Verifier for Java Card Byte Code[12])

Bytecode interpreter and just-in-time compiler

For each hardware architecture a different Java bytecode interpreter is needed. When a computer has a Java bytecode interpreter, it can run any Java bytecode program, and the same program can be run on any computer that has such an interpreter.

When Java bytecode is executed by an interpreter, the execution will always be slower than the execution of the same program compiled into native machine language. This problem is mitigated by just-in-time (JIT) compilers for executing Java bytecode. A JIT compiler may translate Java bytecode into native machine language while executing the program. The translated parts of the program can then be executed much more quickly than they could be interpreted. This technique gets applied to those parts of a program frequently executed. This way a JIT compiler can significantly speed up the overall execution time.

There is no necessary connection between the Java programming language and Java bytecode. A program written in Java can be compiled directly into the machine language of a real computer and programs written in other languages than Java can be compiled into Java bytecode.

Java bytecode is intended to be platform-independent and secure.[13] Some JVM implementations do not include an interpreter, but consist only of a just-in-time compiler.[14]


JVM in the web browser

At the start of the Java platform's lifetime, the JVM was marketed as a web technology for creating Rich Internet Applications. , most web browsers and operating systems bundling web browsers do not ship with a Java plug-in, nor do they permit side-loading any non-Flash plug-in. The Java browser plugin was deprecated in JDK 9.[15]

The NPAPI Java browser plug-in was designed to allow the JVM to execute so-called Java applets embedded into HTML pages. For browsers with the plug-in installed, the applet is allowed to draw into a rectangular region on the page assigned to it. Because the plug-in includes a JVM, Java applets are not restricted to the Java programming language; any language targeting the JVM may run in the plug-in. A restricted set of APIs allow applets access to the user's microphone or 3D acceleration, although applets are not able to modify the page outside its rectangular region. Adobe Flash Player, the main competing technology, works in the same way in this respect.

according to W3Techs, Java applet and Silverlight use had fallen to 0.1% each for all web sites, while Flash had fallen to 10.8%.[16]

JavaScript JVMs and interpreters

As of May 2016, JavaPoly allows users to import unmodified Java libraries, and invoke them directly from JavaScript. JavaPoly allows websites to use unmodified Java libraries, even if the user does not have Java installed on their computer.[17]

Compilation to JavaScript

With the continuing improvements in JavaScript execution speed, combined with the increased use of mobile devices whose web browsers do not implement support for plugins, there are efforts to target those users through compilation to JavaScript. It is possible to either compile the source code or JVM bytecode to JavaScript.

Compiling the JVM bytecode, which is universal across JVM languages, allows building upon the language's existing compiler to bytecode. The main JVM bytecode to JavaScript compilers are TeaVM,[18] the compiler contained in Dragome Web SDK,[19] Bck2Brwsr,[20] and j2js-compiler.[21]

Leading compilers from JVM languages to JavaScript include the Java-to-JavaScript compiler contained in Google Web Toolkit, Clojurescript (Clojure), GrooScript (Apache Groovy), Scala.js (Scala) and others.[22]


Java Runtime Environment

The Java Runtime Environment (JRE) released by Oracle is a freely available software distribution containing a stand-alone JVM (HotSpot), the Java standard library (Java Class Library), a configuration tool, and—until its discontinuation in JDK 9—a browser plug-in. It is the most common Java environment installed on personal computers in the laptop and desktop form factor. Mobile phones including feature phones and early smartphones that ship with a JVM are most likely to include a JVM meant to run applications targeting Micro Edition of the Java platform. Meanwhile, most modern smartphones, tablet computers, and other handheld PCs that run Java apps are most likely to do so through support of the Android operating system, which includes an open source virtual machine incompatible with the JVM specification. (Instead, Google's Android development tools take Java programs as input and output Dalvik bytecode, which is the native input format for the virtual machine on Android devices.)

Performance

The JVM specification gives a lot of leeway to implementors regarding the implementation details. Since Java 1.3, JRE from Oracle contains a JVM called HotSpot. It has been designed to be a high-performance JVM.

To speed-up code execution, HotSpot relies on just-in-time compilation. To speed-up object allocation and garbage collection, HotSpot uses generational heap.

Generational heap

The _Java virtual machine heap_ is the area of memory used by the JVM for dynamic memory allocation.[23]

In HotSpot the heap is divided into _generations_:

-   The _young generation_ stores short-lived objects that are created and immediately garbage collected.
-   Objects that persist longer are moved to the _old generation_ (also called the _tenured generation_). This memory is subdivided into (two) Survivors spaces where the objects that survived the first and next garbage collections are stored.

The _permanent generation_ (or _permgen_) was used for class definitions and associated metadata prior to Java 8. Permanent generation was not part of the heap.[24][25] The _permanent generation_ was removed from Java 8.[26]

Originally there was no permanent generation, and objects and classes were stored together in the same area. But as class unloading occurs much more rarely than objects are collected, moving class structures to a specific area allowed significant performance improvements.[27]

Security

Oracle's JRE is installed on a large number of computers. End users with an out-of-date version of JRE therefore are vulnerable to many known attacks. This led to the widely shared belief that Java is inherently insecure.[28] Since Java 1.7, Oracle's JRE for Windows includes automatic update functionality.

Before the discontinuation of the Java browser plug-in, any web page might have potentially run a Java applet, which provided an easily accessible attack surface to malicious web sites. In 2013 Kaspersky Labs reported that the Java plug-in was the method of choice for computer criminals. Java exploits are included in many exploit packs that hackers deploy onto hacked web sites.[29] Java applet is removed from Java 11 launched on September 25th 2018.


See also

-   List of Java virtual machines
-   Comparison of Java virtual machines
-   Comparison of application virtual machines
-   Automated exception handling
-   Java performance
-   List of JVM languages
-   Java processor
-   Common Language Runtime


References

-   _Clarifications and Amendments to the Java Virtual Machine Specification, Second Edition_ includes list of changes to be made to support J2SE 5.0 and JSR 45
-   JSR 45, specifies changes to the class file format to support source-level debugging of languages such as JavaServer Pages (JSP) and SQLJ that are translated to Java


External links

-   The Java Virtual Machine Specification
-   How to download and install prebuilt OpenJDK packages
-   How to Install Java? (JRE from Oracle)

Virtual machine Category:Java platform software Virtual machine Java_virtual_machine Category:Stack-based virtual machines

[1] Bill Venners, _Inside the Java Virtual Machine_ Chapter 5

[2]

[3]

[4] _The Java Virtual Machine Specification_ (the first and second editions are also available online).

[5]

[6]

[7]

[8]

[9]

[10]

[11]

[12] http://www-sop.inria.fr/everest/Lilian.Burdy/CBR02dsn.pdf

[13] David J. Eck, _Introduction to Programming Using Java_, Seventh Edition, Version 7.0, August 2014 at Section 1.3 "The Java Virtual Machine"

[14] _Oracle JRockit Introduction_ Release R28 at 2. "Understanding Just-In-Time Compilation and Optimization"

[15]

[16]

[17]

[18]

[19]

[20]

[21] Wolfgang Kuehn (decatur). j2js-compiler GitHub

[22]

[23]

[24]

[25]

[26]

[27]

[28]

[29]