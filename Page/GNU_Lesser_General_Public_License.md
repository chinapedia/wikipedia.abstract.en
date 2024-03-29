The GNU LESSER GENERAL PUBLIC LICENSE (LGPL) is a free-software license published by the Free Software Foundation (FSF). The license allows developers and companies to use and integrate a software component released under the LGPL into their own (even proprietary) software without being required by the terms of a strong copyleft license to release the source code of their own components. However, any developer who modifies an LGPL-covered component is required to make their modified version available under the same LGPL license. For proprietary software, code under the LGPL is usually used in the form of a shared library, so that there is a clear separation between the proprietary and LGPL components. The LGPL is primarily used for software libraries, although it is also used by some stand-alone applications.

The LGPL was developed as a compromise between the strong copyleft of the GNU General Public License (GPL) and more permissive licenses such as the BSD licenses and the MIT License. The word "Lesser" in the title shows that the LGPL does not guarantee the end user's complete freedom in the use of software; it only guarantees the freedom of modification for components licensed under the LGPL, but not for any proprietary components.


History

The license was originally called the GNU LIBRARY GENERAL PUBLIC LICENSE and was first published in 1991, and adopted the version number 2 for parity with GPL version 2. The LGPL was revised in minor ways in the 2.1 point release, published in 1999, when it was renamed the GNU Lesser General Public License to reflect the FSF's position that not all libraries should use it. Version 3 of the LGPL was published in 2007 as a list of additional permissions applied to GPL version 3.

In addition to the term "work based on the Program" of GPL, LGPL version 2 introduced two additional clarification terms "work based on the library" and a "work that uses the library".[1] LGPL version 3 partially dropped these terms.


Differences from the GPL

The main difference between the GPL and the LGPL is that the latter allows the work to be linked with (in the case of a library, "used by") a non-(L)GPLed program, regardless of whether it is free software or proprietary software.[2] The non-(L)GPLed program can then be distributed under any terms if it is not a derivative work. If it is a derivative work, then the program's terms must allow for "modification for the customer's own use and reverse engineering for debugging such modifications." Whether a work that uses an LGPL program is a derivative work or not is a legal issue. A standalone executable that dynamically links to a library through a .so, .dll, or similar medium is generally accepted as not being a derivative work as defined by the LGPL. It would fall under the definition of a "work that uses the Library". Paragraph 5 of the LGPL version 2.1 states:

    A program that contains no derivative of any portion of the Library, but is designed to work with the Library by being compiled or linked with it, is called a "work that uses the Library". Such a work, in isolation, is not a derivative work of the Library, and therefore falls outside the scope of this License.

Essentially, if it is a "work that uses the library", then it must be possible for the software to be linked with a newer version of the LGPL-covered program. The most commonly used method for doing so is to use "a suitable shared library mechanism for linking". Alternatively, a statically linked library is allowed if either source code or linkable object files are provided.[3]


Compatibility

One feature of the LGPL is the permission to relicense under the GPL any piece of software which is received under the LGPL (see section 3 of the LGPL version 2.1, and section 2 option b of the LGPL version 3). This feature allows for direct reuse of LGPLed code in GPLed libraries and applications.

Version 3 of the LGPL is not inherently compatible with version 2 of the GPL. However, works using the latter that have given permission to use a later version of the GPL are compatible:[4] a work released under the GPLv2 "or any later version" may be combined with code from a LGPL version 3 library, with the combined work as a whole falling under the terms of the GPLv3.[5]


LGPL for libraries

The former name "GNU Library General Public License" gave some the impression that the FSF recommended software libraries use the LGPL and that programs use the GPL. In February 1999, GNU Project leader Richard Stallman wrote the essay _Why you shouldn't use the Lesser GPL for your next library_ explaining that the LGPL had not been deprecated, but that one should not _necessarily_ use the LGPL for all libraries:

    Which license is best for a given library is a matter of strategy ... Using the ordinary GPL for a library gives free software developers an advantage over proprietary developers: a library that they can use, while proprietary developers cannot use it ... When a free library's features are readily available for proprietary software through other alternative libraries ... the library cannot give free software any particular advantage, so it is better to use the Lesser GPL for that library.[6]

Stallman and the FSF sometimes advocate licenses even less restrictive than the LGPL as a matter of strategy. A prominent example was Stallman's endorsement of the use of a BSD-style license by the Vorbis project for use in its libraries.[7]


Programming language specifications

The license uses terminology which is mainly intended for applications written in the C programming language or its family. Franz Inc. published its own preamble to the license to clarify terminology in the Lisp context. LGPL with this preamble is sometimes referred as LLGPL.[8]

In addition, Ada has a special feature, generics, which may prompt the use of GNAT Modified General Public License: it allows code to link against or instantiate GMGPL-covered units without the code itself becoming covered by the GPL.

C++ templates and header-only libraries have the same problem as Ada generics. Version 3 of the LGPL addresses such cases in section 3.[9]

Class inheritance

Some concern has risen about the suitability of object-oriented classes in LGPL'd being inherited by non-(L)GPL code. Clarification is given on the official GNU website:

    The LGPL does not contain special provisions for inheritance, because none are needed. Inheritance creates derivative works in the same way as traditional linking, and the LGPL permits this type of derivative work in the same way as it permits ordinary function calls.[10]


See also

-   Affero General Public License
-   GNU Free Documentation License
-   GNAT Modified General Public License
-   GPL linking exception
-   Software using the LGPL (category)


References


External links

-   LGPL Official Page
-   Derivative Works
-   Lisping Copyleft: A Close Reading of the Lisp LGPL, 5 International Free and Open Source Software Law Review 15 (2013)

Category:Computer law Category:Copyleft Category:Free and open-source software licenses Category:GNU Project

[1]

[2] Stallman, Richard. Why you shouldn't use the Lesser GPL for your next library. Free Software Foundation official website.

[3] Gnu Lesser General Public License, Section 4, pt. d) 0)

[4] GNU Lesser General Public License (LGPL) version 3. Free Software Foundation official website.

[5] Frequently Asked Questions about the GNU Licenses - GNU Project - Free Software Foundation. Free Software Foundation official website.

[6]

[7] Stallman, Richard. Re: [open-source] [Fwd: [icecast-dev] Xiph.org announces Vorbis Beta 4 and the Xiph.org

[8] Preamble to the Gnu Lesser General Public License

[9] LGPLv3 for a C++ Pure Template Library ?

[10] Turner, David. The LGPL and Java. GNU official website.