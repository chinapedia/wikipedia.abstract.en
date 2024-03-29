EDIF (ELECTRONIC DESIGN INTERCHANGE FORMAT) is a vendor-neutral format based on S-Expressions in which to store Electronic netlists and schematics. It was one of the first attempts to establish a neutral data exchange format for the electronic design automation (EDA) industry. The goal was to establish a common format from which the proprietary formats of the EDA systems could be derived. When customers needed to transfer data from one system to another, it was necessary to write translators from one format to other. As the number of formats (_N_) multiplied, the translator issue became an _N_-squared problem. The expectation was that with EDIF the number of translators could be reduced to the number of involved systems.

Representatives of the EDA companies Daisy Systems, Mentor Graphics, Motorola, National Semiconductor, Tektronix, Texas Instruments and the University of California, Berkeley established the _EDIF Steering Committee_ in November 1983. Later Hilary Kahn, a computer science professor at the University of Manchester, joined the team and led the development from version EDIF 2 0 0 till the final version 4 0 0.


Syntax

The general format of EDIF involves using parentheses to delimit data definitions, and in this way it superficially resembles Lisp. The basic tokens of EDIF 2.0.0 were keywords (like _library_, _cell_, _instance_, etc.), strings (delimited with double quotes), integer numbers, symbolic constants (e.g. _GENERIC_, _TIE_, _RIPPER_ for cell types) and "Identifiers", which are reference labels formed from a very restricted set of characters. EDIF 3.0.0 and 4.0.0 dropped the symbolic constants entirely, using keywords instead. So, the syntax of EDIF has a fairly simple foundation. A typical EDIF file looks like this:

    (edif fibex  (edifVersion 2 0 0)
      (edifLevel 0) (keywordMap (keywordLevel 0))
      (status (written (timeStamp 1995 1 1 1 1 1) (program "xxx" (version "v1"))))
      (library xxx (edifLevel 0)
        (technology (numberDefinition (scale 1 (e 1 -6) (unit distance))))
        (cell dff_4 (cellType generic)
          (view view1 (viewType netlist)
            (interface
              (port aset (direction INPUT))
              (port clok (direction INPUT))
        ...
        (cell yyy (cellType generic)
          (view schematic_ (viewType netlist)
            (interface
              (port CLEAR (direction INPUT))
              (port CLOCK (direction INPUT)) ... )
            (contents
               (instance I_36_1 (viewRef view1 (cellRef dff_4)))
               (instance (rename I_36_3 "I$3") (viewRef view1 (cellRef addsub_4)))
               ...
               (net CLEAR
                 (joined
                   (portRef CLEAR)
                     (portRef aset (instanceRef I_36_1))
                     (portRef aset (instanceRef I_36_3))))
        ...


Versions

The 1 0 0 release of EDIF was made in 1985.

EDIF 2 0 0

The first "real" public release of EDIF was version 2 0 0, which was approved in March 1988 as the standard ANSI/EIA-548-1988. It is published in a single volume. This version has no formal scope statement but what it tries to capture is covered by the defined VIEWTYPEs:

-   _BEHAVIOR to describe the behavior of a cell_
-   _DOCUMENT to describe the documentation of a cell_
-   ''GRAPHIC to describe a _dumb_ graphics and text representation of displayable or printable information''
-   _LOGICMODEL to describe the logic-simulation model of the cell_
-   _MASKLAYOUT to describe an integrated circuit layout_
-   _NETLIST to describe a netlist_
-   _PCBLAYOUT to describe a printed circuit board_
-   _SCHEMATIC to describe the schematic representation and connectivity of a cell_
-   _STRANGER to describe an as yet unknown representation of a cell_
-   _SYMBOLIC to describe a symbolic layout_

The industry tested this release for several years, but finally only the NETLIST view was the one widely used and some EDA tools are still supporting it today for EDIF 2 0 0.

To overcome problems with the main 2 0 0 standard several further documents got released:

-   Electronic Industries Association
    -   _EDIF Monograph Series, Volume 1, Introduction to EDIF_, EIA/EDIF-1, Sept. 1988
    -   _EDIF Monograph Series, Volume 2, EDIF Connectivity_, EIA/EDIF-2, June 1989
    -   _Using EDIF 2 0 0 for schematic transfer_, EIA/EDIF/AG-1, July 1989
-   Documentation from Hilary J. Kahn, Department of Computer Science, University of Manchester
    -   ''EDIF 2 0 0, An Introductory Tutorial", September 1989
    -   _EDIF Questions and answers, volume one_, November 1988
    -   _EDIF Questions and answers, volume two_, February 1989
    -   _EDIF Questions and answers, volume three_, July 1989
    -   _EDIF Questions and answers, volume four_, November 1989
    -   _EDIF Questions and answers, volume five_, June 1991

EDIF 3 0 0

Because of some fundamental weaknesses in the 2 0 0 release a new not compatible release 3 0 0 was released in September 1993, given the designation of EIA standard EIA-618. It later achieved ANSI and ISO designations. It is published in 4 volumes. The main focus of this version were the viewTypes NETLIST and SCHEMATIC from 2 0 0. MASKLAYOUT, PCBLAYOUT and some other views were dropped from this release and shifted for later releases because the work for these views was not fully completed.

EDIF 3 0 0 is available from the International Electrotechnical Commission as IEC 61690-1

EDIF 4 0 0

EDIF 4 0 0 was released in late August 1996, mainly to add "Printed Circuit Board" extensions (the original PCBLAYOUT view) to EDIF 3 0 0. This more than doubled the size of EDIF 3 0 0, and is published in HTML format on CD.

EDIF 4 0 0 is available from the International Electrotechnical Commission as IEC 61690-2


Evolution

Problems with 2 0 0

To understand the problems users and vendors encountered with EDIF 2 0 0, one first has to picture all the elements and dynamics of the electronics industry. The people who needed this standard were mainly design engineers, who worked for companies whose size ranged from a house garage to multi-billion dollar facilities with thousands of engineers. These engineers worked mainly from schematics and netlists in the late 1980s, and the big push was to generate the netlists from the schematics automatically. The first suppliers were Electronic Design Automation vendors (e.g., Daisy, Mentor, and Valid formed the earliest predominating set). These companies competed vigorously for their shares of this market.

One of the tactics used by these companies to "capture" their customers was their proprietary databases. Each had special features that the others did not. Once a decision was made to use a particular vendor's software to enter a design, the customer was ever after constrained to use no other software. To move from vendor A's to vendor B's systems usually meant a very expensive re-entry of almost all design data by hand into the new system. This expense of "migration" was the main factor that locked design engineers into using a single vendor.

But the "customers" had a different desire. They saw immediately that while vendor A might have a really nice analog simulation environment, vendor B had a much better PCB or silicon layout auto-router. And they wished that they could pick and choose amongst the different vendors.

EDIF was mainly supported by the electronics design end-users, and their companies. The EDA vendors were involved also, but their motivation was more along the lines of wanting to not alienate their customers. Most of the EDA vendors produced EDIF 2 0 0 translators, but they were definitely more interested in generating high-quality EDIF readers, and they had absolutely no motivation at all to write any software that generated EDIF (an EDIF Writer), beyond threats from customers of mass migration to another vendor's software.

The result was rather interesting. Hardly any software vendor wrote EDIF 2 0 0 output that did not have severe violations of syntax or semantics. The semantics were just loose enough that there might be several ways to describe the same data. This began to be known as "flavors" of EDIF. The vendor companies did not always feel it important to allocate many resources to EDIF products, even if they sold a large number of them. There were several stories of active products with virtually no-one to maintain them for years. User complaints were merely gathered and prioritized. The harder it became to export customer data to EDIF, the more the vendors seemed to like it. Those who did write EDIF translators found they spent a huge amount of time and effort on generating sufficiently powerful, forgiving, artificially intelligent readers, that could handle and piece together the poor-quality code produced by the extant EDIF 2 0 0 writers of the day.

In designing EDIF 3 0 0, the committees were well aware of the faults of the language, the calumny heaped on EDIF 2 0 0 by the vendors and the frustration of the end users. So, to tighten the semantics of the language, and provide a more formal description of the standard, the revolutionary approach was taken to provide an information model for EDIF, in the information modeling language EXPRESS. This helped to better document the standard, but was done more as an afterthought, as the syntax crafting was done independently of the model, instead of being generated from the model. Also, even though the standard says that if the syntax and model disagree, the model is the standard, this is not the case in practice. The BNF description of the syntax is the foundation of the language inasmuch as the software that does the day-to-day work of producing design descriptions is based on a fixed syntax. The information model also suffered from the fact that it was not (and is not) ideally suited to describing EDIF. It does not describe such concepts as name spaces very well at all, and the differences between a definition and a reference is not clearly describable either. Also, the constructs in EXPRESS for describing constraints might be formal, but constraint description is a fairly complicated matter at times. So, most constraints ended up just being described as comments. Most of the others became elaborate formal descriptions which most readers will never be able to decipher, and therefore may not stand up to automated debugging/compiling, just as a program might look good in review, but a compiler might find some interesting errors, and actually running the program written might find even more interesting errors. (Additionally, analogous EXPRESS compilers/executors didn't exist when the standard was written, and may not still exist today!)

Solutions to EDIF 2 0 0 problems

The solution to the "flavor" problem of EDIF 2 0 0 was to develop a more specific semantic description in EDIF 3 0 0 (1993). Indeed, reported results of people generating EDIF 3 0 0 translators was that the writers were now _much_ more difficult to get right, due to the great number of semantic restrictions, and the readers are comparatively trivial to develop.

The solution to vendor "conflict of interest" was neutral third-party companies, who could provide EDIF products based on vendor interfaces. This separation of the EDIF products from direct vendor control was critical to providing the end-user community with tools that worked well. It formed naturally and without comment. Engineering DataXpress was perhaps the first such company in this realm, with Electronic Tools Company seeming to have captured the market in the mid to late 1990s. Another dynamic in this industry is EDIF itself. Since they have grown to a rather large size, generating readers and writers has become a very expensive proposition. Usually the third-party companies have congregated the necessary specialists and can use this expertise to more efficiently generate the software. They are also able to leverage code sharing and other techniques an individual vendor could not. By 2000, almost no major vendor produced its own EDIF tools, choosing instead to OEM third-party tools.

Since the release of EDIF 4 0 0, the entire EDIF standards organisation has essentially dissolved. There have been no published meetings of any of the technical subcommittees, the EDIF Experts group, etc. Most of the individuals involved have moved on to other companies or efforts. The newsletter was abandoned, and the Users' Group no longer holds yearly meetings. EDIF 3 0 0 and 4 0 0 are now ANSI, IEC and European (EN) standards. EDIF Version 3 0 0 is IEC/EN 61690-1, and EDIF Version 4 0 0 is IEC/EN 61690-2.

EDIF Descendants

-   LKSoft took concepts from EDIF 2 0 0 to create a proprietary data format with the default extension ".cam" for their CIRCUITCAM system offered by LPKF Laser & Electronics AG. To efficiently work on EDIF like formats LKSoft has developed the _EDIF Procedural Interface_, an API for the C programming language.
-   Zuken, formerly Racal-Redac Ltd., took concepts from the early EDIF 4 0 0 development to create a new proprietary format called CADIF for their VISULA PCB-CAD system. This format is also widely used by 3rd party vendors.
-   STEP-AP210, a part of ISO 10303, practically inherited all of the EDIF 4 0 0 functionality except for schematics.


See also

-   gedif


External links

-   BYU EDIF Tools A Java framework for parsing/manipulating EDIF files, developed and maintained by BYU's Configurable Computing Lab
-   Torc Open-source C++ API for reconfigurable computing, including parsing and manipulation of EDIF 2 0 0, from ISI's Reconfigurable Computing Group
-   EDIF Overview from Elgris Technologies, Inc.
-   www.edif.org at the Internet Archive Archive of www.edif.org (now defunct) containing an introduction to the EDIF format
-   Computer Aids for VLSI Design - Appendix D: Electronic Design Interchange Format by Steven M. Rubin
-   Professor Hilary Kahn (1943-2007)

Category:EDA file formats